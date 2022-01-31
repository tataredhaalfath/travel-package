@extends('layouts.app')
@section('title', 'TRAVELAJA')
@section('content')
    <!-- Header -->
    <header class="text-center">
        <h1>Explore The Beautiful World <br> As Easy One Click</h1>
        <p class="mt-3">You will see beautiful <br> moment you never see before</p>
        <a href="#popular" class="btn btn-get-started px-4 mt-4">Get Started</a>
    </header>

    <!-- Main -->
    <main>
        <div class="container">
            <!-- statistic -->
            <section class="section-stats row justify-content-center" id="stats">
                <div class="col-3 col-md-2 stats-detail">
                    <h2>20K</h2>
                    <p>Members</p>
                </div>
                <div class="col-3 col-md-2 stats-detail">
                    <h2>12K</h2>
                    <p>Countries</p>
                </div>
                <div class="col-3 col-md-2 stats-detail">
                    <h2>3K</h2>
                    <p>Hotel</p>
                </div>
                <div class="col-3 col-md-2 stats-detail">
                    <h2>72</h2>
                    <p>Pertners</p>
                </div>
            </section>
        </div>

        <!-- wisata popular -->
        <section class="section-popular" id="popular">
            <div class="container">
                <div class="row">
                    <div class="col text-center section-popular-heading">
                        <h2>Wisata Popular</h2>
                        <p>Something that you neve try
                            <br>
                            before in this world
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Popular Content -->
        <section class="section-popular-content" id="popular-content">
            <div class="container">
                <div class="section-popular-travel row justify-content-center">
                    @foreach ($items as $item)
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="card-travel text-center d-flex flex-column"
                                style="background-image: url('{{ $item->galleries->count() ? Storage::url($item->galleries->first()->image) : '' }}');">
                                <div class="travel-country">{{ $item->location }}</div>
                                <div class="travel-location">{{ $item->title, $item->location }}</div>
                                <div class="travel-button mt-auto">
                                    <a href="{{ route('detail', $item->slug) }}" class="btn btn-travel-details px-4">
                                        View Details
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach


                    {{-- <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="card-travel text-center d-flex flex-column"
                            style="background-image: url('frontend/images/popular\ 2.png');">
                            <div class="travel-country">Indonesia</div>
                            <div class="travel-location">PARI, BOGOR</div>
                            <div class="travel-button mt-auto">
                                <a href="{{ route('detail') }}" class="btn btn-travel-details px-4">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="card-travel text-center d-flex flex-column"
                            style="background-image: url('frontend/images/popular\ 3.png');">
                            <div class="travel-country">Indonesia</div>
                            <div class="travel-location">PRAMBANAN, SLEMAN</div>
                            <div class="travel-button mt-auto">
                                <a href="{{ route('detail') }}" class="btn btn-travel-details px-4">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="card-travel text-center d-flex flex-column"
                            style="background-image: url('frontend/images/popular\ 4.png');">
                            <div class="travel-country">Indonesia</div>
                            <div class="travel-location">BOROBUDUR, MAGELANG </div>
                            <div class="travel-button mt-auto">
                                <a href="{{ route('detail') }}" class="btn btn-travel-details px-4">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div> --}}

                </div>
            </div>
        </section>

        <!-- section network -->
        <section class="section-networks">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h2>Our Network</h2>
                        <p>Companies are trusted us
                            <br>
                            more than just a trip
                        </p>
                    </div>
                    <div class="col-md-8 text-center">
                        <img src="frontend/images/Logo_partner.png" class="img-partner" alt="logo partner">
                    </div>
                </div>
            </div>
        </section>

        <!-- Section Testimonial-->
        <section class="section-testimonial-heading" id="testimonialHeading">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <h2>They Are Loving Us</h2>
                        <p>Moments were giving them <br>
                            the best experience</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonial Content -->
        <section class="section-testimonial-content" id="testimonialContent">
            <div class="container">
                <div class="section-popular-travel row justify-content-center">
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial 1.png" alt="user" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Angga Risky</h3>
                                <p class="testimonial">
                                    "it wa glorious and i could not stop to say wohoo for svery single moment Dankeee"
                                </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Ubud, Bali, Indonesia
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial 2.png" alt="user" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Kim Jin Woo</h3>
                                <p class="testimonial">
                                    "nice trip, it's unforgettable moment for me when i trip in Indonesian" </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Borobudur, Magelang, Indonesia
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial 3.png" alt="user" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Hanna Prasasti</h3>
                                <p class="testimonial">
                                    "it's a beautiful moment when i am camping in the woderfull Island in the Kariwum
                                    Jawa Island" </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Karimun Jawa, Jepara, Indonesia
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 text-center">
                        <a href="#" class="btn btn-help px-4 mt-4 mx-1">I Need Help</a>
                        <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">Get Started</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection
