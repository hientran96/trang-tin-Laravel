<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;
use App\TheLoai;
use App\Tinchitiet;
use App\LoaiTin;
use App\TinTuc;
use App\User;

class PagesController extends Controller
{
    //
    function __construct()
    {
    	$theloai=TheLoai::all();
    	$tinchitiet=TinChiTiet::all();
    	view()->share('theloai',$theloai);
    	view()->share('tinchitiet',$tinchitiet);
        if(Auth::check())
            {
            view()->share('nguoidung',Auth::user());
            }

    }
    function trangchu(){
    	
    	return view('pages.trangchu');
    }
    function lienhe()
    
    {
    	
    	return view('pages.lienhe');
    }
    function loaitin($id)
    {
        $loaitin=LoaiTin::find($id);
        $tintuc=TinTuc::Where('id_loaitin',$id)->paginate(1);
        return view('pages.loaitin',['loaitin'=>$loaitin,'tintuc'=>$tintuc]);

    }
    function tintuc($id)
    {
        $tintuc=TinTuc::find($id);
        $tinnoibat=TinTuc::where('noibat',1)->take(1)->get();
        $tinlienquan=TinTuc::where('id_loaitin',$tintuc->id_loaitin)->take(1)->get();
        return view('pages.tintuc',['tintuc'=>$tintuc,'tinnoibat'=>$tinnoibat,'tinlienquan'=>$tinlienquan]);
    }
    function getDangnhap()
    {
        return view('pages.dangnhap');
    }
    function getDangxuat()
    {
        Auth::logout();
        return redirect('trangchu');
    }
    function postDangnhap(Request $request)
    {
        $this->validate($request,[
            'email'=>'required',
            'password'=>'required|min:3|max:32'
        ],[
            'email.required'=>'Bạn chưa nhập email',
            'password.required'=>'bạn chưa nhập password',
            'password.min'=>'Password không được nhỏ hơn 3 ký tự',
            'password.max'=>'Password không được nhỏ hơn 32 ký tự'
        ]);
       if(Auth::attempt(['email'=>$request->email,'password'=>$request->password]))
            {
                return redirect('trangchu');
            }
        else{
            return redirect('dangnhap')->with('thongbao','Đăng nhập không thành công');
        }
    }
    function timkiem(Request $request)
    {
        $tukhoa=$request->tukhoa;
        $tintuc=TinTuc::where('tieude','like',"%$tukhoa%")->orwhere('tomtat','like',"%$tukhoa%")->orwhere('noidung','like',"%$tukhoa%")->take(10)->paginate(2);
        return view('pages.timkiem',['tintuc'=>$tintuc,'tukhoa'=>$tukhoa]);
    }
    function getNguoidung()
    {
        $user=Auth::user();
        return view('pages.nguoidung',['nguoidung'=>$user]);

    }
    function postNguoidung(Request $request)
    {
         $this->validate($request,[
        'name'=>'required|min:3',
      
      ],[
        'name.required'=>'Bạn chưa nhập tên người dùng',
        'name.min'=>'Tên người dùng phải có ít nhất 3 ký tự',
        
      ]);
      $user= Auth::user();
      $user->name=$request->name;

      if($request->changePassword =="on")
        {
            $this->validate($request,[
        
        'password'=>'required|min:3|max:32',
        'passwordAgain'=>'required|same:password'
      ],[
        
        'password.required'=>'Bạn chưa nhập password',
        'password.min'=>'password phải có ít nhất 3 kí tự',
        'password.max'=>'password có tối đa 32 kí tự',
        'passwordAgain.required'=>'Bạn chưa nhập lại password',
        'passwordAgain.same'=>'Nhập lại mật khẩu chưa khớp',
      ]);
             $user->password= bcrypt($request->password);
        }
      $user->save();
      return redirect('nguoidung')->with('thongbao','Sửa thành công');
    }
    function getDangky()
    {
        return view('pages.dangky');

    }
    function postDangky(Request $request)
    {
        $this->validate($request,[
        'name'=>'required|min:3',
        'email'=>'required|email|unique:users,email',
        'password'=>'required|min:3|max:32',
        'passwordAgain'=>'required|same:password'
      ],[
        'name.required'=>'Bạn chưa nhập tên người dùng',
        'name.min'=>'Tên người dùng phải có ít nhất 3 ký tự',
        'email.required'=>'Bạn chưa nhập email',
        'email.email'=>'Bạn chưa nhập đúng định dạng email',
        'email.unique'=>'Email trùng',
        'password.required'=>'Bạn chưa nhập password',
        'password.min'=>'password phải có ít nhất 3 kí tự',
        'password.max'=>'password có tối đa 32 kí tự',
        'passwordAgain.required'=>'Bạn chưa nhập lại password',
        'passwordAgain.same'=>'Nhập lại mật khẩu chưa khớp',
      ]);
      $user= new User;
      $user->name=$request->name;
      $user->email=$request->email;
      $user->password= bcrypt($request->password);
      $user->quyen=0;
      $user->save();
      return redirect('dangky')->with('thongbao','Đăng ký thành công');
    }
    function gioithieu()
    {
        return view('pages.gioithieu');
    }
}
