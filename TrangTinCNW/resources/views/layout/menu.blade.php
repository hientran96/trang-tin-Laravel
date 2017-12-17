  <div class="col-md-3 " >
    <ul class="list-group" id="menu" >
        <li href="#" class="list-group-item menu1 active" style="background-color: #27AE60;">
        	Menu
        </li>
		@foreach($theloai as $tl)
		@if(count($tl->loaitin)>0)
        <li href="#" class="list-group-item menu1">
        	{{$tl->ten}}
        </li>
        <ul>
        	@foreach($tl->loaitin as $lt)
    		<li class="list-group-item">
    			<a href="loaitin/{{$lt->id}}/{{$lt->tenkhongdau}}.html">{{$lt->tenloaitin}}</a>
    		</li>
    		
    		@endforeach
        </ul>
		@endif
       @endforeach
    </ul>
</div>