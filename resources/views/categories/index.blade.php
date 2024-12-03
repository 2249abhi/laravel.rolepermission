@extends('layouts.app')


@section('content')
<div class="container-fluid dashboard-content">

    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row col-md-12">
                        <div class="pull-left">
                            <h2>Categories</h2>
                        </div>
                        <div class="pull-right">
                            <a class="btn btn-success" href="{{ route('categories.create') }}"> Create New Category</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <p>{{ $message }}</p>
                    </div>
                    @endif

                    <table class="table table-bordered">
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Title</th>
                            <th>Keywords</th>
                            <th>Description</th>
                            <th width="280px">Action</th>
                        </tr>
                        @foreach ($data as $key => $category)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td>{{ $category->name }}</td>
                            <td>{{ $category->meta_title }}</td>
                            <td>{{ $category->meta_keyword }}</td>
                            <td>{{ $category->meta_description }}</td>

                            <td>
                                <form action="{{ route('categories.destroy',$category->id) }}" method="POST">
                                    <a class="btn btn-info" href="{{ route('categories.show',$category->id) }}">Show</a>
                                    @can('category-edit')
                                    <a class="btn btn-primary" href="{{ route('categories.edit',$category->id) }}">Edit</a>
                                    @endcan


                                    @csrf
                                    @method('DELETE')
                                    @can('category-delete')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    @endcan
                                </form>
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
@endsection