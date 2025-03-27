<?php

namespace App\Filament\Resources\NhaCungCapResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PhieunhapRelationManager extends RelationManager
{
    protected static string $relationship = 'phieunhap';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nhacungcap_id')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('nhacungcap_id')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),

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
                    ->formatStateUsing(fn($record) => $record->LyDo == 1 ? 'Nhập nguyên vật liệu' : 'Nhập sản xuất')
                    ->badge()
                    ->color(fn($record): string => $record->LyDo == 1 ? 'success' : 'secondary')
                    ->searchable(),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
//                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
//                Tables\Actions\EditAction::make(),
//                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
//                Tables\Actions\BulkActionGroup::make([
//                    Tables\Actions\DeleteBulkAction::make(),
//                ]),
            ])
            ->emptyStateHeading('Không có phiếu nhập nào.')
            ->emptyStateDescription('Thông tin phiếu nhập của nhà cung cấp ở đây.');
    }
}
