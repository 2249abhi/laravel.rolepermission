
    <div class="col-xs-4 col-sm-4 col-md-4">
        <div class="form-group">
            <strong>Category*:</strong>
            {!! Form::select('category_id', ['' => '--Select--'] + $categories, null, ['class' => 'form-control']) !!}
        </div>
    </div>
    <div class="col-xs-10 col-sm-10 col-md-10">
        <div class="form-group">
            <strong>Name*:</strong>
            {!! Form::text('title', null, array('required'=>true,'placeholder' => 'Name','class' => 'form-control'))
            !!}
        </div>
    </div>

    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Content:</strong>
            {!! Form::textarea('content', null, ['class' => 'form-control editor', 'rows' => 5]) !!}
        </div>
    </div>