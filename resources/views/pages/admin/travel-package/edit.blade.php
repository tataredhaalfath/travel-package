@extends('layouts.admin')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Edit Packet Travel {{ $item->title }}</h1>

        </div>


        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <div class="card shadow">
            <div class="card-body">
                <form action="{{ route('travel-package.update', $item->id) }}" method="POST">
                    @csrf
                    @method('put')

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Title"
                            value="{{ $item->title }}">
                    </div>
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" class="form-control" id="location" name="location" placeholder="Location"
                            value="{{ $item->location }}">
                    </div>
                    <div class="form-group">
                        <label for="about">About</label>
                        <textarea name="about" id="about" class="d-block w-100 form-control" cols="30"
                            rows="10">{{ $item->about }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="featured_event">Featured Event</label>
                        <input type="text" class="form-control" id="featured_event" name="featured_event"
                            placeholder="Featured Event" value="{{ $item->featured_event }}">
                    </div>
                    <div class="form-group">
                        <label for="languages">Languages</label>
                        <input type="text" class="form-control" id="languages" name="languages" placeholder="Languages"
                            value="{{ $item->languages }}">
                    </div>
                    <div class="form-group">
                        <label for="foods">Foods</label>
                        <input type="text" class="form-control" id="foods" name="foods" placeholder="Foods"
                            value="{{ $item->foods }}">
                    </div>
                    <div class="form-group">
                        <label for="departur_date">Departur Date</label>
                        <input type="date" class="form-control" id="departur_date" name="departur_date"
                            placeholder="Departur Date" value="{{ $item->departur_date }}">
                    </div>
                    <div class="form-group">
                        <label for="duration">Duration</label>
                        <input type="text" class="form-control" id="duration" name="duration" placeholder="Duration"
                            value="{{ $item->duration }}">
                    </div>
                    <div class="form-group">
                        <label for="type">Type</label>
                        <input type="text" class="form-control" id="type" name="type" placeholder="Type"
                            value="{{ $item->type }}">
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" id="price" name="price" placeholder="Price"
                            value="{{ $item->price }}">
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Ubah</button>
                </form>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection
