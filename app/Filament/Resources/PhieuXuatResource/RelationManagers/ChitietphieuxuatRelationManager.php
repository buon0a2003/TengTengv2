<?php

namespace App\Filament\Resources\PhieuXuatResource\RelationManagers;

use App\Filament\Resources\VattuResource;
use App\Models\vattu;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ChitietphieuxuatRelationManager extends RelationManager
{
    protected static string $relationship = 'chitietphieuxuat';
    protected static ?string $modelLabel = 'Chi tiết phiếu xuất';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('phieuxuat_id')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('phieuxuat_id')
            ->heading('Chi tiết phiếu xuất')
            ->emptyStateHeading('Chưa có vật tư')
            ->emptyStateDescription('Thêm mới vật tư để hoàn thành phiếu xuất')
            ->columns([
                // TextColumn::make('vattu_id')->hidden(true),
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->url(fn ($record) => VattuResource::getUrl('edit', ['record' => $record->vattu_id])),
                TextColumn::make('SoLuong')->label('Số lượng xuất'),
                TextColumn::make('vattu_id')
                    ->label('Đơn vị tính')
                    ->formatStateUsing(fn($record): string => (string) vattu::find($record->vattu_id)->donvitinh->TenDVT ?? 'N/A'),
                TextColumn::make('GhiChu')->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()                    
                    ->hidden($this->shouldbeHidden())
                    ->label('Thêm')->icon('heroicon-o-plus'),
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
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function shouldbeHidden():bool
    {
        return $this->getOwnerRecord()->TrangThai === 1 || $this->getOwnerRecord()->TrangThai === 2;
    }
}
