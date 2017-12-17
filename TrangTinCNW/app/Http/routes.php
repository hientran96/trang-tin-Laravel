<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
use App\TheLoai;
Route::get('/', function () {
    return view('welcome');
});
//Route::get('trangtincnw',function(){
	// Schema::create('theloai',function($table){
	// 	$table->increments('id');
	// 	$table->string('ten');
	// 	$table->string('tenkhongdau');
	// 	$table->timestamps('');
		
	// });
	// Schema::create('tintuc',function($table){
	// 	$table->increments('id');
	// 	$table->string('tieude');
	// 	$table->string('tieudekhongdau');
	// 	$table->text('tomtat')->unique();
	// 	$table->text('noidung');
	// 	$table->string('hinh');
	// 	$table->integer('soluotxem');
	// 	$table->integer('id_loaitin');
	// 	$table->tinyInteger('kiemduyet');
	// 	$table->timestamps('');
		
	// });
	// Schema::create('nguoidung',function($table){
	// 	$table->increments('id');
	// 	$table->string('hovaten');
	// 	$table->string('tendangnhap');
	// 	$table->string('matkhau');
	// 	$table->tinyInteger('quyenhan');
	// 	$table->tinyInteger('khoa');
	// 	$table->timestamps('');
		
	// });
	// 	Schema::create('comment',function($table){
	// 	$table->increments('id');
	// 	$table->integer('id_nguoidung');
	// 	$table->integer('id_tintuc');
	// 	$table->text('noidung');
	// 	$table->timestamps('');
		
	// });
	// 	Schema::create('loaitin',function($table){
	// 	$table->increments('id');
	// 	$table->integer('id_theloai');
	// 	$table->integer('tenloaitin');
	// 	$table->text('tenkhongdau');
	// 	$table->timestamps('');
		
	// });
	// 	Schema::create('tinchitiet',function($table){
	// 	$table->increments('id');
	// 	$table->string('ten');
	// 	$table->string('hinh');
	// 	$table->string('link');
	// 	$table->text('noidung');
	// 	$table->timestamps('');
		
	// });
	


//});

Route::get('admin/login','UserController@getloginAdmin');
Route::post('admin/login','UserController@postloginAdmin');
Route::get('admin/logout','UserController@getdangxuatAdmin');

Route::group(['prefix'=>'admin','middleware'=>'adminLogin'],function(){
	Route::group(['prefix'=>'theloai'],function()
	{
		//admin/theloai/them
		Route::get('danhsach','TheLoaiController@getDanhSach');
		Route::get('sua/{id}','TheLoaiController@getSua');
		Route::post('sua/{id}','TheLoaiController@postSua');
		Route::get('them','TheLoaiController@getThem');
		Route::post('them','TheLoaiController@postThem');
		Route::get('xoa/{id}','TheLoaiController@getXoa');
		
	});
	Route::group(['prefix'=>'loaitin'],function()
	{
		//admin/theloai/them
		Route::get('danhsach','LoaiTinController@getDanhSach');
		Route::get('sua/{id}','LoaiTinController@getSua');
		Route::post('sua/{id}','LoaiTinController@postSua');
		Route::get('them','LoaiTinController@getThem');
		Route::post('them','LoaiTinController@postThem');
		Route::get('xoa/{id}','LoaiTinController@getXoa');

	});
	Route::group(['prefix'=>'tintuc'],function()
	{
		//admin/theloai/them
		Route::get('danhsach','TinTucController@getDanhSach');
		Route::get('sua/{id}','TinTucController@getSua');
		Route::post('sua/{id}','TinTucController@postSua');
		Route::get('them','TinTucController@getThem');
		Route::post('them','TinTucController@postThem');
		Route::get('xoa/{id}','TinTucController@getXoa');

	});
	Route::group(['prefix'=>'comment'],function()
	{
		//admin/theloai/them
	
		Route::get('xoa/{id}/{id_tintuc}','CommentController@getXoa');

	});
	Route::group(['prefix'=>'ajax'],function(){
		Route::get('loaitin/{id_theloai}','AjaxController@getLoaiTin');
	});
	Route::group(['prefix'=>'tinchitiet'],function()
	{
		//admin/theloai/them
		Route::get('danhsach','TinChiTietController@getDanhSach');
		Route::get('sua/{id}','TinChiTietController@getSua');
		Route::post('sua/{id}','TinChiTietController@postSua');
		Route::get('them','TinChiTietController@getThem');
		Route::post('them','TinChiTietController@postThem');
		Route::get('xoa/{id}','TinChiTietController@getXoa');

	});

	Route::group(['prefix'=>'user'],function()
	{
		//admin/theloai/them
		Route::get('danhsach','UserController@getDanhSach');
		Route::get('sua/{id}','UserController@getSua');
		Route::post('sua/{id}','UserController@postSua');
		Route::get('them','UserController@getThem');
		Route::post('them','UserController@postThem');
		Route::get('xoa/{id}','UserController@getXoa');

	});


});
Route::get('trangchu','PagesController@trangchu');
Route::get('lienhe','PagesController@lienhe');
Route::get('loaitin/{id}/{tenkhongdau}.html','PagesController@loaitin');
Route::get('tintuc/{id}/{tieudekhongdau}.html','PagesController@tintuc');
Route::get('dangnhap','PagesController@getDangnhap');
Route::post('dangnhap','PagesController@postDangnhap');
Route::get('dangxuat','PagesController@getDangxuat');
Route::get('nguoidung','PagesController@getNguoidung');
Route::post('nguoidung','PagesController@postNguoidung');
Route::get('dangky','PagesController@getDangky');
Route::post('dangky','PagesController@postDangky');
Route::Post('comment/{id}','CommentController@postComment');
Route::post('timkiem','PagesController@timkiem');
Route::get('gioithieu','PagesController@gioithieu');

