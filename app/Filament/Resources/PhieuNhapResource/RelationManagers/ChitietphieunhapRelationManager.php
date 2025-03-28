<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;

class ChitietphieunhapRelationManager extends RelationManager
{
    protected static string $relationship = 'chitietphieunhap';

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
                        ->required(),
                    Forms\Components\TextInput::make('SoLuong')
                        ->label('Số lượng')
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
                //                Tables\Columns\TextColumn::make('phieunhap_id'),
                Tables\Columns\TextColumn::make('vattu.TenVT')->label('Tên vật tư'),
                Tables\Columns\TextColumn::make('SoLuong')->label('Số lượng'),
                Tables\Columns\TextColumn::make('vitri.Mota')->label('Vị trí'),
                Tables\Columns\TextColumn::make('GhiChu')->label('Ghi chú'),
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
                    //                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function shouldbeHidden():bool
    {
        return $this->getOwnerRecord()->TrangThai === 1;
    }
}
