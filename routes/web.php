<?php

declare(strict_types=1);

use app\Livewire\vattuList;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/', vattuList::class);