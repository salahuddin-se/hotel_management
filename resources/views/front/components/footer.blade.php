@section('footer')
    <footer class="site-footer clearfix">
        <div class="sidebar-container">
            <div class="sidebar-inner">
                <div class="widget-area clearfix">
                    <div class="widget widget_azh_widget">
                        <div>
                            <div class="container">
                                <div class="row">

                                <!-- <title>Boxed Content</title>
    <style>
        /* CSS for the boxed content */
        .foot-logo {
            border: 1px solid #ccc; /* Add border */
            padding: 20px; /* Add padding */
            border-radius: 5px; /* Add border radius */
            background-color: #FFFFFF;
            width: 220px;
            height: 340px;
        }
    </style>

<div class="col-sm-12 col-md-3 foot-logo">
        <img src="{{ asset("front/images/logo.png") }}" alt="logo">
        <p class="hasimg">Hotel Simbiosis provides cheap hotel reservation service.</p>
        <p class="hasimg">The top-rated hotel reservation services.</p>
    </div> -->

                                    <!-- <div class="col-sm-12 col-md-3 foot-logo"> <img src="{{ asset("front/images/logo.png") }}" alt="logo">
                                        <p class="hasimg">Hotel Simbiosis provides cheap hotel reservation service.</p>
                                        <p class="hasimg">The top-rated hotel reservation services.</p>
                                    </div> -->
                                    <!-- <div class="col-sm-12 col-md-3"> -->
                                        <!-- <h4>Location</h4> -->

                                        <!-- <title>Fixed Area Google Map</title> -->

<style>
/* CSS for the map container */
.map-container {
        position: relative;
        width: 100%;
        height: 500px; /* Set a default height */
        border: 1px solid #ccc; /* Add border */
        overflow: hidden; /* Hide overflowing content */
        left: 15px;
        padding-right: 50px;

    }

    /* CSS for the iframe inside map container */
    .map-container iframe {
        position: absolute;
        top: 0;
        /* left: 50; */
        width: 100%;
        height: 100%;
        border: 0;
    }
}
</style>

<div class="map-container">
<!-- Google Map iframe embedded with location -->
<iframe src="https://www.google.com/maps/embed?pb=!4v1707323783405!6m8!1m7!1sy1J3_sDAXtVsI3piekc9bg!2m2!1d21.8154770212122!2d90.1220431203729!3f297.0564092074428!4f-23.412756522905198!5f0.4000000000000002" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
                         
                                    </div>
                                    <!-- <div class="col-sm-12 col-md-3">
                                        <h4>Room Types</h4>
                                        <ul class="two-columns">
                                            @foreach(\App\Model\RoomType::where('status', true)->orderBy('updated_at','desc')->limit('8')->get() as $room_type)
                                            <li><a href="{{ url('/room_type/'.$room_type->id) }}">{{ $room_type->name }}</a>
                                            </li>
                                                @endforeach
                                        </ul>
                                    </div> -->

                                    


                                    <!-- <div class="col-sm-12 col-md-3">
                                        <h4>Address</h4>
                                        <p>{{ config('app.address', "Kathmandu") }}</p>
                                        <p> <span class="foot-phone">Phone: </span> <span class="foot-phone">{{ config('app.phone_number', '977-9866893439') }}</span> </p>
                                    </div> -->
                                <!-- </div>
                            </div>
                        </div>
                        <div class="foot-sec2">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        
                                        <!--  -->
                                    
                                    
                                <!-- </div>
                                
                            </div> --> -->
                            <!-- <div class="col-sm-12 col-md-4">
                                        <!-- <h4>Subscribe Now</h4> -->

                                        <!-- {!! Form::open(array('url' => '/subscribe')) !!}
                                        {{ Form::hidden('_method', 'POST') }}
                                        @csrf
                                            <ul class="foot-subsc">
                                                <li>
                                                    <input name="email" type="email" placeholder="Enter your email id"> </li>
                                                <li>
                                                    <input type="submit" value="submit">
                                                </li>
                                            </ul>
                                        {!! Form::close() !!} -->
                                    <!-- </div> --> -->
                                    <!-- <div class="col-sm-12 col-md-5 foot-social">
                                        <h4>Follow with us</h4>
                                        <p>Join the thousands of other people.</p>
                                        <ul>
                                            <li><a href="{{ config('app.facebook') }}"><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
                                            <li><a href="{{ config('app.google') }}"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
                                            <li><a href="{{ config('app.twitter') }}"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
                                            <li><a href="{{ config('app.instagram') }}"><i class="fa fa-instagram" aria-hidden="true"></i></a> </li>
                                        </ul>
                                    </div> -->
                        </div>
                        
                    </div>


                </div>



                <style>
    /* CSS for the .bot-gal container */
    .bot-gal {
        padding-left: 100px; /* Add left-side padding */
    }
</style>



                <div class="bot-gal h-blog">
                <style>
    .latest-reviews {
        font-size: 28px;
        color: Black;
        text-align: center;
        padding-right: 170px;
        padding-top: 15px;
        font-weight: bold;
    }
</style>

<h4 class="latest-reviews">Latest Reviews</h4>
                        <ul>
                            @if(isset($reviews) && count($reviews) > 0)
                                @foreach($reviews as $review)
                            <li>
                                <a href="#!"> <img src="{{'/storage/avatars/'.$review->room_booking->user->avatar}}" alt="">
                                    <h5>{{ $review->room_booking->user->first_name }}@if($review->rating > 0), {{ $review->rating }} <i class="fa fa-star" aria-hidden="true"></i>@endif</h5> <span style="color: black;">{{ \Carbon\Carbon::parse($review->updated_at)->diffForHumans() }}</span>
                                    <p style="color: black;">{{ $review->review }}</p>
                                </a>
                            </li>
                           @endforeach
                                @endif
                        </ul>
                    </div>
                                 





                <!-- .widget-area -->
            </div>
            <!-- .sidebar-inner -->
        </div>

        <style>
    h4 {
        padding-top: 5px;
        padding-left: 60px;
    }
</style>

<h4 style="padding-left: 100px;padding-top: 40px;">Payment Options</h4>
                                        <title>Images in Rows</title>
    <style>
        /* CSS for the image container */
        .image-row {
            display: flex; /* Use flexbox to create a row layout */
            flex-wrap: wrap; /* Allow wrapping of images */
            padding-left: 0px;

        }
        /* CSS for individual images */
        .hasimg {
            margin: 5px; /* Add some margin around each image */
        }
    </style>
                                        <div class="image-row">
        <p class="hasimg">
            <img src="{{ asset("front/images/p.png") }}" alt="payment" width="140%" height="45px">
        </p>
        <!-- <p class="hasimg">
            <img src="{{ asset("front/images/n.png") }}" alt="payment" width="60px" height="40px">
        </p>
        <p class="hasimg">
            <img src="{{ asset("front/images/r.png") }}" alt="payment" width="60px" height="40px">
        </p> -->
    </div>


       

</div>

        <!-- #quaternary -->
    </footer>
    <section class="copy">
        <div class="container">
            <p>© Copyrights BASE IT SOLUTIONS, 2024, {{ config('app.name', "The Hotel Symbiosis") }}. &nbsp;&nbsp;All rights reserved. </p>
        </div>
    </section>
    @show