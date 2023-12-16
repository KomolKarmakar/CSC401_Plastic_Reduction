<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::get('/analytics/usercharts', function () {
    return view('analytics.userCharts');
})->name('userCharts');

Route::get('/analytics/createchart', function () {
    return view('analytics.newChart');
})->name('newChart');

Route::get('/help/faq', function () {
    return view('help.faq');
})->name('faq');

Route::get('/feedback/rating', function () {
    return view('feedback.rating');
})->name('rating');

Route::get('/data/userTables', function () {
    $user = DB::table('tbluser') -> get();
    $emp = DB::table('tblemployee') -> get();

    return view('data.userData', ['user' => $user], ['emp' => $emp]);
})->name('userData');

Route::get('/data/userTables/submitUser', function(int $id, string $fname, string $lname, string $email, string $dob, string $street, string $city, string $state, int $zip){

    DB::insert('insert into tbluser (id, fname, lname, email, dob, street, city, state, zip) values (?, ?. ?, ?, ?, ?, ?, ?, ?)', [$id, $fname, $lname, $email, $dob, $street, $city, $state, $zip]);


})->name('userSubmit');

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('/register', function () {
    return view('register');
})->name('register');

Route::get('/campaign', function () {
    return view('campaign.campaign');
})->name('camp');





// Route::get('/hello', function() {
//     return response("<h1> Hello World </h1>", 200)
//     ->header("foo", "bar");
// }
// );

// Route::get('/posts/{id}', function($id) {
//     return response("Post " . $id);
// }
// )->where('id', '[0-9]+');

// Route::get('/search', function(Request $request)
//     {
//         return $request->name . ' ' . $request->city; 
//     }
// );
