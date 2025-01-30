@include('frontend.header')

<!-- Modal Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content rounded-0">
            <div class="modal-header">
                <h4 class="modal-title mb-0" id="exampleModalLabel">Search by keyword</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex align-items-center">
                <div class="input-group w-75 mx-auto d-flex">
                    <input type="search" class="form-control p-3" placeholder="keywords"
                        aria-describedby="search-icon-1">
                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal Search End -->

<!-- Carousel Start -->
@include('frontend.slider')
<!-- Carousel End -->


<!-- About Start -->
@include('frontend.aboutus')
<!-- About End -->


<!-- Services Start -->
<!-- @include('frontend.service') -->
<!-- Services End -->


<!-- Project Start -->
<!-- @include('frontend.project') -->
<!-- Project End -->


<!-- Blog Start -->

<!-- @include('frontend.blog') -->
<!-- Blog End -->


<!-- Team Start -->
<!-- @include('frontend.team') -->
<!-- Team End -->


<!-- Testimonial Start -->
<!-- @include('frontend.feedback') -->
<!-- Testimonial End -->


<!-- FAQ Start -->
@include('frontend.faq')
<!-- FAQ End -->

@include('frontend.footer')