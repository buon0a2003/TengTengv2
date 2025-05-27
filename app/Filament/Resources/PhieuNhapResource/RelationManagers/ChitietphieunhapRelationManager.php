<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\RelationManagers;

use App\Models\vattu;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Attributes\On;

class ChitietphieunhapRelationManager extends RelationManager
{
    protected static string $relationship = 'chitietphieunhap';

    protected static ?string $modelLabel = 'Chi tiết phiếu nhập';

    protected static ?string $title = 'Danh sách vật tư';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()->schema([
                    Forms\Components\Select::make('vattu_id')
                        ->label('Vật tư')
                        ->relationship('vattu', 'TenVT')
                        ->searchable()
                        ->preload()
                        ->live()
                        ->required(),
                    Forms\Components\TextInput::make('SoLuong')
                        ->label('Số lượng')
                        ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                        ->numeric()
                        ->required(),
                    Forms\Components\Select::make('vitri_id')
                        ->label('Vị trí')
                        ->relationship('vitri', 'Mota', function (Builder $query) {
                            return $query->where('kho_id', $this->getOwnerRecord()->kho_id);
                        })
                        ->visibleOn('edit')
                        ->searchable()
                        ->preload()
                        ->required(),
                ]),
                Forms\Components\Textarea::make('GhiChu')
                    ->columnSpanFull()
                    ->rows(3)
                    ->label('Ghi chú'),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->heading('Chi tiết phiếu nhập')
            ->emptyStateHeading('Chưa có vật tư')
            ->emptyStateDescription('Thêm mới vật tư để hoàn thành phiếu nhập')
            ->recordTitleAttribute('phieunhap_id')
            ->columns([
                // Tables\Columns\TextColumn::make('phieunhap_id'),
                TextColumn::make('vattu.TenVT')->label('Tên vật tư'),
                TextColumn::make('SoLuong')->label('Số lượng'),
                TextColumn::make('vattu.donvitinh.TenDVT')->label('Đơn vị tính'),
                TextColumn::make('vitri.Mota')->label('Vị trí'),
                TextColumn::make('GhiChu')->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\Action::make('vattulist')->label('Danh sách vật tư')
                    ->hidden($this->shouldbeHidden())
                    ->icon('heroicon-o-list-bullet')
                    ->color('warning')
                    ->modalHeading('Danh sách vật tư')
                    ->modalContent(fn () => view('filament.vattulist', ['LyDo' => $this->getOwnerRecord()->LyDo]))
                    ->modalWidth('7xl'),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->hidden($this->shouldbeHidden())
                    ->modalHeading('Chi tiết phiếu nhập'),
                Tables\Actions\DeleteAction::make()
                    ->hidden($this->shouldbeHidden()),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function shouldbeHidden(): bool
    {
        return $this->getOwnerRecord()->TrangThai == 1 || $this->getOwnerRecord()->TrangThai == 2;
        // return false;
    }

    #[On('vattuSelected')]
    public function handleVattuSelected($record): void
    {
        $chitietphieunhap = new \App\Models\chitietphieunhap();
        $chitietphieunhap->vattu_id = $record['id'];
        $chitietphieunhap->phieunhap_id = $this->getOwnerRecord()->id;
        $chitietphieunhap->SoLuong = $record['soluong'] ?? 0;
        $chitietphieunhap->GhiChu = $record['ghichu'] ?? null;
        $chitietphieunhap->save();
    }
}
