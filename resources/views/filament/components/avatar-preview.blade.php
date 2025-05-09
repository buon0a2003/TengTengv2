@php
    $user = auth()->user();
    $avatarUrl = $user->getFilamentAvatarUrl();
@endphp

<div class="flex flex-col items-center justify-center p-4">
    <div class="mb-3 relative text-center">
        <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">Ảnh đại diện</p>
        <div class="rounded-full overflow-hidden border-3 border-primary-500 shadow h-28 w-28 flex items-center justify-center bg-gray-100">
            @if($avatarUrl)
                <img src="{{ $avatarUrl }}" alt="{{ $user->name }}" class="h-full w-full object-cover">
            @else
                <div class="text-3xl font-bold text-primary-500">
                    {{ substr($user->name, 0, 1) }}
                </div>
            @endif
        </div>
    </div>
    <div class="text-center">
        <h3 class="text-base font-medium text-gray-900 dark:text-white">{{ $user->name }}</h3>
        <p class="text-sm text-gray-500 dark:text-gray-400">{{ $user->email }}</p>
        @if($user->Phone)
            <p class="text-sm text-gray-500 dark:text-gray-400 mt-0.5">{{ $user->Phone }}</p>
        @endif
    </div>
</div> 