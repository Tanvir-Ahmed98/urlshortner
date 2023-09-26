@extends('layouts.app')

@section('content')
<div class="conatiner justify-content-center">
    <div class="row">
        <div class="col-9 ">
            <form action="{{route('create')}}" method="POST">
                @csrf
                <input type="text" name="longurl" id="" class="form-control">
        </div>
            <div class="col-3">  
                <button type="submit"  class="btn btn-success form-control">GenerateShortUrl</button>
            </div> 
            </form>
    </div>
    <div class="row">
        <div class="col-sm-12">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">longurl</th>
                <th scope="col">shorturl</th>
                <th scope="col">clickCount</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($data as $key=>$datas)
                
              <tr>
                <th scope="row">{{$key+1}}</th>
                <td><a href="{{$datas['longurl']}}" target="_blank">{{$datas['longurl']}}</a></td>
                <td><a href="{{route('clickcount',['id' => $datas['id'], 'longurl' => $datas['longurl']])}}" >{{$datas['shorturl']}}</a></td>
                <td id="show">{{$datas['clickcount']}}
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div>
    </div>
   
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $
</script>
@endsection
