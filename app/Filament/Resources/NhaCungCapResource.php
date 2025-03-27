<?php

namespace App\Filament\Resources;

use App\Filament\Resources\NhaCungCapResource\Pages;
use App\Filament\Resources\NhaCungCapResource\RelationManagers;
use App\Models\NhaCungCap;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\CreateAction;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class NhaCungCapResource extends Resource
{
    protected static ?string $model = NhaCungCap::class;

    public static function getBreadcrumb(): string
    {
        return 'Nhà cung cấp';
    }
    protected static ?string $navigationIcon = 'heroicon-o-briefcase';
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationLabel = 'Nhà cung cấp';
    protected static ?string $navigationGroup = 'Quản lý danh mục';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Section::make('Thông tin bắt buộc')->schema([
                    TextInput::make('TenNCC')
                        ->required()
                        ->label('Tên'),
                    TextInput::make('Sdt')
                        ->required()
                        ->label('Số điện thoại'),
                    TextInput::make('DiaChi')
                        ->required()
                        ->label('Địa chỉ'),
                    TextInput::make('MaSoThue')
                        ->required()
                        ->label('Mã Số thuế'),
                ])->columnSpan(1),

                Section::make('Thông tin không bắt buộc')->schema([
                    TextInput::make('Email')
                        ->email()
                        ->label('Email'),
                    Textarea::make('GhiChu')
                        ->label('Ghi chú')
                        ->rows(3)
                        ->columnSpan(1),
                ])->columnSpan(1),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->label('Mã'),
                TextColumn::make('TenNCC')
                    ->searchable()->label('Tên'),

                TextColumn::make('Sdt')->searchable()->label('Số điện thoại')->wrap(),
                TextColumn::make('Email')->label('Email')->wrap(),
                TextColumn::make('DiaChi')->searchable()->label('Địa chỉ')->wrap(),
                TextColumn::make('MaSoThue')->searchable()->label('Mã Số thuế')->wrap(),
                TextColumn::make('GhiChu')->label('Ghi chú')->wrap(),
//                TextColumn::make('created_at')->sortable(),

            ])
            ->striped()
            ->filters([
                SelectFilter::make('DiaChi')
                    ->label('Địa chỉ')
                    ->options([
                        'Hải Phòng' => 'Hải Phòng',
                        'Hà Nội' => 'Hà Nội',
                    ])
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('secondary'),
                    EditAction::make()->color('primary'),
                    DeleteAction::make(),
                ]),
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
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNhaCungCaps::route('/'),
            'create' => Pages\CreateNhaCungCap::route('/create'),
            'edit' => Pages\EditNhaCungCap::route('/{record}/edit'),
        ];
    }
}
