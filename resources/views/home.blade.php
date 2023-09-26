@extends('layouts.app')

@section('content')
<div class="conatiner justify-content-center" style="margin:80px">
    <div class="row">
        <div class="col-9 ">
            <form action="{{route('create')}}" method="POST">
                @csrf
                <input type="text" name="longurl" id="" class="form-control" placeholder="Enter Url" required>
        </div>
            <div class="col-3">  
                <button type="submit"  class="btn btn-success form-control">GenerateShortUrl</button>
            </div> 
            </form>
    </div>
    <div class="row" style="margin-top:20px">
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
                <td><a href="{{route('clickcount',['id' => $datas['id'], 'longurl' => $datas['longurl']])}}" target="_blank">{{$datas['shorturl']}}</a></td>
                <td>{{$datas['clickcount']}}
                </td>
               <td> 
                {{-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Share
                  </button> --}}
                {{-- <a class="btn btn-primary" href="{{route('shareablelink',['id' => $datas['id'], 'longurl' => $datas['longurl'],'shorturl'=>$datas['shorturl']])}}">Share</a>  --}}
                </td>
              </tr>
              <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h1 class="modal-title fs-5" id="exampleModalLabel">Copy Link</h1>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div>
                       <a class="btn btn-primary" href="{{route('shareablelink',['id' => $datas['id'], 'longurl' => $datas['longurl'],'shorturl'=>$datas['shorturl']])}}" target="_blank">{{$datas['shorturl']}}</a> 
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-primary">Copy</button>
                    </div>
                  </div>
                </div>
              </div>
              @endforeach
            </tbody>
          </table>
        </div>
    </div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $
</script>
@endsection
