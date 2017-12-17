<nav class=" navbar-fixed-top navbar-light bg-light" role="navigation" style="background-color: #27AE60; ">
        <div class="container" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Kênh96</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="trangchu">Kênh 96</a>
                <title>Kênh 96</title>
    <base href="{{asset('')}}">
    <link rel="shortcut icon" type="image/x-icon" href="public/upload/title.png" />
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  >
                <ul class="nav navbar-nav">
                    <li>
                        <a href="gioithieu">Giới thiệu</a>
                    </li>
                    <li>
                        <a href="lienhe">Liên hệ</a>
                    </li>

                </ul>
               
                <form action="timkiem" method="post" class="navbar-form navbar-right" role="search">
                    <input type="hidden" name="_token" value="{{csrf_token()}}"/>
			        <div class="form-group">
			          <input type="text" name="tukhoa" class="form-control" placeholder="Tìm Kiếm">
			        </div>
			        <button type="submit" name="" class="btn btn-default">Tìm</button>
			    </form>

 <ul class="nav navbar-nav pull-right">
                    @if(Auth::guest())
                     <li>
                            <a href="dangnhap">Đăng nhập</a>
                        </li>
                        <li>
                            <a href="dangky">Đăng ký</a>
                        </li>
                       
                    @else
                            @if(Auth::check() && Auth::user()->quyen==1) 
                                <li><a href="admin/theloai/danhsach">Quản lý trang</a></li>  
                            @endif
                        <li>
                            <a href="nguoidung">
                                <span class ="glyphicon glyphicon-user"></span>
                                {{Auth::user()->name}}
                            </a>
                        </li>

                        <li>
                            <a href="dangxuat">Đăng xuất</a>
                        </li>
                    @endif
                </ul>
            </div>


            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>