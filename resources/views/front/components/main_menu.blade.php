@section('main_menu')
    <!--TOP SECTION-->
    <div class="row">
        <div class="logo">
        <title>Left-aligned Image</title>
    <style>
        /* CSS for the image */
        .left-aligned-img {
            display: inline-block; /* Set display to inline-block */
            align: left; /* Align the content to the left */
            border-radius: 10px;
        }
    </style>
         <body>
    <a href="{{ url('/') }}">
        <img src="{{ asset("front/images/logo.png") }}" alt="" height="90px" width="90px" class="left-aligned-img"/>
    </a>
</body>
            
            <!-- <title>Maximum Width Text</title> -->
            <!-- <div class="column"> -->
            
            <title>Links in Columns</title>
    <style>
        /* CSS for the columns */
        .link-column {
            display: inline-block; /* Set display to inline-block */
            vertical-align: middle; /* Align the columns to the top */
        }
    </style>

<div class="link-column">

        <a href="{{ url('/') }}" rel="home" style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 5px;letter-spacing: 1px; display: block; font-weight: bold; font-size: 25px;"> HOTEL KUAKATA INN </a>
        <a href="{{ url('/') }}" rel="home" style="color: white;font-family: Times New Roman , Sans-serif; padding-left: 5px;letter-spacing: 1px; display: block; font-weight: bold; font-size: 17px;"> INTERNATIONAL LIMITED</a>
    </div>

            <!-- <a href="{{ url('/') }}" rel="home" style="color: white; display: inline-block; font-weight: bold;font-size:15px">Hotel Kuakata Inn</a> 
            <a href="{{ url('/') }}" rel="home" style="color: white; display: inline-block; font-weight: bold;font-size:15px">Hotel Kuakata Inn</a>  -->
            <!-- <a href="{{ url('/') }}" rel="home" style="color: black; font-weight: bold;font-size:15px">Internation Limited</a>  -->
            <!-- </div> -->
        </div>
        <div class="menu-bar">
            <ul>
                <!-- <p class ="site-title"> -->
                <!-- <a href="{{ url('/') }}" rel="home">Hotel Kuakata Inn</a>  -->
                <!-- <p style="text-align:left;font-size:200%; padding-right: 500px;">Hotel Kuakata Inn.</p>   -->
                <li><a href="{{ url('/') }}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">HOME</a>
                </li>
                <li><a href="{{ url('/room_type') }}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">ROOMS</a>
                </li>

                </li>
                <li><a href="{{ url('/food')}}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">RESTAURANT</a>
                </li>

                <li><a href="{{ url('/event')}}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">CONFERENCE</a>

                @if(count(\App\Model\Page::where('title', 'About')->where('status', true)->get()) > 0)
                <li><a href="{{ url('/about')}}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">TOUR-PLACE</a>
                </li>

                <li><a href="{{ url('/about')}}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">GALLERY</a>
                </li>

                @endif
                <li><a href="{{ url('/contact')}}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">CONTACT US</a>

                <li><a href="{{ url('/room_type') }}"style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 1px;letter-spacing: 0px; display: block; font-weight: 400; font-size: 14px;">BOOK</a>
                </li>

                <li><a class='dropdown-button'  href='#' data-activates='dropdown1' style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 5px;letter-spacing: 1px; display: block; font-weight: 400; font-size: 14px;">
                 MY ACCOUNT <i
                                    class="fa fa-angle-down"></i></a>
                </li> 

                <style>
        /* CSS for the dropdown icon */
        .dropdown-icon {
            position: relative;
            display: inline-block;
            width: 15px;
            height: 20px;
            color:white;
        }
        .dropdown-icon::before {
            content: '';
            position: absolute;
            top: 80%;
            left: 0%;
            transform: translate(-50%, -50%) rotate(180deg);
            width: 0;
            height: 0;
            color:white;
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            border-bottom: 6px solid white;
        }
    </style>
                
                <!-- <li><a class='dropdown-button'  href='#' data-activates='dropdown1' style="color: white;    font-family: Times New Roman , Sans-serif; padding-left: 5px;letter-spacing: 1px; display: block; font-weight: 400; font-size: 15px;">
                 MY ACCOUNT <i
                                    class="fa fa-angle-down"></i></a>
                </li> -->

                <div class="dropdown-icon"></div>

                <title>Add to Cart Icon</title>
                <style>
        /* CSS for the icon */
        .icon-white {
            color: white; /* Set color to white */
            /* padding-bottom: 105px;  */
            /* padding-left: 10px; Add padding to the left */
        }
    </style>
<a href="{{ url('/') }}" rel="cart">
    <i class="material-icons icon-white" style="padding-bottom: 15px; padding-left: 10px;">shopping_cart</i>
</a>

                @if (Auth::guest())
                    <li><a href="{{ route('register') }}">Register</a>
                    </li>
                    <li><a href="{{ route('login') }}">Login</a>
                    </li>
                @endif
            </ul>
        </div>
    </div>



    <div class="all-drop-down">
        <!-- Dropdown Structure -->
        <ul id='drop-home' class='dropdown-content drop-con-man'>
            <li><a href="main.html">Home - Default</a>
            </li>
            <li><a href="index-1.html">Home - Reservation</a>
            </li>
        </ul>
    </div>
    <!--TOP SECTION-->
@show