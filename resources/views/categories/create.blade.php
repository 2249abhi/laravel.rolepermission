@extends('layouts.app')


@section('content')
<div class="container-fluid dashboard-content">
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="pull-left">
                        <h2>Create New Category</h2>
                    </div>
                    <div class="pull-right">
                        <a class="btn btn-primary" href="{{ route('categories.index') }}"> Back</a>
                    </div>
                </div>
                <div class="card-body">
                    @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <strong>Whoops!</strong> There were some problems with your input.<br><br>
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    {!! Form::open(array('route' => 'categories.store','method'=>'POST')) !!}
                    <div class="row">
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Name*:</strong>
                                {!! Form::text('name', null, array('required'=>true,'placeholder' => 'Name','class' => 'form-control'))
                                !!}
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Slug*:</strong>
                                {!! Form::text('slug', null, array('required'=>true,'placeholder' => 'Slug','class' => 'form form-control'))
                                !!}
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4"></div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Meta Title:</strong>
                                {!! Form::text('meta_title', null, array('placeholder' => 'Meta Title','class' => 'form-control'))
                                !!}
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Meta Keyword:</strong>
                                {!! Form::text('meta_keyword', null,array('placeholder' => 'Meta Keyword','class' =>
                                'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Meta Description:</strong>
                                {!! Form::text('meta_description', null, array('placeholder' => 'Meta Description','class'
                                => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>





@endsection