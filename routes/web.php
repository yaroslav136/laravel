<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', [App\Http\Controllers\Auth\LoginController::class, 'showLoginForm'])->name('auth.login');
Route::group(["middleware" => ['admin', 'auth', 'verified']], function () {
    Route::get('/', [App\Http\Controllers\MainController::class, 'index'])->name('home');
    Route::get('/news/{article}', [App\Http\Controllers\MainController::class, 'show'])->name('news.show');
    Route::get('/map', [App\Http\Controllers\MainController::class, 'showMap'])->name('map');

    Route::group(['prefix' => 'reviews'], function () {
        Route::get('/', [App\Http\Controllers\ReviewController::class, 'index'])->name('review.index_create');
        Route::post('/', [App\Http\Controllers\ReviewController::class, 'store'])->name('review.store');
        Route::post('/removeSelected', [App\Http\Controllers\ReviewController::class, 'removeSelected'])->name('review.removeSelected');
        Route::get('/{review}/edit', [App\Http\Controllers\ReviewController::class, 'edit'])->name('review.edit');
        Route::patch('/{review}', [App\Http\Controllers\ReviewController::class, 'update'])->name('review.update');
        Route::delete('/{review}', [App\Http\Controllers\ReviewController::class, 'destroy'])->name('review.delete');
    });

    Route::group(['prefix' => 'cards'], function () {
        Route::get('/', [App\Http\Controllers\CardsController::class, 'index'])->name('cards.index');
        Route::get('/create', [App\Http\Controllers\CardsController::class, 'create'])->name('cards.create');
        Route::post('/create', [App\Http\Controllers\CardsController::class, 'store'])->name('cards.store');
        Route::get('/{card}', [App\Http\Controllers\CardsController::class, 'show'])->name('cards.show');
        Route::delete('/{card}', [App\Http\Controllers\CardsController::class, 'destroy'])->name('cards.delete');
        Route::post('/', [\App\Http\Controllers\CardsController::class, 'pay'])->name('cards.pay');
    });

    Route::group(['prefix' => 'claims'], function () {
        Route::get('/', [\App\Http\Controllers\ClaimController::class, 'index'])->name('claims.index');
        Route::get('/create', [\App\Http\Controllers\ClaimController::class, 'create'])->name('claims.create');
        Route::post('/store', [\App\Http\Controllers\ClaimController::class, 'store'])->name('claims.store');
        Route::delete('/{appeal}', [\App\Http\Controllers\ClaimController::class, 'destroy'])->name('claims.delete');
    });
});

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
