<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Components\Actions;
use Filament\Forms\Components\Actions\Action;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password as PasswordRule;
use Spatie\Permission\Contracts\Role;
use Str;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $modelLabel = 'Người dùng';

    protected static ?string $navigationLabel = 'Người dùng';

    protected static ?string $navigationIcon = 'heroicon-o-users';

    protected static ?string $activeNavigationIcon = 'heroicon-s-users';

    protected static ?int $navigationSort = 4;

    protected static ?string $navigationGroup = 'Quản lý tài khoản';

    public static function getBreadcrumb(): string
    {
        return 'Người dùng';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Lựa chọn')
                    ->schema([
                        Radio::make('option')->label('Chọn cách tạo tài khoản')
                            ->options([
                                0 => 'Tạo tài khoản và nhân viên',
                                1 => 'Tạo tài khoản cho nhân viên đã tồn tại',
                            ])
                            ->live()
                            ->default(0)
                            ->inlineLabel(),
                        Select::make('nhanvien_id')
                            ->label('Nhân viên')
                            ->relationship('nhanvien', 'name', modifyQueryUsing: function (Builder $query) {
                                return $query->whereNotExists(function ($subquery) {
                                    $subquery->select('nhanvien_id')
                                        ->from('users')
                                        ->whereColumn('nhanvien.id', 'users.nhanvien_id');
                                });
                            })
                            ->searchable()
                            ->preload()
                            ->hidden(fn ($get) => $get('option') == 0)
                            ->inlineLabel(),
                    ])->visibleOn('create'),
                Section::make('Thông tin tài khoản')
                    ->description('Thông tin chi tiết tài khoản người dùng')
                    ->aside()
                    ->schema([
                        FileUpload::make('image')
                            ->label('Ảnh đại diện')
                            ->image()
                            ->imageEditor()
                            ->imageResizeMode('cover')
                            ->imageCropAspectRatio('1:1')
                            ->directory('nhanvien')
                            ->visibility('public')
                            ->maxSize(5120) // 5MB
                            ->helperText('Định dạng: JPG, PNG. Kích thước tối đa: 5MB')
                            ->downloadable()
                            ->reorderable(false)
                            ->columnSpanFull()
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),
                        TextInput::make('name')
                            ->label('Tên')
                            ->required()
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),

                        TextInput::make('email')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->email()
                            ->validationMessages([
                                'unique' => 'Email người dùng này đã tồn tại.',
                            ])
                            ->inlineLabel(),
                        TextInput::make('password')
                            ->label('Mật khẩu')
                            ->password()
                            ->required()
                            ->revealable()
                            ->regex('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/')
                            ->validationMessages([
                                'regex' => 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, số và ký tự đặc biệt.',
                            ])
                            ->visibleOn('create')
                            ->inlineLabel(),
                        Actions::make([
                            Action::make('Tạo mật khẩu')
                                ->action(function ($get, $set) {
                                    $password = fake()->regexify('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/');
                                    $set('password', $password);
                                    Notification::make()
                                        ->title('Mật khẩu đã được tạo')
                                        ->success()
                                        ->duration(1000)
                                        ->send();
                                }),
                        ])->visibleOn('create')
                            ->inlineLabel(),
                        // ->visibleOn('create'),
                        TextInput::make('Phone')
                            ->prefix('+84')
                            ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                            ->validationMessages([
                                'regex' => 'Số điện thoại sai quy cách.',
                            ])
                            ->label('Số điện thoại')
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),

                        TextInput::make('Address')
                            ->label('Địa Chỉ')
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),
                        DatePicker::make('Birth')
                            ->label('Ngày sinh')
                            ->displayFormat('d/m/Y')
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),
                        TextInput::make('cccd')
                            ->label('Căn cước công dân')
                            ->unique(ignoreRecord: true)
                            ->regex('/^\d{12}$/')
                            ->validationMessages([
                                'regex' => 'CCCD phải có đúng 12 chữ số.',
                                'unique' => 'CCCD này đã tồn tại trong hệ thống.',
                            ])
                            ->inlineLabel()
                            ->hidden(fn ($get) => $get('option') == 1),
                    ]),

                Section::make('Chức vụ')
                    ->aside()
                    ->description('Lựa chọn chức vụ cho người dùng')
                    ->schema([
                        Forms\Components\Toggle::make('Active')
                            ->label(fn ($state): string => $state ? 'Active' : 'Inactive')
                            ->reactive()
                            ->onColor('emerald')
                            ->visibleOn('edit')
                            ->inlineLabel(),
                        Select::make('roles')
                            ->label('Chức vụ')
                            ->relationship('roles', 'name')
                            ->dehydrated()
                            ->multiple()
                            ->preload()
                            ->searchable()
                            ->inlineLabel(),
                    ]),
                Section::make('Đặt lại mật khẩu')
                    ->aside()
                    ->description('Đặt lại mật khẩu cho người dùng')
                    ->visibleOn('edit')
                    ->schema([
                        TextInput::make('password')
                            ->label('Mật khẩu mới')
                            ->dehydrated(fn ($state): bool => filled($state))
                            ->dehydrateStateUsing(fn ($state): string => Hash::make($state))
                            ->password()
                            ->revealable(filament()->arePasswordsRevealable())
                            ->regex('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/')
                            ->validationMessages([
                                'regex' => 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, số và ký tự đặc biệt.',
                            ])
                            ->autocomplete('new-password')
                            ->inlineLabel()
                            ->rule(PasswordRule::default())
                            ->live(debounce: 500)
                            ->same('passwordConfirmation'),

                        TextInput::make('passwordConfirmation')
                            ->dehydrated(false)
                            ->label('Xác nhận mật khẩu mới')
                            ->visible(fn (Get $get): bool => filled($get('password')))
                            ->required()
                            ->password()
                            ->revealable()
                            ->inlineLabel(),
                    ]),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->label('Mã')->hidden()
                    ->sortable(),
                ImageColumn::make('image')
                    ->alignCenter()
                    ->label('Ảnh')
                    ->circular()
                    ->defaultImageUrl(function ($record): string {
                        $name = $record->name;

                        return "https://ui-avatars.com/api/?name={$name}";
                    }),
                TextColumn::make('name')->label('Tên')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('roles')->label('Chức vụ')
                    ->wrap()
                    // ->url(fn($record) => CustomRoleResource::getUrl('edit', ['record' => Role::findByName($record->roles, 'web')->id]))
                    ->badge()
                    ->separator(';')
                    ->listWithLineBreaks()
                    ->getStateUsing(fn ($record) => collect($record->roles)
                        ->pluck('name')
                        ->map(fn ($name) => Str::headline(str_replace('_', ' ', $name))))
                    ->colors([
                        'warning',
                    ]),
                TextColumn::make('email')->label('Email')
                    ->searchable()
                    ->sortable(),
                //                TextColumn::make('Phone')->label('Số điện thoại')
                //                    ->searchable()
                //                    ->sortable(),
                //                TextColumn::make('Birth')->label('Ngày sinh')
                //                    ->sortable()
                //                    ->searchable()
                //                    ->date('d/m/Y'),
                //                TextColumn::make('Address')->label('Địa chỉ')
                //                    ->searchable()
                //                    ->sortable(),
                ToggleColumn::make('Active')->label('Active')
                    ->alignCenter()
                    ->onColor('emerald')
                    ->searchable()
                    ->disabled(),
                // TextColumn::make('Active')
                //     ->formatStateUsing(fn($record) => $record->Active == 1 ? 'Yes' : 'No')
                //     ->badge()
                //     ->color(fn($record): string => $record->Active == 1 ? 'success' : 'danger')
                //     ->searchable(),
                // TextColumn::make('created_at')->searchable()->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('Active')->label('Còn hoạt động')
                    ->options([
                        '0' => 'Không',
                        '1' => 'Có',
                    ])
                    ->default('1'),
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
