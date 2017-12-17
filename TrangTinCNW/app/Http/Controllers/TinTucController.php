<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TheLoai;
use App\TinTuc;
use App\LoaiTin;
use App\Comment;
class TinTucController extends Controller
{
    //
    public function getDanhSach()
    {
        $tintuc=TinTuc::orderby('id','DESC')->get();
        return view('admin.tintuc.danhsach',['tintuc'=>$tintuc]);
    }
    public function getThem()
    {
        $theloai=TheLoai::all();
        $loaitin=LoaiTin::all();
        return view('admin.tintuc.them',['theloai'=>$theloai,'loaitin'=>$loaitin]);
    }
   
    public function postThem(Request $request)
    {
        $this->validate($request,[
            'LoaiTin'=>'required','tieude'=>'required|min:3|unique:tintuc,tieude',
            'tomtat'=>'required',
            'noidung'=>'required'
        ],[
            'LoaiTin.required'=>'Bạn chưa nhập loại tin',
            'tieude.required'=>'Bạn chưa nhập tiêu đề',
            'tieude.min'=>'Tiêu đề phải có ít nhất 3 ký tự',
            'tieude.unique'=>'Tiêu đề đã tồn tại',
            'tomtat.required'=>'Bạn chưa nhập tóm tắt',
            'noidung.required'=>'Bạn chưa nhập nội dung'
        ]);
        $tintuc= new TinTuc ;
        $tintuc->tieude=$request->tieude;
        $tintuc->tieudekhongdau= changeTitle($request->tieude);
        $tintuc->id_loaitin=$request->LoaiTin;
        $tintuc->tomtat=$request->tomtat;
        $tintuc->noidung=$request->noidung;
        $tintuc->soluotxem=0;
        if($request->hasFile('hinh'))
            {
                $file=$request->file('hinh');
                $duoi=$file->getClientOriginalExtension();
                // if($duoi!='jpg'&& $duoi!='png'&& $duoi!='jpeg')
                //     {
                //         return redirect('admin/tintuc/them')-> with('loi','Bạn chỉ được chọn file đuôi jpg, png, jpeg');
                //     }
                $name=$file -> getClientOriginalName();
                $hinh=str_random(4)."_".$name;
                while(file_exists("upload/tintuc/".$hinh))
                    {
                        $hinh=str_random(4)."_".$name;
                    }
                    $file->move("upload/tintuc",$hinh);
                    $tintuc->hinh=$hinh;
                //echo $hinh;
            }
        else
        {
            $tintuc->hinh="";
        }
        $tintuc->save();
        return redirect('admin/tintuc/them')-> with('thongbao','Thêm tin thành công');
    }
     public function getSua($id)
    {
         $theloai=TheLoai::all();
        $loaitin=LoaiTin::all();
        $tintuc=TinTuc::find($id);
        return view('admin.tintuc.sua',['tintuc'=>$tintuc,'theloai'=>$theloai,'loaitin'=>$loaitin]);
    }
    public function postSua(Request $request,$id)
    {
        $tintuc= TinTuc::find($id);
        $this->validate($request,[
            'LoaiTin'=>'required','tieude'=>'required|min:3|unique:tintuc,tieude',
            'tomtat'=>'required',
            'noidung'=>'required'
        ],[
            'LoaiTin.required'=>'Bạn chưa nhập loại tin',
            'tieude.required'=>'Bạn chưa nhập tiêu đề',
            'tieude.min'=>'Tiêu đề phải có ít nhất 3 ký tự',
            'tieude.unique'=>'Tiêu đề đã tồn tại',
            'tomtat.required'=>'Bạn chưa nhập tóm tắt',
            'noidung.required'=>'Bạn chưa nhập nội dung'
        ]);
         $tintuc->tieude=$request->tieude;
        $tintuc->tieudekhongdau= changeTitle($request->tieude);
        $tintuc->id_loaitin=$request->LoaiTin;
        $tintuc->tomtat=$request->tomtat;
        $tintuc->noidung=$request->noidung;
       
        if($request->hasFile('hinh'))
            {
                $file=$request->file('hinh');
                $duoi=$file->getClientOriginalExtension();
                // if($duoi!='jpg'&& $duoi!='png'&& $duoi!='jpeg')
                //     {
                //         return redirect('admin/tintuc/them')-> with('loi','Bạn chỉ được chọn file đuôi jpg, png, jpeg');
                //     }
                $name=$file -> getClientOriginalName();
                $hinh=str_random(4)."_".$name;
                while(file_exists("upload/tintuc/".$hinh))
                    {
                        $hinh=str_random(4)."_".$name;
                    }

                    $file->move("upload/tintuc",$hinh);
                    unlink("upload/tintuc/",$tintuc->hinh);
                    
                //echo $hinh;
            }
      
        $tintuc->save();
        return redirect('admin/tintuc/sua/'.$id)->with('thongbao','sửa thành công');
    }
    public function getXoa($id)
    {
        $tintuc=TinTuc::find($id);
        $tintuc->delete();
        return redirect('admin/tintuc/danhsach')->with('thongbao','Bạn đã xóa thành công');
    }
}
