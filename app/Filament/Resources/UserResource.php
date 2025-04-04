<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Models\User;
use Closure;
use Filament\Forms;
use Filament\Forms\Components\Checkbox;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Validation\ValidationException;
use Str;

use function Termwind\render;


class UserResource extends Resource
{
    protected static ?string $model = User::class;
    protected static ?string $modelLabel = 'Người dùng';
    protected static ?string $navigationLabel = 'Người dùng';
    public static function getBreadcrumb(): string
    {
        return 'Người dùng';
    }
    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?int $navigationSort = 2;

    protected static ?string $navigationGroup = 'Quản lý tài khoản';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                    Forms\Components\Section::make('Thông tin tài khoản')
                    ->description('Thông tin chi tiết tài khoản người dùng')
                    ->aside()
                        ->schema([
                            TextInput::make('name')
                                ->label('Tên'),

                            TextInput::make('email')
                                ->required()
                                ->unique(ignoreRecord: true)
                                ->email()
                                ->validationMessages([
                                    'unique' => 'Email người dùng này đã tồn tại.',
                                ]),
                            TextInput::make('password')
                                ->label('Mật khẩu')
                                ->password()
                                ->required()
                                ->regex('/^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/')
                                ->validationMessages([
                                    'regex' => 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, số và ký tự đặc biệt.'
                                ])
                                ->visibleOn('create'),

                            TextInput::make('Phone')
                                ->label('Số điện thoại'),

                            TextInput::make('Address')
                                ->label('Địa Chỉ'),
                            DatePicker::make('Birth')
                                ->label('Ngày sinh')
                                ->displayFormat('d/m/Y'),
                        ]),

                    Forms\Components\Section::make('Chức vụ')
                    ->aside()
                    ->description('Lựa chọn chức vụ cho người dùng')
                    ->schema([
                        Checkbox::make('Active')
                            ->visibleOn('edit'),
                        Select::make('roles')
                            ->label('Chức vụ')
                            ->relationship('roles', 'name')
                            ->dehydrated()
                            ->multiple()
                            ->preload()
                            ->searchable(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Mã')
                    ->sortable(),
                TextColumn::make('name')
                    ->label('Tên')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email')
                    ->searchable(),
                TextColumn::make('Phone')
                    ->label('Số điện thoại')
                    ->searchable(),
                TextColumn::make('Birth')
                    ->label('Ngày sinh')
                    ->searchable()->date('d/m/Y'),
                TextColumn::make('Address')
                    ->label('Địa chỉ')
                    ->searchable(),
                TextColumn::make('roles')
                ->label('Chức vụ')
                ->wrap()
                ->getStateUsing(fn($record) => collect($record->roles)
                ->pluck('name')
                ->map(fn($name) => Str::headline(str_replace('_', ' ', $name))))
                ->colors([
                    'warning',
                ])
                ->badge(),
                TextColumn::make('Active')
                    ->formatStateUsing(fn ($record) => $record->Active == 1 ? 'Yes' : 'No')
                    ->badge()
                    ->color(fn ($record): string =>  $record->Active == 1 ? 'success' : 'danger')
                    ->searchable(),
//                TextColumn::make('created_at')->searchable()->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('Active')
                ->label('Còn hoạt động')
                ->options([
                    '0' => 'Không',
                    '1' => 'Có'
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
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
