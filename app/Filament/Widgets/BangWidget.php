<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\PhieuNhapResource;
use App\Models\phieunhap;
use Filament\Actions\ViewAction;
use Filament\Forms\Form;
use Filament\Tables\Actions\Action;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use EightyNine\FilamentAdvancedWidget\AdvancedTableWidget as BaseWidget;

class BangWidget extends BaseWidget
{
    public function table(Table $table): Table
    {
        return $table
            ->heading('Phiếu nhập chờ xử lí')
            ->query(
                phieunhap::where('TrangThai', 0)
                    ->orderBy('created_at', 'desc')
                    ->take(5)
            )
            ->columns([
                TextColumn::make('id')->label('Mã phiếu nhập'),
                TextColumn::make('kho.TenKho')
                    ->label('Kho'),
                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => $record->LyDo === 1 ? 'Nhập nguyên vật liệu' : 'Nhập thành phẩm')
                    ->color(fn ($record): string => $record->LyDo === 1 ? 'success' : 'info')
                    ->badge(),
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
            ]);
    }
}
