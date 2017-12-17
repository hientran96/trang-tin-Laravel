<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;
use App\TheLoai;
use App\LoaiTin;
use App\TinTuc;
use App\Comment;
class CommentController extends Controller
{
    //
    
    public function getXoa($id,$id_tintuc)
    {
        $comment=Comment::find($id);
        $comment->delete();
        return redirect('admin/tintuc/sua'.$id_tintuc)->with('thongbao','Bạn đã xóa comment thành công');
    }
    public function postComment($id,Request $request)
    {
    	$id_tintuc=$id;
    	$tintuc=TinTuc::find($id);
    	$comment= new Comment;
    	$comment->id_tintuc=$id_tintuc;
    	$comment->id_nguoidung=Auth::user()->id;
    	$comment->noidung=$request->noidung;
    	$comment->save();
    	return redirect("tintuc/$id/".$tintuc->tieudekhongdau.".html")->with('thongbao','Viết bình luận thành công');
    }
}
