<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuNhapResource\Pages;
use App\Filament\Resources\PhieuNhapResource\RelationManagers;
use App\Models\chitietphieunhap;
use App\Models\phieunhap;
use App\Models\Tonkho;
use App\Models\vattu;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Auth;

class PhieuNhapResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = phieunhap::class;

    protected static ?string $modelLabel = 'Phiếu nhập';

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';

    protected static ?string $navigationLabel = 'Phiếu nhập';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    public static function getBreadcrumb(): string
    {
        return 'Phiếu nhập';
    }

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieunhap',
        ];
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Wizard::make([
                    Wizard\Step::make('Thông tin phiếu nhập')
                        ->schema([
                            Forms\Components\Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu nhập')
                                ->aside()
                                ->schema([
                                    Forms\Components\Radio::make('LyDo')
//                                        ->required()
                                        ->inline()
                                        ->default('0')
                                        ->live()
                                        ->label('Lý do nhập hàng?')
                                        ->options([
                                            '0' => 'Nhập sản xuất',
                                            '1' => 'Nhập nguyên vật liệu',
                                        ]),

                                    TextInput::make('id')
                                        ->placeholder('eg: PN001/xx/xx')
                                        ->unique(ignoreRecord: true)
//                                        ->required()
                                        ->label('Mã phiếu nhập'),

                                    Select::make('user_id')
                                        ->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
//                                        ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('nhacungcap_id')
                                        ->label('Nhà cung cấp')
                                        ->relationship('nhacungcap', 'TenNCC')
                                        ->preload()
                                        ->hidden(fn (Get $get): bool => $get('LyDo') === '0')
                                        ->searchable(),

                                    Select::make('kho_id')
                                        ->label('Kho')
                                        ->relationship('kho', 'TenKho')
//                                        ->required()
                                        ->preload()
                                        ->searchable(),
                                ]),

                            Forms\Components\Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu nhập')
                                ->schema([
                                    Forms\Components\DatePicker::make('NgayNhap')
//                                        ->required()
                                        ->label('Ngày nhập'),

                                    Forms\Components\Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),

                            Forms\Components\Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu nhập')
                                ->aside()
                                ->visibleOn('edit')
                                ->schema([
                                    Forms\Components\Radio::make('TrangThai')
                                        ->label('Trạng thái')
                                        ->inline()
                                        ->visibleOn('edit')
                                        ->options([
                                            '0' => 'Đang xử lí',
                                            '1' => 'Đã xử lí',
                                            '2' => 'Đã huỷ',
                                        ]),
                                ]),
                        ]),
                    Wizard\Step::make('Thông tin chi tiết phiếu nhập')
                        ->schema([
                            Repeater::make('dsvattu')
                                ->label('Danh sách vật tư')
                                ->addActionLabel('Thêm vật tư')
                                ->schema([
                                    Select::make('vattu')
                                        ->searchable()
                                        ->label('Vật tư')
                                        ->options(vattu::all()->pluck('TenVT', 'id'))
                                        ->live()
                                        ->required(),
                                    TextInput::make('soluong')->label('Số lượng')
                                        ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu'))?->donvitinh->TenDVT ?? '')
                                        ->numeric()
                                        ->required(),
                                    TextInput::make('ghichu')
                                        ->label('Ghi chú')
                                        ->columnSpan(2),
                                ])
                                ->columns(2),
                        ])->visibleOn('create'),
                ])->columnSpanFull()->skippable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),

                TextColumn::make('nhacungcap.TenNCC')
                    ->placeholder('N/A')
                    ->label('Nhà cung cấp'),

                TextColumn::make('NgayNhap')
                    ->label('Ngày nhập')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),

                TextColumn::make('kho.TenKho')
                    ->label('Kho'),

                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->formatStateUsing(fn ($record) => $record->LyDo === 1 ? 'Nhập nguyên vật liệu' : 'Nhập sản xuất')
                    ->badge()
                    ->color(fn ($record): string => $record->LyDo === 1 ? 'success' : 'info')
                    ->searchable(),

                TextColumn::make('TrangThai')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => ''
                    })
                    ->badge()
                    ->color(fn ($record): string => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'success',
                        2 => 'danger',
                        default => ''
                    })
                    ->label('Trạng thái'),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('LyDo')
                    ->label('Lý do nhập')
                    ->options([
                        '0' => 'Nhập sản xuất',
                        '1' => 'Nhập nguyên vật liệu',
                    ]),
            ])
            ->actions([
                ActionGroup::make([
                    EditAction::make()
                        ->color('primary'),
                    ViewAction::make(),
                    Action::make('duyetphieunhap')
                        ->authorize(fn (): bool => Auth::user()->can('duyetphieunhap_phieu::nhap'))
                        ->action(function ($record) {
                            $chiTietPhieuNhapRecords = chitietphieunhap::where('phieunhap_id', $record->id)
                                ->get();

                            if (count($chiTietPhieuNhapRecords) > 0) {
                                $allHaveVitriId = collect($chiTietPhieuNhapRecords)->every(fn ($value) => ! is_null($value->vitri_id));

                                if ($allHaveVitriId) {
                                    foreach ($chiTietPhieuNhapRecords as $value) {
                                        $existingRecord = Tonkho::where('vattu_id', $value->vattu_id)
                                            ->where('vitri_id', $value->vitri_id)
                                            ->first();

                                        if ($existingRecord) {
                                            $existingRecord->update([
                                                'SoLuong' => $existingRecord->SoLuong + $value->SoLuong,
                                                'NgayCapNhat' => now(),
                                                'updated_at' => now(),
                                            ]);
                                        } else {
                                            Tonkho::create([
                                                'vattu_id' => $value->vattu_id,
                                                'SoLuong' => $value->SoLuong,
                                                'kho_id' => $record->kho_id,
                                                'vitri_id' => $value->vitri_id,
                                                'NgayCapNhat' => now(),
                                                'created_at' => now(),
                                                'updated_at' => now(),
                                            ]);
                                        }
                                    }

                                    Notification::make()
                                        ->title('Update tồn kho!')
                                        ->success()
                                        ->send();

                                    $record->update(['TrangThai' => 1]);
                                } else {
                                    Notification::make()
                                        ->title('Chưa cập nhật vị trí cho dữ liệu')
                                        ->danger()
                                        ->send();
                                }
                            } else {
                                Notification::make()
                                    ->title('Chưa có dữ liệu nhập kho')
                                    ->danger()
                                    ->send();
                            }
                            //
                        })
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->label('Duyệt')
                        ->icon('heroicon-s-check')
                        ->color('info'),

                    Action::make('huyphieunhap')
                        ->authorize(fn (): bool => Auth::user()->can('duyetphieunhap_phieu::nhap'))
                        ->action(function ($record) {
                            $record->update(['TrangThai' => 2]);
                            Notification::make()
                                ->title('Đã huỷ phiếu nhập')
                                ->danger()
                                ->send();
                        })
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->label('Huỷ')
                        ->icon('heroicon-s-trash')
                        ->color('danger'),
                ]),
                // xoá thì phải để oncasade cho chi tiet phieu nhap nua
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\ChitietphieunhapRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPhieuNhaps::route('/'),
            'create' => Pages\CreatePhieuNhap::route('/create'),
            'edit' => Pages\EditPhieuNhap::route('/{record}/edit'),
        ];
    }
}
