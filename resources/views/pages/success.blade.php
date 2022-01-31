@extends('layouts.success')
@section('title', 'Success')

@section('content')
    <!-- main -->
    <main>
        <section class="section-success d-flex align-items-center">
            <div class="col text-center">
                <img src="{{ asset('frontend/images/icon_mail.png') }}" alt="">
                <h1>Yay! Success</h1>
                <p>
                    We've sent you email for trip <br>
                    instruction, please read it as well
                </p>
                <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-5">Home Page</a>
            </div>
        </section>
    </main>
@endsection
