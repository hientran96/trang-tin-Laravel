<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TinChiTiet;

class TinChiTietController extends Controller
{
    //
    public function getDanhSach()
    {
        $tinchitiet= TinChiTiet::all();
    	return view('admin.tinchitiet.danhsach',['tinchitiet'=>$tinchitiet]);
    }
    
    public function getThem()
    {
     return view('admin.tinchitiet.them');
    }
   
    public function postThem(Request $request)
    {
      $this->validate($request,['ten'=>'required',
        'noidung'=>'required',],[
            'ten.required'=>'Banj chưa nhập tên',
            'noidung.required'=>'Bạn chưa nhập nội dung']);
      $tinchitiet=new TinChiTiet;
      $tinchitiet->ten=$request->ten;
      $tinchitiet->noidung=$request->noidung;
      if($request->has('link'))
        $tinchitiet->link=$request->link;
    if($request->hasFile('hinh'))
            {
                $file=$request->file('hinh');
                $duoi=$file->getClientOriginalExtension();
                // if($duoi!='jpg'&& $duoi!='png'&& $duoi!='jpeg')
                //     {
                //         return redirect('admin/tinchitiet/them')-> with('loi','Bạn chỉ được chọn file đuôi jpg, png, jpeg');
                //     }
                $name=$file -> getClientOriginalName();
                $hinh=str_random(4)."_".$name;
                while(file_exists("upload/tinchitiet/".$hinh))
                    {
                        $hinh=str_random(4)."_".$name;
                    }
                    $file->move("upload/tinchitiet",$hinh);
                    $tinchitiet->hinh=$hinh;
                //echo $hinh;
            }
        else
        {
            $tinchitiet->hinh="";
        }
        $tinchitiet->save();
        return redirect('admin/tinchitiet/them')->with('thongbao','Thêm tin thành công');
    }
     public function getSua($id)
    {
        $tinchitiet= TinChiTiet::find($id);
        return view('admin.tinchitiet.sua',['tinchitiet'=>$tinchitiet]);
    }
    public function getXoa($id)
    {
        $tinchitiet=TinChiTiet::find($id);
        $tinchitiet->delete();
        return redirect('admin/tinchitiet/danhsach')->with('thongbao','Xoá thành công');
    }
    public function postSua(request $request,$id)
    {
         $this->validate($request,['ten'=>'required',
        'noidung'=>'required',],[
            'ten.required'=>'Banj chưa nhập tên',
            'noidung.required'=>'Bạn chưa nhập nội dung']);
      $tinchitiet=TinChiTiet::find($id);
      $tinchitiet->ten=$request->ten;
      $tinchitiet->noidung=$request->noidung;
      if($request->has('link'))
        $tinchitiet->link=$request->link;
    if($request->hasFile('hinh'))
            {
                $file=$request->file('hinh');
                $duoi=$file->getClientOriginalExtension();
                // if($duoi!='jpg'&& $duoi!='png'&& $duoi!='jpeg')
                //     {
                //         return redirect('admin/tinchitiet/them')-> with('loi','Bạn chỉ được chọn file đuôi jpg, png, jpeg');
                //     }
                $name=$file -> getClientOriginalName();
                $hinh=str_random(4)."_".$name;
                while(file_exists("upload/tinchitiet/".$hinh))
                    {
                        $hinh=str_random(4)."_".$name;
                    }
                    unlink("upload/tinchitiet/".$tinchitiet->hinh);
                    $file->move("upload/tinchitiet",$hinh);
                    $tinchitiet->hinh=$hinh;
                //echo $hinh;
            }
        
        $tinchitiet->save();
        return redirect('admin/tinchitiet/sua/'.$id)->with('thongbao','Sửa tin thành công');
    }
}
