<?php

declare(strict_types=1);

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\Imports\TonkhoImporter;
use App\Filament\Resources\TonkhoResource;
use App\Models\tonkho;
use App\Models\vattu;
use Filament\Actions\Action;
use Filament\Actions\ImportAction;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\Page;
use Filament\Support\Exceptions\Halt;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Js;
use Livewire\Attributes\On;

class TonDau extends Page implements HasForms
{
    use InteractsWithForms;

    public ?array $data = [];

    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Nhập tồn đầu';

    protected static string $view = 'filament.resources.tonkho-resource.pages.ton-dau';

    public function mount(): void
    {
        // $this->form->fill();
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Điền thông tin tồn kho đầu thủ công')
                    ->description('')
                    ->schema([
                        Repeater::make('dsvattu')
                            ->reorderable(false)
                            ->addActionLabel('Thêm vật tư')
                            ->addAction(function (FormAction $action, $get): FormAction {
                                return $action->modalContent(
                                    view('filament.vattulist', ['LyDo' => ''])
                                )
                                    ->action(null)
                                    ->modalCancelAction(false)
                                    ->modalWidth('7xl')
                                    ->modalSubmitActionLabel('Xong');
                            })
                            ->label('Danh sách vật tư')
                            ->schema([
                                TextInput::make('id')->hidden()->live(),
                                TextInput::make('TenVT')
                                    ->readOnly(true)
                                    ->label('Vật tư')
                                    ->required(),
                                TextInput::make('soluong')->label('Số lượng')
                                    ->suffix(fn(Get $get): string => (string) vattu::find($get('id'))?->donvitinh->TenDVT ?? '')
                                    ->numeric()
                                    ->minValue(1),
                                Select::make('kho_id')
                                    ->label('Kho')
                                    ->relationship('kho', 'TenKho')
                                    ->searchable()
                                    ->preload()
                                    ->live()
                                    ->required(),

                                Select::make('vitri_id')
                                    ->label('Vị trí')
                                    ->relationship('vitri', 'Mota', function (Builder $query, $get) {
                                        return $query->where('kho_id', $get('kho_id'));
                                    }),
                            ])->defaultItems(0)->grid(2),
                    ]),
            ])->columns(2)
            ->statePath('data')
            ->model(tonkho::class);
    }

    #[On('vattuSelected')]
    public function handleVattuSelected($record): void
    {
        $state = $this->data;

        $state['dsvattu'][] = [
            'id' => $record['id'],
            'TenVT' => $record['TenVT'],
        ];

        $this->form->fill($state);
        // dd($record);
    }

    public function save(): void
    {
        try {
            $records = $this->data;
            if ($records['dsvattu']) {
                foreach ($records['dsvattu'] as $item) {

                    $existing = tonkho::where('vattu_id', $item['id'])
                        ->where('kho_id', $item['kho_id'])
                        ->where('vitri_id', $item['vitri_id'])
                        ->exists();

                    if ($existing) {
                        Notification::make()
                            ->title("Vật tư '{$item['TenVT']}' đã tồn tại trong kho tại vị trí này")
                            ->danger()
                            ->send();
                        continue;
                    }

                    $tonkho = new tonkho();
                    $tonkho->vattu_id = $item['id'];
                    $tonkho->kho_id = $item['kho_id'];
                    $tonkho->vitri_id = $item['vitri_id'];
                    $tonkho->soluong = $item['soluong'];
                    $tonkho->NgayCapNhat = now();
//                    $tonkho->NgayCapNhat = now()->startOfMonth()->subDay();

                    $tonkho->save();

                    Notification::make()
                        ->title('Thêm thành công')
                        ->success()
                        ->send();

                    redirect()->to(route('filament.admin.resources.tonkho.index'));
                }
            } else {
                Notification::make()
                    ->title('Chưa có vật tư nào được chọn')
                    ->danger()
                    ->send();
            }

            // dd($records['dsvattu']);
        } catch (Halt $exception) {
            Notification::make()
                ->title('Lỗi')
                ->body($exception->getMessage())
                ->danger()
                ->send();

            return;
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            ImportAction::make('import')
                ->label('Nhập từ file CSV')
                ->icon('heroicon-o-arrow-up-tray')
                ->color('success')
                ->importer(TonkhoImporter::class),
        ];
    }

    protected function getFormActions(): array
    {
        return [
            $this->getSaveFormAction(),
            $this->getCancelFormAction(),
        ];
    }

    protected function getCancelFormAction(): Action
    {
        return Action::make('cancel')
            ->label('Thoát')
            ->alpineClickHandler('document.referrer ? window.history.back() : (window.location.href = ' . Js::from($this->previousUrl ?? static::getResource()::getUrl()) . ')')
            ->color('gray');
    }

    protected function getSaveFormAction(): Action
    {
        return Action::make('save')
            ->label('Lưu')
            ->submit('save')
            ->keyBindings(['mod+s']);
    }
}
