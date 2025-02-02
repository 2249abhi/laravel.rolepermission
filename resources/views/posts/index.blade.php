@extends('layouts.app')


@section('content')
<div class="container-fluid dashboard-content">

    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Posts</h2>
                        </div>
                        <div class="col-md-6 text-end">
                            <a class="btn btn-success" href="{{ route('posts.create') }}">Create New Post</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <form action="{{ route('posts.index') }}" method="GET">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Category Name:</label>
                                            <select name="category" class="form-control">
                                                <option value="">--Select Category--</option>
                                                @foreach($categories as $category)
                                                    <option value="{{ $category->id }}" {{ request('category') == $category->id ? 'selected' : '' }}>
                                                        {{ $category->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Name:</label>
                                            <input type="text" name="title" class="form-control" placeholder="Search by Name..." value="{{ request('title') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Slug:</label>
                                            <input type="text" name="slug" class="form-control" placeholder="Search by slug..." value="{{ request('slug') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-3" style="margin-top:20px;">
                                        <button type="submit" class="btn btn-primary me-2">Search</button>
                                        @if(request('title') || request('category') || request('slug'))
                                            <a href="{{ route('posts.index') }}" class="btn btn-secondary">Clear</a>
                                        @endif
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <p>{{ $message }}</p>
                    </div>
                    @endif

                    <table class="table table-bordered">
                        <tr>
                            <th>No</th>
                            <th>Category Name</th>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Created</th>
                            <th width="280px">Action</th>
                        </tr>
                        @foreach ($data as $key => $post)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td><label class="badge badge-success">{{ $post->category->name }}</label></td>
                            <td>{{ $post->title }}</td>
                            <td>{{ $post->slug }}</td>
                            <td>{{ $post->created_at }}</td>
                            <td>
                                <a class="btn btn-info" href="{{ route('posts.show',$post->id) }}">Show</a>
                                <a class="btn btn-primary" href="{{ route('posts.edit',$post->id) }}">Edit</a>
                                {!! Form::open(['method' => 'DELETE','route' => ['posts.destroy',
                                $post->id],'style'=>'display:inline'])
                                !!}
                                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
{!! $data->render() !!}
<style>
    svg:not(:root) {
        height: 12px;
    }
    nav div:first-child {
        float: left !important;
        margin-top:-50px !important;
    }
    nav div:last-child {
        float: right !important;
        margin-top:-30px !important;
    }
    
</style>
@endsection