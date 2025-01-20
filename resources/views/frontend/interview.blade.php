@include('frontend.header')
<div class="container-fluid faq py-5">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-lg-12 wow" >
                <div class="pb-5">
                    <h4 class="text-primary">FAQs</h4>
                    <h1 class="display-4">Get the Answers to Common Questions</h1>
                </div>
                <div class="accordion bg-light rounded p-4" id="accordionExample">
                    @foreach($data as $key => $post)
                    <div class="accordion-item border-0 mb-4">
                        <h2 class="accordion-header" id="heading_<?= $key ?>">
                            <button class="accordion-button text-dark fs-5 fw-bold rounded-top" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collapse_<?= $key ?>" aria-expanded="true"
                                aria-controls="collapseT_<?= $key ?>">
                                <?php  echo ($key+1).') '.$post->title; ?>
                            </button>
                        </h2>
                        <div id="collapse_<?= $key ?>" class="accordion-collapse collapse" aria-labelledby="heading_<?= $key ?>"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body my-2">
                                <?= $post->content ?>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <!-- <div class="accordion-item border-0 mb-4">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                                aria-controls="collapseTwo">
                                What industries do you specialize in?
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body my-2">
                                <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente
                                    quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit,
                                    delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi
                                    architecto eos saepe incidunt dignissimos rerum.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item border-0 mb-4">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false"
                                aria-controls="collapseThree">
                                Can you guarantee for growth?
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body my-2">
                                <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente
                                    quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit,
                                    delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi
                                    architecto eos saepe incidunt dignissimos rerum.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item border-0 mb-0">
                        <h2 class="accordion-header" id="headingFour">
                            <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false"
                                aria-controls="collapseFour">
                                What makes your business plans so special?
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body my-2">
                                <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente
                                    quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit,
                                    delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi
                                    architecto eos saepe incidunt dignissimos rerum.</p>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
@include('frontend.footer')