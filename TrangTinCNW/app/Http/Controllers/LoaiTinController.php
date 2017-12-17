<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TheLoai;
use App\LoaiTin;

class LoaiTinController extends Controller
{
    //
    public function getDanhSach()
    {
        $loaitin=LoaiTin::all();
        return view('admin.loaitin.danhsach',['loaitin'=>$loaitin]);
    }
    public function getThem()
    {
        $theloai=TheLoai::all();
        return view('admin.loaitin.them',['theloai'=>$theloai]);
    }
   
    public function postThem(Request $request)
    {
        $this->validate($request,[
            'tenloaitin'=>'required|unique:LoaiTin,tenloaitin|min:3|max:100',
            'TheLoai'=>'required'
        ],[
            'tenloaitin.required'=>'Bạn chưa nhập tên loại tin',
            'tenloaitin.unique'=>'Loại tin trùng',
            'tenloaitin.min'=>'loại tin phải từ 3 đến 100 ký tự',
            'tenloaitin.max'=>'loại tin phải từ 3 đến 100 ký tự',
            'TheLoai.required'=>'Bạn chưa chọn thể loại'
        ]);
        $loaitin = new LoaiTin;
        $loaitin->tenloaitin=$request->tenloaitin;
        $loaitin->tenkhongdau =changeTitle($request->tenloaitin);
        $loaitin->id_theloai=$request->TheLoai;
        $loaitin->save();
        return redirect('admin/loaitin/them')->with('thongbao','Thêm loại tin thành công');
    }
     public function getSua($id)
    {
        $theloai=TheLoai::all();
       $loaitin=LoaiTin::find($id);
        return view('admin.loaitin.sua',['loaitin'=>$loaitin,'theloai'=>$theloai]);
    }
    public function postSua(Request $request,$id)
    {
        $this->validate($request,[
            'tenloaitin'=>'required|unique:LoaiTin,tenloaitin|min:3|max:100',
            'TheLoai'=>'required'
        ],[
            'tenloaitin.required'=>'Bạn chưa nhập tên loại tin',
            'tenloaitin.unique'=>'Loại tin trùng',
            'tenloaitin.min'=>'loại tin phải từ 3 đến 100 ký tự',
            'tenloaitin.max'=>'loại tin phải từ 3 đến 100 ký tự',
            'TheLoai.required'=>'Bạn chưa chọn thể loại'
        ]);
        $loaitin= LoaiTin::find($id);
        $loaitin->tenloaitin=$request->tenloaitin;
        $loaitin->tenkhongdau =changeTitle($request->tenloaitin);
        $loaitin->id_theloai=$request->TheLoai;
        $loaitin->save();
        return redirect('admin/loaitin/sua/'.$id)->with('thongbao','Sửa thành công'); 
    }
    public function getXoa($id)
    {
        $loaitin=LoaiTin::find($id);
        $loaitin->delete();
        return redirect('admin/loaitin/danhsach')->with('thongbao','Bạn đã xóa thành công');
    }
}
