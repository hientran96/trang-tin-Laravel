 @extends('admin.layout.index')
 @section('content')
 <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin tức
                            <small>Thêm</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                      @if(count($errors) > 0)
                        <div class="alert alert-danger">
                            @foreach($errors->all() as $err)
                            {{$err}}<br>
                            @endforeach
                        </div>
                        @endif
                        @if(session('thongbao'))
                         <div class="alert alert-success">
                             {{session('thongbao')}}
                         </div>
                        @endif

                        <form action="admin/tintuc/them" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                            <div class="form-group">
                                <label>Thể loại</label>
                                <select class="form-control" name="TheLoai" id="TheLoai">
                                   @foreach($theloai as $tl)
                                    <option value="{{$tl->id}}">{{$tl->ten}}</option>
                                    @endforeach
                                </select>
                            </div>
                             <div class="form-group">
                                <label>Loại tin</label>
                                <select class="form-control" name="LoaiTin" id="LoaiTin">
                              @foreach($loaitin as $lt)
                                    <option value="{{$lt->id}}">{{$lt->tenloaitin}}</option>
                                    @endforeach
                                 </select>
                            </div>
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input class="form-control" name="tieude" placeholder="Nhập tiêu đề" />
                            </div>
                        
                            <div class="form-group">
                                <label>Tóm tắt</label>
                                <textarea name="tomtat" class="form-control" rows="3"></textarea>
                            </div>
                              <div class="form-group">
                                <label>Nội dung</label>
                                <textarea name="noidung" id="demo" class="form-control ckeditor" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                  <label>Hình ảnh</label>
                                  <input type="file" name="hinh" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Nổi bật</label>
                                <label class="radio-inline">
                                    <input name="noibat" value="0" checked="" type="radio">không
                                </label>
                                <label class="radio-inline">
                                    <input name="noibat" value="1" type="radio">có
                            </div>
                            <button type="submit" class="btn btn-default">Thêm</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection
@section('script')
    <script >
        $(document).ready(function(){
             $("#TheLoai").change(function()
         {
            var id_theloai=$(this).val();
            $.get("admin/ajax/loaitin/"+id_theloai,function(data){
                
               $("#LoaiTin").html(data);
            });
         });
        
    });
</script>
@endsection