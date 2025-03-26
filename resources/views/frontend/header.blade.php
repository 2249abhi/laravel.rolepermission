<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>GetInfoPlus - Ultimate Resource for PHP, Laravel, MySQL, CakePHP & JavaScript Interview Questions</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&family=Roboto:wght@400;500;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link href="{{ asset('frontend/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('frontend/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
    <link href="{{ asset('frontend/lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">



    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('frontend/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('frontend/css/style.css') }}" rel="stylesheet">
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-WX8DYJSFEG"></script>
    <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-WX8DYJSFEG');
    </script>
</head>

<body>

    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Topbar Start -->
    <div class="container-fluid topbar px-0 d-none d-lg-block">
        <div class="container px-0">
            <div class="row gx-0 align-items-center" style="height: 45px;">
                <div class="col-lg-8 text-center text-lg-start mb-lg-0">
                    <div class="d-flex flex-wrap">
                        <!-- <a href="#" class="text-muted me-4"><i class="fas fa-map-marker-alt text-primary me-2"></i>Find A Location</a> -->
                        <a href="https://wa.me/919711493272" class="text-muted me-4"><i
                                class="fas fa-phone-alt text-primary me-2"></i>+919711493272</a>
                        <a href="mailto:support@getinfoplus.com" class="text-muted me-4"><i
                                class="fas fa-envelope text-primary me-2"></i>support@getinfoplus.com</a>
                        <a href="mailto:abhishekshr7@gmail.com" class="text-muted me-0"><i
                                class="fas fa-envelope text-primary me-2"></i>abhishekshr7@gmail.com</a>
                    </div>
                </div>
                <div class="col-lg-4 text-center text-lg-end">
                    <div class="d-flex align-items-center justify-content-end">
                        <a href="https://www.linkedin.com/in/abhi2249"
                            class="btn btn-primary btn-square rounded-circle nav-fill me-3"><i
                                class="fab fa-linkedin text-white"></i></a>
                        <a href="https://wa.me/919711493272"
                            class="btn btn-primary btn-square rounded-circle nav-fill me-3"><i
                                class="fab fa-whatsapp text-white"></i></a>
                        <a href="https://join.skype.com/invite/lfUnA9bHGY70"
                            class="btn btn-primary btn-square rounded-circle nav-fill me-3"><i
                                class="fab fa-skype text-white"></i></a>
                        <a href="https://github.com/2249abhi/"
                            class="btn btn-primary btn-square rounded-circle nav-fill me-0"><i
                                class="fab fa-github text-white"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar & Hero Start -->
    <div class="container-fluid sticky-top px-0">
        <div class="position-absolute bg-dark" style="left: 0; top: 0; width: 100%; height: 100%;">
        </div>
        <div class="container px-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-white py-3 px-4">
                <a href="https://www.getinfoplus.com" class="navbar-brand p-0">
                    <h1 class="text-primary m-0"><i class="fas fa-book-open me-3"></i>Getinfoplus</h1>
                    <!-- <img src="frontend/img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="https://www.getinfoplus.com" class="nav-item nav-link active">Home</a>
                        <a href="https://www.getinfoplus.com/#about" class="nav-item nav-link">About</a>
                        <!--<a href="service.html" class="nav-item nav-link">Services</a>
                        <a href="project.html" class="nav-item nav-link">Projects</a> -->
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Interview
                                Questions</a>
                            <div class="dropdown-menu m-0">

                                <!-- <a href="blog.html" class="dropdown-item">OOPS</a> -->
                                <a href="{{ route('frontend.interview', ['categorySlug' => 'php']) }}"
                                    class="dropdown-item">Php</a>
                                <a href="{{ route('frontend.interview', ['categorySlug' => 'mysql']) }}"
                                    class="dropdown-item">Mysql</a>
                                <a href="{{ route('frontend.interview', ['categorySlug' => 'API']) }}"
                                    class="dropdown-item">API</a>
                                <a href="{{ route('frontend.interview', ['categorySlug' => 'laravel']) }}"
                                    class="dropdown-item">Laravel</a>
                                <a href="{{ route('frontend.interview', ['categorySlug' => 'javascript']) }}"
                                    class="dropdown-item">Javascript</a>
                            </div>
                        </div>
                        <a href="https://abhishek.getinfoplus.com" target="_blank" class="nav-item nav-link">Contact</a>
                    </div>
                    <div class="d-flex align-items-center flex-nowrap pt-xl-0">
                        <!-- <button class="btn btn-primary btn-md-square mx-2" data-bs-toggle="modal"
                            data-bs-target="#searchModal"><i class="fas fa-search"></i></button> -->
                        <!-- <a href="login"
                            class="btn btn-primary rounded-pill text-white py-2 px-4 ms-2 flex-wrap flex-sm-shrink-0">Login</a> -->
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar & Hero End -->