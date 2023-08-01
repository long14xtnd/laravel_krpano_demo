<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\EpisodeController;
use Illuminate\Support\Facades\Auth;
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
//======================Client ===============================
Route::get('/', [IndexController::class, 'home'])->name('homepage');
//======================Homestay =============================
Route::get('/homestay', [IndexController::class, 'homestay'])->name('homestay');
//======================heating============================ 
Route::get('/heating', [IndexController::class, 'heating'])->name('heating');
Route::middleware(['auth'])->group(function () {
    Route::resource('category', CategoryController::class);
    Route::resource('genre', GenreController::class);
    Route::resource('country', CountryController::class);
    Route::resource('movie', MovieController::class);
    //them tap phim
    Route::resource('episode', EpisodeController::class);
});
Route::get('/danh-muc/{slug}', [IndexController::class, 'category'])->name('category');
Route::get('the-loai/{slug}', [IndexController::class, 'genre'])->name('genre');
Route::get('/quoc-gia/{slug}', [IndexController::class, 'country'])->name('country');
Route::get('/phim/{slug}.m{id}.html', [IndexController::class, 'movie'])->name('movie');
//Route::get('/xem-phim/{slug}/{tap}', [IndexController::class, 'watch']);
Route::get('/xem-phim/{id}-{slug}/{tap}', [IndexController::class, 'watch']);
Route::get('/so-tap', [IndexController::class, 'episode'])->name('so-tap');
Route::get('/nam/{year}', [IndexController::class, 'year']);
Route::get('/tag/{tag}', [IndexController::class, 'tag']);
Route::get('/tim-kiem', [IndexController::class, 'timkiem'])->name('tim-kiem');
Route::get('/loc-phim', [IndexController::class, 'locphim'])->name('locphim');

//================================ADMIN =============================
Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');


Route::post('resorting', [CategoryController::class, 'resorting'])->name('resorting');


Route::get('select-movie', [EpisodeController::class, 'select_movie'])->name('select-movie');


Route::get('/update-year-phim', [MovieController::class, 'update_year']);
Route::get('/update-topview-phim', [MovieController::class, 'update_topview']);
Route::get('/filter-topview-phim', [MovieController::class, 'filter_topview']);
Route::get('/filter-topview-default', [MovieController::class, 'filter_default']);
