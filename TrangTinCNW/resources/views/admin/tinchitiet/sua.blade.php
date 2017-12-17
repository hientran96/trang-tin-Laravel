 @extends('admin.layout.index')
 @section('content')
 <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin chi tiết
                            <small>{{$tinchitiet->ten}}</small>
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

                        <form action="admin/tinchitiet/sua/{{$tinchitiet->id}}" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                         
                            <div class="form-group">
                                <label>Tên</label>
                                <input class="form-control" name="ten" placeholder="Nhập tên" value="{{$tinchitiet->ten}}" />
                            </div>
                        
                              <div class="form-group">
                                  <label>Hình ảnh</label>
                                  <p>
                                      <img width="400px" src="upload/tinchitiet/{{$tinchitiet->hinh}}">
                                  </p>
                                  <input type="file" name="hinh" class="form-control"/>
                            </div>
                              <div class="form-group">
                                <label>Nội dung</label>
                                <textarea name="noidung" id="demo" class="form-control ckeditor" rows="3">
                                    {{$tinchitiet->noidung}}
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label>Link</label>
                                <input class="form-control" name="link" placeholder="Nhập link" value="{{$tinchitiet->link}}" />
                            </div>
                        
                          
                           
                            <button type="submit" class="btn btn-default">Sửa</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection