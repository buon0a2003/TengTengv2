<?php

declare(strict_types=1);

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\HtmlString;

class NewAccount extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    public function __construct(protected string $password, protected ?Model $tenant = null)
    {
        $this->afterCommit();
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        $appName = config('app.name');

        return (new MailMessage)
            ->subject("Tài khoản của bạn đã được tạo trên $appName")
            ->greeting('Xin chào '.$notifiable->name.',')
            ->line('Tài khoản của bạn đã được tạo thành công trên hệ thống.')
            ->line('Dưới đây là thông tin đăng nhập của bạn:')
            ->line(new HtmlString("<strong>Email</strong> : {$notifiable->email}"))
            ->line(new HtmlString("<strong>Mật khẩu</strong> : {$this->password}"))
            ->line('Vui lòng đăng nhập vào hệ thống và đổi mật khẩu ngay để đảm bảo an toàn.')
            ->action('Đăng nhập ngay', filament()->getUrl($this->tenant));

    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}
