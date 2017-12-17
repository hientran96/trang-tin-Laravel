<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TheLoai;
use App\LoaiTin;

class AjaxController extends Controller
{
    public function getLoaiTin($id_theloai)
    {
        $loaitin=LoaiTin::where('id_theloai',$id_theloai)->get();
        foreach ($loaitin as $lt) {
             echo "<option value='".$lt->id."'>".$lt->tenloaitin."</option>";
        }
    }
}
