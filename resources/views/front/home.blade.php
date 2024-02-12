@extends('layouts.front')

@section('content')
    <!--Check Availability SECTION-->
    <div>
        <div class="slider fullscreen">
            <ul class="slides">
                @forelse($slider_images as $image)
                <li> <img src="{{'/storage/slider/'.$image->name}}" alt="">
                    <!-- random image -->
                    <div class="caption center-align slid-cap">
                        <h5 class="light grey-text text-lighten-3">{{ $image->small_title }}</h5>
                        <h2>{{ $image->big_title }}</h2>
                        <p>{{ $image->description }}</p>
                        <a href="{{ $image->link }}" class="waves-effect waves-light">{{ $image->link_text }}</a></div>
                </li>
                    @empty
                    <li> <img src="{{ asset("front/images/slider/1.jpg") }}" alt="">
                    <!-- random image -->
                    <div class="caption center-align slid-cap">
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                        <h2>This is our big Tagline!</h2>
                        <p>Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis at.Aenean euismod sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.</p> <a href="#" class="waves-effect waves-light">Booking</a></div>
                </li>
                    @endforelse
            </ul>
        </div>
    </div>
    <!--End Check Availability SECTION-->
    <!--HOTEL ROOMS SECTION-->

    @if(count($room_types) > 0)
    <div class="hom1 hom-com pad-bot-40">
        <div class="container">
            <div class="row">
                <div class="hom1-title">
                    <!-- <h2>WELCOME TO HOTEL KUAKATA INN</h2> -->
                    
                    
                    <p style="padding-top: 20px;">
                    <p>
    <span style="color: black; font-weight: 600; font-family: Arial;font-size: 38px;">WELCOME TO HOTEL </span>
    <span style="color: red; font-weight: 600; font-family: Arial;font-size: 38px;">KUAKATA INN</span>
</p>
</p>                    
                    
                    <title>Welcome Text</title>

                    <style>
        /* CSS for the welcome text */
        .welcome-text {
            color: #000000; /* Set text color */
            font-size: 24px; /* Set font size */
            font-weight: normal; /* Set font weight */
            text-align: justify;
        }
    </style>
                    
                    <p class="welcome-text">Welcome to the world-class eco-friendly Kuakata beach and the Hotel Kuakata Inn is a world-class tourist hotel. Where the peace of your busy life touches the blue waters an incomparable location Green and the longest beach of the waters and nature live together. Our modern safe and clean accommodation awaits your international quality service. We are committed to providing hospitality through improved delivery of international quality fresh food at affordable prices.</p>

                    <!-- <style>
        h2 {
            color: #ff4500; /* Set text color to orange */
            font-family: Arial, sans-serif; /* Set font family */
            text-align: center; /* Center align text */
            text-transform: uppercase; /* Convert text to uppercase */
            /* Add more text styles as needed */
        }
    </style> -->

    <!-- <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div> -->
    
    <title>Fixed Position Button</title>
    <style>
        /* CSS for the fixed position button */
        .fixed-button {
            position: fixed; /* Set position to fixed */
            top: 50%; /* Position from the top */
            right: -55px; /*Distance from the right;*/
            transform: rotate(-90deg); /* Center vertically */
            background-color: #800080; /* Set background color */
            color: white; /* Set text color */
            padding: 10px 30px; /*Add padding*/
            border: none; /* Remove border */
            border-radius: 5px; /* Add border radius */
            cursor: pointer; /* Change cursor to pointer */
            /* padding-left: 100px; */
        }

        /* CSS for the hotline text */
        .hotline {
            color: #f4364f; /* Set color for the hotline text */
            font-weight: 700;
            font-size : 17px;
            
        }
        /* CSS for the phone number */
        .phone-number {
            color: white; /* Set color for the phone number */
        }
    </style>
    <body>
    <!-- <h1>Scroll down to see the fixed position button</h1> -->
    
    <!-- Fixed position button -->

    <button class="fixed-button">
        <span class="hotline">HOT LINE</span><br>
        <span class="phone-number">+8801750008177</span>
    </button>

</body>
                    <h1>Our Hotel Rooms</h1>
                    <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div>
                    <p style="color: black;">Every hotel stay provides you with great experience and hospitality.</p>

                </div>
            </div>
            <div class="row">
                <div class="to-ho-hotel">
                    @foreach($room_types as $room_type)
                    <!-- HOTEL GRID -->
                    <div class="col-md-4">
                        <div class="to-ho-hotel-con">
                            <div class="to-ho-hotel-con-1">
                                <div class="hom-hot-av-tic"> Available Rooms: {{ count($room_type->rooms) }} </div> <img src="{{'/storage/room_types/'.$room_type->images->first()->name}}" alt=""> </div>
                            <div class="to-ho-hotel-con-23">
                                <div class="to-ho-hotel-con-2"> <a href="{{url('/room_type/'.$room_type->id)}}"><h4>{{ $room_type->name }}</h4></a> </div>
                                <div class="to-ho-hotel-con-3">
                                    <ul>
                                        <li>
                                            <div class="dir-rat-star ho-hot-rat-star"> Rating: <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i> </div>
                                        </li>
                                        <li>
                                            @if($room_type->cost_per_day !== $room_type->discountedPrice)
                                            <span class="ho-hot-pri-dis">{{ config('app.currency').$room_type->cost_per_day }}</span>
                                            @endif
                                            <span class="ho-hot-pri">{{ config('app.currency').$room_type->discountedPrice}}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    @endif
    <!--END HOTEL ROOMS-->

    @if(count($events) > 0)
    <div class="blog hom-com pad-bot-0">
        <div class="container">
            <div class="row">
                <div class="hom1-title">
                <!-- <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div> -->
                    <h2>Facilities</h2>
                    <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div>
                    <p style="color: black;">Join events and conferences organized in our hotel.</p>
                </div>
            </div>
            <div class="row">
                <div>
                    @foreach($events as $event)
                    <div class="col-md-3 n2-event">
                        <!--event IMAGE-->
                        <div class="n21-event hovereffect"> <img src="{{'/storage/events/'.$event->image}}" alt="">
                            <div class="overlay"> <a href="{{ url('/event/') }}"><span class="ev-book">Book Now</span></a> </div>
                        </div>
                        <!--event DETAILS-->
                        <div class="n22-event"> <a href="{{ url('/event/') }}"><h4 style="color: black;">{{ $event->name }}</h4>
</a> <span class="event-date" style="color: black;padding-left:25px;">Date: {{ $event->date }},</span>
 <span class="event-by" style="color: black;"> Price: {{ $event->price > 0? config('app.currency').$event->price : 'Free'}}</span>
 <p style="color: black; text-align: justify;">{{ $event->description }}</p>

                        </div>
                    </div>
                        @endforeach
                </div>
            </div>
        </div>
    </div>
    @endif
    <div class="blog hom-com pad-bot-0">
        <div class="container">
            <div class="row">
                <div class="hom1-title">
                <h2 style="padding-top: 10px;">Photo Gallery</h2>

                    <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div>
                    <p style="color: black;">View photos of hotel rooms, food menus and events</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="inn-services head-typo typo-com mar-bot-0">
                        <ul id="filters" class="clearfix">
                            <li><span class="filter active" data-filter=".room, .facilities, .food, .event">All</span>
                            </li>
                            <li><span class="filter" data-filter=".room">Rooms</span>
                            </li>
                            <li><span class="filter" data-filter=".food">Food Menu</span>
                            </li>
                            <li><span class="filter" data-filter=".event">Events</span>
                            </li>
                        </ul>
                        <div id="portfoliolist">
                            <!-- Room Types -->
                            @foreach($room_types as $room_type)
                                <div class="portfolio room" data-cat="room">
                                    <div class="portfolio-wrapper"> <img src="{{'/storage/room_types/'.$room_type->images->last()->name}}" alt="" />
                                        <div class="label">
                                            <div class="label-text"> <a class="text-title">{{ $room_type->name }}</a></div>
                                            <div class="label-bg"></div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <!-- Event Events -->
                            @foreach($events as $event)
                                <div class="portfolio event" data-cat="event">
                                    <div class="portfolio-wrapper"> <img src="{{ '/storage/events/'.$event->image }}" alt="" />
                                        <div class="label">
                                            <div class="label-text"> <a class="text-title">{{ $event->name }}</a></div>
                                            <div class="label-bg"></div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        <!-- Food Photos -->
                            @foreach($foods as $food)
                                <div class="portfolio food" data-cat="food">
                                    <div class="portfolio-wrapper"> <img src="{{ '/storage/foods/'.$food->image }}" alt="" />
                                        <div class="label">
                                            <div class="label-text"> <a class="text-title">{{ $food->name }}</a></div>
                                            <div class="label-bg"></div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<!-- 
    <div class="hom1-title">
                <h2 style="padding-top: 30px;">Our Facilities</h2>

                    <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div>
                    <p style="text-align: justify; color: black; padding-left: 110px; padding-right: 110px; font-weight: 00;">
    The quality of service is enhanced and the employees get entertainment, excitement and joy in order to reach the goal of providing better services through sincere communication and eloquence with every person in providing better services. It is possible to ensure improved customer service by working tirelessly, working with confidence, joy, compassion, empathy and teamwork.
</p>                </div>

    

    <div class="row">
                <div>
                    @foreach($events as $event)
                    <div class="col-md-3 n2-event">
                        <!--event IMAGE-->
                        <!-- <div class="n21-event hovereffect"> <img src="{{'/storage/events/'.$event->image}}" alt="">
                            <div class="overlay"> <a href="{{ url('/event/') }}"><span class="ev-book">Book Now</span></a> </div>
                        </div> -->
                        <!--event DETAILS-->
                        <!-- <div class="n22-event"> <a href="{{ url('/event/') }}"><h4 style="color: black;">{{ $event->name }}</h4>
</a> <span class="event-date" style="color: black;padding-left:25px;">Date: {{ $event->date }},</span>
 <span class="event-by" style="color: black;"> Price: {{ $event->price > 0? config('app.currency').$event->price : 'Free'}}</span>
 <p style="color: black; text-align: justify;">{{ $event->description }}</p>

                        </div>
                    </div>
                        @endforeach
                </div>
            </div> -->
 -->



        <!-- <div class="container">
            <div class="row">
                <div class="hom1-title">
                    <h2>Read More</h2>
                    <div class="head-title">
                        <div class="hl-1"></div>
                        <div class="hl-2"></div>
                        <div class="hl-3"></div>
                    </div>
                </div>
            </div> 
            <!-- <div class="row">
                @if(count($slider_images)> 0)
                <div class="col-md-4">
                    <div class="bot-gal h-gal">
                        <h4>Photo Gallery</h4>
                        <ul>
                            @foreach($slider_images as $image)
                            <li><img class="materialboxed" data-caption="{{ $image->big_title }}" src="{{ '/storage/slider/'.$image->name }}" alt="">
                            </li>
                                @endforeach
                        </ul>
                    </div>
                </div>
                @endif
                <div class="col-md-4">
                    <div class="bot-gal h-vid">
                        <h4>Video Gallery</h4>
                        <iframe src="{{config('app.video')}}?autoplay=0&amp;showinfo=0&amp;controls=0" allowfullscreen></iframe>
                        <h5>Introductory Video</h5>
                        <p>Watch this video to learn more about our hotel facilities, luxuries and environment</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="bot-gal h-blog">
                        <h4>Latest Reviews</h4>
                        <ul>
                            @if(count($reviews) > 0)
                                @foreach($reviews as $review)
                            <li>
                                <a href="#!"> <img src="{{'/storage/avatars/'.$review->room_booking->user->avatar}}" alt="">
                                    <h5>{{ $review->room_booking->user->first_name }}@if($review->rating > 0), {{ $review->rating }} <i class="fa fa-star" aria-hidden="true"></i>@endif</h5> <span>{{ \Carbon\Carbon::parse($review->updated_at)->diffForHumans() }}</span>
                                    <p>{{ $review->review }}</p>
                                </a>
                            </li>
                           @endforeach
                                @endif
                        </ul>
                    </div>
                </div>
            </div> 
        </div> -->
    </div>
@endsection
