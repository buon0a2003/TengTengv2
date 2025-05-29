<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\HtmlString;

class ResetAccount extends Notification
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
            ->subject("Mật khẩu của bạn đã được thay đổi")
            ->greeting('Xin chào '.$notifiable->name.',')
            ->line('Chúng tôi xin thông báo rằng mật khẩu tài khoản của bạn đã được thay đổi thành công.')
            ->line('Dưới đây là mật khẩu mới của bạn:')
            ->line(new HtmlString("<strong>{$this->password}</strong>"))
            ->line('Nếu bạn không thực hiện hành động này, vui lòng liên hệ với bộ phận hỗ trợ ngay lập tức để bảo vệ tài khoản của bạn.')
            ->line('Nếu đây là bạn, vui lòng đăng nhập vào hệ thống.')
            ->action('Đăng nhập ngay', filament()->getUrl($this->tenant))
            ->salutation("Trân trọng,\n$appName");
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
