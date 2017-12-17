 @extends('layout.index')
 @section('content')
 <div class="container">

    	<!-- slider -->
    @include('layout.tinchitiet')
        <!-- end slide -->

        <div class="space20"></div>


        <div class="row main-left">
          @include('layout.menu')

            <div class="col-md-9">
	            <div class="panel panel-default">            
	            	<div class="panel-heading" style="background-color:#27AE60; color:white;" >
	            		<h2 style="margin-top:0px; margin-bottom:0px;">Laravel Tin Tức</h2>
	            	</div>

	            	<div class="panel-body">
	            		<!-- item -->
	            		@foreach($theloai as $tl)
	            			@if(count($tl->loaitin)>0)
						    <div class="row-item row">
			                	<h3>
			                		<a href="category.html">{{$tl->ten}}</a> | 
			                		@foreach($tl->loaitin as $lt)	
			                		<small><a href="loaitin/{{$lt->id}}/{{$lt->tenkhongdau}}.html"><i>{{$lt->tenloaitin}}</i></a>/</small>
			                		@endforeach
			                	</h3>
			                	<?php 
			                	$data=$tl->tintuc->where('noibat',1)->sortByDesc('create_at')->take(4);
			                	$tin1=$data->shift();
			                	 ?>
			                	<div class="col-md-8 border-right">
			                		<div class="col-md-5">
				                        <a href="tintuc/{{$tin1['id']}}/{{$tin1['tieudekhongdau']}}.html">
				                            <img class="img-responsive" width="200px" src="upload/tintuc/{{$tin1['hinh']}}" alt="">
				                        </a>
				                    </div>

				                    <div class="col-md-7">
				                        <h3>{{$tin1['tieude']}}</h3>
				                        <p>{{$tin1['tomtat']}}</p>
				                        <a class="btn btn-primary" href="tintuc/{{$tin1['id']}}/{{$tin1['tieudekhongdau']}}.html">Xem thêm<span class="glyphicon glyphicon-chevron-right"></span></a>
									</div>

			                	</div>
			                    

								<div class="col-md-4">
									@foreach($data->all() as $tintuc)
									<a href="tintuc/{{$tintuc['id']}}/{{$tintuc['tieudekhongdau']}}.html">
										<h4>
											<span class="glyphicon glyphicon-list-alt"></span>
											{{$tintuc['tieude']}}
										</h4>
									</a>

									@endforeach
								</div>
								
								<div class="break"></div>
			                </div>
		              		@endif
					    @endforeach
		                <!-- end item -->

					</div>
	            </div>
        	</div>
        </div>
        <!-- /.row -->
    </div>
   @endsection