<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="User_CourseDetails" %>

<!DOCTYPE html><html lang="en"><head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" type="image/png" href="../images/icon.png">
      <title>Edotree</title>
      <meta name="description" content="Edotree">
      <meta name="keywords" content="Edotree">
      <!-- Custom Css -->
      <link href="../css/style.css" rel="stylesheet">
      <!-- slick Slider -->
      <link href="../css/slick.css" rel="stylesheet">
      <link href="../css/slick-theme.css" rel="stylesheet">
      <!-- Icofont -->
      <link href="../css/icofont.min.css" rel="stylesheet">
      <link rel="stylesheet" href="../css/bootstrap-icons.css">
   </head>

   <body class="bg-light">
  <form id="form1" runat="server">
          <!-- navbar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm p-0 main-header-nav" id="nav-bar">
         <div class="container">
            <a href="index.html" class="brand d-flex align-items-center mb-0 text-decoration-none me-4 fw-bold h4 text-white">
            <img src="images/logo.png" alt="" class="img-fluid d-inline-block align-text-center me-2 rounded-pill border shadow">
            Edotree
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mx-auto gap-2 mb-2 mb-lg-0">
                  <li class="nav-item mx-2">
                     <a class="nav-link px-0 py-4 active" href="Default.aspx">Home</a>
                  </li>
                  <li class="nav-item mx-2">
                     <a class="nav-link px-0 py-4" href="about.html">About</a>
                  </li>
                  <li class="nav-item mx-2 dropdown">
                     <a class="nav-link dropdown-toggle px-0 py-4" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     Courses
                     </a>
                     <ul class="dropdown-menu m-0 border-0 shadow-sm p-2">
                        <li><a class="dropdown-item px-3 py-2 rounded" href="courses.html">All Courses</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="courses-detail.html">Courses Detail</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="successful.html">Order Successful</a></li>
                     </ul>
                  </li>
                  <li class="nav-item mx-2 dropdown">
                     <a class="nav-link dropdown-toggle px-0 py-4" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     Instructor
                     </a>
                     <ul class="dropdown-menu m-0 border-0 shadow-sm p-2">
                        <li><a class="dropdown-item px-3 py-2 rounded" href="dashboard.html">Profile</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-earnings.html">Earnings</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-my-courses.html">My Courses</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-orders.html">Orders</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-payouts.html">Payouts</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-reviews.html">Reviews</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="instructor-students.html">Students</a></li>
                     </ul>
                  </li>
                  <li class="nav-item mx-2 dropdown">
                     <a class="nav-link dropdown-toggle px-0 py-4" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     Student
                     </a>
                     <ul class="dropdown-menu m-0 border-0 shadow-sm p-2">
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-billing-info.html">Billing Info</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-delete-profile.html">Delete Profile</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-edit-profile.html">Edit Profile</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-invoice.html">Invoice</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-linked-accounts.html">Linked Accounts</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-notifications.html">Notifications</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-payment.html">Payment</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-profile-privacy.html">Profile Privacy</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-security.html">Security</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-social-profiles.html">Social Profiles</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="student-subscriptions.html">Subscriptions</a></li>
                     </ul>
                  </li>
                  <li class="nav-item mx-2 dropdown">
                     <a class="nav-link dropdown-toggle px-0 py-4" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     Extra Pages
                     </a>
                     <ul class="dropdown-menu m-0 border-0 shadow-sm p-2">
                        <li><a class="dropdown-item px-3 py-2 rounded" href="signin.html">Login</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="signup.html">Signup</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="forgot.html">Forgot</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="faq.html">FAQ</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="careers.html">Careers</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="testimonials.html">Testimonials</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="terms-and-conditions.html">Terms & Conditions</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="privacy-policy.html">Privacy Policy</a></li>
                        <li><a class="dropdown-item px-3 py-2 rounded" href="404.html">Not Found 404</a></li>
                     </ul>
                  </li>
                  <li class="nav-item mx-2">
                     <a class="nav-link px-0 py-4" href="contact.html">Contact</a>
                  </li>
               </ul>
               <div class="d-flex gap-1 align-items-center main-header-nav-right">
                  <a href="Logout.aspx" class="btn text-decoration-none text-white rounded-pill border-0">Log out</a>
               </div>
            </div>
         </div>
      </nav>
     <asp:repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
      <ItemTemplate>
           <!-- Content -->
      <hr class="m-0">
      <div class="py-5">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 col-md-12">
                  <div>
                     <h1 class="text-black fw-bold"><%# Eval("coursename") %></h1>
                  </div>
                  <small class="bg-light pt-3 gap-2 d-block d-md-flex">
                     <div class="gap-1">
                        <i class="bi bi-megaphone-fill text-danger"></i>
                        <span class="text-danger">ENGLISH</span></div>
                  </small>
                   <div class="pt-5">
                     <!-- tabs -->
                     <div class="tab-content" id="pills-tabContent">
                        <!-- information -->
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                           <div class="row">
                              <div class="col-lg-12 col-md-12">
                                 <div class="gap-2">
                                    <div class="col mb-5">
                                       <div class="card border-0 shadow-sm overflow-hidden rounded-3">
                                           <iframe width="738" height="350" src="<%# Eval("videolink") %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                          <div class="card-body p-3">
                                             <div class="float-end gap-3 d-flex">
                                                <div class="gap-2">
                                                   <a class="text-muted" href="#">
                                                   <i class="bi bi-share me-1"></i>
                                                   <span>Share</span>
                                                   </a>
                                                </div>
                                                <div class="gap-2">
                                                   <a class="text-muted" href="#">
                                                   <i class="bi bi-plus-lg me-1"></i>
                                                   <span>Add to a list</span>
                                                   </a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="mb-4">
                                       <h5 class="mb-4 text-dark">Learn tricks to <%# Eval("coursename") %></h5>
                                       <p><%# Eval("fulldesc") %>
                                       </p>
                                    </div>
                                    &nbsp;<!-- Contents --><h3 id="cd" class="pt-4 mb-4 text-dark">Contents</h3>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C1
                                             </div>
                                             <span class="small text-dark">Introduction</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span>Presentation</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Great Instagrammers</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C2
                                             </div>
                                             <span class="small text-dark">Before the photo</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">materials</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Achieve the best quality</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Composition</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C3
                                             </div>
                                             <span class="small text-dark">The shot</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">The brand</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Create an environment</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Compose a Flatlay</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Interior photography</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Creative ideas</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C4
                                             </div>
                                             <span class="small text-dark">Editing a photo</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Editing photos with Snapseed</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Editing photos with VSCO</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Editing photos with Instagram</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">How to get on Instagram and schedule your posts</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C5
                                             </div>
                                             <span class="small text-dark">Instagram Stories</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Make the photos</span>
                                          </div>
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Use the Instagram Stories tools</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-5">
                                       <div class="col-4">
                                          <div class="d-flex align-items-center">
                                             <div class="w-40 bg-white rounded-circle p-2 shadow-sm me-3">
                                                C6
                                             </div>
                                             <span class="small text-dark">Final Project</span>
                                          </div>
                                       </div>
                                       <div class="col-8">
                                          <div class="my-2">
                                             <i class="bi bi-camera-video"></i>
                                             <span class="small">Professional photography for Instagram</span>
                                          </div>
                                       </div>
                                    </div>
                                    <hr class="m-0">
                                    <div class="m-0">
                                       <h5 class="pt-5 mb-4 text-black">Frequently Asked Questions</h5>
                                       <div class="accordion accordion-flush bg-white rounded-3 shadow-sm overflow-hidden" id="accordionFlushExample">
                                          <div class="accordion-item">
                                             <h2 class="accordion-header" id="flush-headingOne">
                                                <button class="accordion-button collapsed fs-14" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                                What are Edotree's online courses?
                                                </button>
                                             </h2>
                                             <div id="flush-collapseOne" class="accordion-collapse collapse text-muted" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">Edotree's courses are online classes that provide you with the
                                                   tools and skills you need for completing a specific final project. Every step of the project
                                                   combines video lessons with complementary instructional material, so you can learn by doing.
                                                   Edotree's courses also allow you to share your own projects with the instructor and other
                                                   users, thus creating a dynamic course community.
                                                </div>
                                             </div>
                                          </div>
                                          <div class="accordion-item">
                                             <h2 class="accordion-header" id="flush-headingTwo">
                                                <button class="accordion-button collapsed fs-14" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                                When do the courses start and when do they finish?
                                                </button>
                                             </h2>
                                             <div id="flush-collapseTwo" class="accordion-collapse collapse text-muted" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">The course is 100% online, so once they are published, courses start
                                                   and finish whenever you want. You set the pace of the class. You can go back to review what
                                                   interests you most and skip what you already know, ask questions, answer questions, share your
                                                   projects, and more.
                                                </div>
                                             </div>
                                          </div>
                                          <div class="accordion-item">
                                             <h2 class="accordion-header" id="flush-headingThree">
                                                <button class="accordion-button collapsed fs-14" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                                What do Edotree's courses include?
                                                </button>
                                             </h2>
                                             <div id="flush-collapseThree" class="accordion-collapse collapse text-muted" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">The courses are divided into different units, each one includes
                                                   lessons, informational texts, tasks and practice exercises to carry out your project step by
                                                   step, with additional complementary resources and downloads. You will also have access to an
                                                   exclusive forum where you can interact with the instructor and other students, and share your
                                                   work and your course project, thus creating a community around the course itself.
                                                </div>
                                             </div>
                                          </div>
                                          <div class="accordion-item">
                                             <h2 class="accordion-header" id="H1">
                                                <button class="accordion-button collapsed fs-14" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefour" aria-expanded="false" aria-controls="flush-collapsefour">
                                                Have you been given a course?
                                                </button>
                                             </h2>
                                             <div id="flush-collapsefour" class="accordion-collapse collapse text-muted" aria-labelledby="flush-headingfour" data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">You can now redeem the course you received, just access redeeming
                                                   page to enter your gift code and redeem it.
                                                </div>
                                             </div>
                                          </div>
                                          <div class="accordion-item">
                                             <h2 class="accordion-header" id="H2">
                                                <button class="accordion-button collapsed fs-14" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefive" aria-expanded="false" aria-controls="flush-collapsefive">
                                                When do I get the course certificate? <small><span class="badge bg-primary ms-2">New</span></small>
                                                </button>
                                             </h2>
                                             <div id="flush-collapsefive" class="accordion-collapse collapse text-muted" aria-labelledby="flush-headingive" data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">You'll get your personal certificate as soon as you complete the
                                                   course. You can see all your certificates under the Certificates section in your profile. You
                                                   can download your certificates in PDF and share the link online. Learn more about certificates
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- content -->
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                           <div class="row">
                              <div class="col-lg-12">
                                 <section>
                                    <h4 class="pb-2 text-dark">Course overview</h4>
                                    <div class="bg-white rounded-3 shadow-sm overflow-hidden px-4 py-2 mb-5">
                                       <div class="row">
                                          <div class="col">
                                             <div class="d-flex align-items-center my-3">
                                                <div class="w-40 bg-light rounded-circle p-2 border me-3">
                                                   <i class="bi bi-film"></i>
                                                </div>
                                                <span class="small text-dark">16 lessons <span class="small text-muted">(1h 57m)</span></span>
                                             </div>
                                             <div class="d-flex align-items-center my-3">
                                                <div class="w-40 bg-light rounded-circle p-2 border me-3">
                                                   <i class="bi bi-alt"></i>
                                                </div>
                                                <span class="small text-dark">9 exercises</span>
                                             </div>
                                          </div>
                                          <div class="col">
                                             <div class="d-flex align-items-center my-3">
                                                <div class="w-40 bg-light rounded-circle p-2 border me-3">
                                                   <i class="bi bi-file-earmark-arrow-down"></i>
                                                </div>
                                                <span class="small text-dark">11 Download <span class="small text-muted">(6 files)</span></span>
                                             </div>
                                             <div class="d-flex align-items-center my-3">
                                                <div class="w-40 bg-light rounded-circle p-2 border me-3">
                                                   <i class="bi bi-clipboard"></i>
                                                </div>
                                                <span class="small text-dark">Course Final Project</span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">C1: Introduction</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Presentation</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Great Instagrammers</p>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">C2: Before the photo</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>materials</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Achieve the best quality</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Composition</p>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">C3: The shot</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>The brand</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Create an environment</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Compose a Flatlay</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Interior photography</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Creative ideas</p>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">C4: Editing a photo</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Editing photos with Snapseed</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Editing photos with VSCO</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Editing photos with Instagram</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>How to get on Instagram and schedule your posts</p>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">C5: Instagram Stories</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Make the photos</p>
                                       </div>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Use the Instagram Stories tools</p>
                                       </div>
                                    </div>
                                    <div class="mb-5">
                                       <h5 class="text-dark">Final Project</h5>
                                       <hr>
                                       <div class="d-flex">
                                          <i class="bi bi-shield-lock text-muted me-2"></i>
                                          <p>Professional photography for Instagram</p>
                                       </div>
                                    </div>
                                    <div class="my-5">
                                       <h5 class="pb-3 text-dark">Latest projects</h5>
                                       <div class="row gy-3 row-cols-xl-4 row-cols-lg-4 row-cols-md-2 row-cols-2">
                                          <div class="col">
                                             <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                                <img src="images/category1.jpg" class="img-fluid">
                                                <div class="card-body m-0 p-3">
                                                   <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                                   <small class="text-muted">Iamosahan</small>
                                                </div>
                                                <a href="projects.html" class="stretched-link"></a>
                                             </div>
                                          </div>
                                          <div class="col">
                                             <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                                <img src="images/category2.jpg" class="img-fluid">
                                                <div class="card-body m-0 p-3">
                                                   <p class="card-text mb-0 text-dark">Meu projeto do curso:</p>
                                                   <small class="text-muted">Sirlanefreitas.ac</small>
                                                </div>
                                                <a href="projects.html" class="stretched-link"></a>
                                             </div>
                                          </div>
                                          <div class="col">
                                             <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                                <img src="images/category3.jpg" class="img-fluid">
                                                <div class="card-body m-0 p-3">
                                                   <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                                   <small class="text-muted">Arsenaultnicole</small>
                                                </div>
                                                <a href="projects.html" class="stretched-link"></a>
                                             </div>
                                          </div>
                                          <div class="col">
                                             <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                                <img src="images/category4.jpg" class="img-fluid">
                                                <div class="card-body m-0 p-3">
                                                   <p class="card-text mb-0 text-dark">Mi Proyecto del curso:</p>
                                                   <small class="text-muted">Karytrindade</small>
                                                </div>
                                                <a href="projects.html" class="stretched-link"></a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <hr>
                                    <div class="mt-4">
                                       <p class="py-2">Abhay Rai is a product photographer for Melon Blanc, a multidisciplinary studio that is responsible for developing all visual aspects of a brand.</p>
                                       <p class="pb-0 mb-0">Mina's mission is to create visual content for all types of successful brands, such as Charuca, Lucia Be, The Singular Olivia or La Compañía Fantástica, and many others. Taking and editing photographs for Instagram means taking care of every detail, even those that seem imperfect.</p>
                                    </div>
                                 </section>
                              </div>
                           </div>
                        </div>
                        <!-- projects -->
                        <div class="tab-pane fade" id="pills-Projects" role="tabpanel" aria-labelledby="pills-Projects-tab">
                           <div class="row">
                              <div class="col-lg-12">
                                 <!-- 1st row -->
                                 <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 row-cols-xl-4 g-4">
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category1.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours</p>
                                             <small class="text-muted">Iamosahan</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category2.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Meu projeto do curso:</p>
                                             <small class="text-muted">Sirlanefreitas.ac</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category3.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Arsenaultnicole</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category4.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mi Proyecto del curso:</p>
                                             <small class="text-muted">Karytrindade</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category5.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Osahan</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category6.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Meu projeto do curso:</p>
                                             <small class="text-muted">Lanefreitas.ac</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category7.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Enaultnicole</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category8.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mi Proyecto del curso:</p>
                                             <small class="text-muted">Arytrindade</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category9.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Osahan Sin</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category10.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Meu projeto do curso:</p>
                                             <small class="text-muted">sirlanefreitas.ac</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category11.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Wtnicole</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category12.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mi Proyecto del curso:</p>
                                             <small class="text-muted">Rindadekaryt</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category5.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Tangus</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category2.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Meu projeto do curso:</p>
                                             <small class="text-muted">Sirlanefreitas.ac</small>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category3.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mon projet du cours :</p>
                                             <small class="text-muted">Tnicoarsenaulle</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                    <div class="col">
                                       <div class="card border-0 rounded-3 overflow-hidden shadow-sm oneline-text position-relative">
                                          <img src="images/category4.jpg" class="img-fluid">
                                          <div class="card-body m-0 p-3">
                                             <p class="card-text mb-0 text-dark">Mi Proyecto del curso:</p>
                                             <small class="text-muted">Tytrindade</small>
                                          </div>
                                          <a href="projects.html" class="stretched-link"></a>
                                       </div>
                                    </div>
                                 </div>
                                 <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center mb-0 mt-5">
                                       <li class="page-item disabled">
                                          <a class="page-link">Previous</a>
                                       </li>
                                       <li class="page-item"><a class="page-link" href="#">1</a></li>
                                       <li class="page-item"><a class="page-link" href="#">2</a></li>
                                       <li class="page-item"><a class="page-link" href="#">3</a></li>
                                       <li class="page-item">
                                          <a class="page-link" href="#">Next</a>
                                       </li>
                                    </ul>
                                 </nav>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 d-none d-md-block">
                  <div class="sidebar-fixed">
                     <div class="card border-0 bg-white rounded-3 shadow-sm overflow-hidden mb-3 p-3">
                        <div class="card-body p-4">
                           <div class="small text-muted fw-bolder fs-6">
                              <a href=""> <span class="badge bg-danger"></span></a>
                           </div>
                           <div class="mb-3">
                              <span class="fs-2 text-black fw-bold">₹<%#Eval("finalamount")%></span> 
                              <span class="text-danger"><%# Eval("discount") %>% Disc <del> ₹ <%# Eval("price") %></del></span>
                           </div>
                           <div class="d-grid my-2"><a href="Successful_Purchase.aspx?cid=<%#Eval("cid") %>" class="btn btn-primary py-3" >
                               <i class="bi bi-cart-fill" id="btnbuy"></i>BUY</a>
                           </div>
                           <div class="mb-4"><span class="text-danger">
                              <i class="bi bi-clock"></i> This offer end in <strong>4d</strong> </span>
                           </div>
                           <ul class="list-unstyled mb-4">
                              <li class="mb-2">
                                 <i class="bi bi-hand-thumbs-up me-2"></i> 99% positive reviews (9K)
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-person me-2"></i> 198106 students
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-file me-2"></i> 16 lessons (1h 57m)
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-journal-richtext me-2"></i> 11 additional resources (6 files)
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-emoji-smile me-2"></i> Online and at your own pace
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-phone me-2"></i> Available on the app
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-megaphone me-2"></i> Audio: English, Spanish
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-water me-2"></i> Level <span class="badge bg-warning">BEGINNER</span>
                              </li>
                              <li class="mb-2">
                                 <i class="bi bi-infinity me-2"></i> Unlimited access forever
                              </li>
                           </ul>
                           <hr>
                           <div class="d-flex mb-4 justify-content-between align-items-center">
                              <small class="text-muted">A course by<a class="text-decoration-none link-dark fw-bold"> <%# Eval("authername") %></a><br> MCA student.<br>badnera, Amravati.</small><div>
                                 <img src="images/avatar.png" class="img fluid rounded-circle" width="50px">
                              </div>
                           </div>
                           <div class="d-grid">
                              <button type="button" class="btn btn-outline-primary py-3">
                              <i class="bi bi-gift"></i> Buy as a gift
                              </button>
                           </div>
                           <div class="text-center pt-3">
                              <a href="#" class="text-muted small">Redeem the course with a <span class="text-danger"><i class="bi bi-gift-fill"></i> gift code</span></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </ItemTemplate>
     <FooterTemplate>
           <!-- Refer and get free services -->
      <div class="bg-white border-top border-bottom cities-footer">
         <div>
            <div class="container">
               <a class="w-100 text-body text-decoration-none py-3 d-block" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                  <div class="d-flex flex-wrap justify-content-between align-items-center py-1">
                     <h6 class="m-0 h5 text-dark fw-bold">POPULAR CATEGORIES</h6>
                     <small>SEE ALL CATEGORIES <i class="icofont-rounded-down border p-1 ms-2 rounded-3"></i></small>
                  </div>
               </a>
            </div>
         </div>
         <div class="collapse border-top" id="collapseExample">
            <div class="container py-4">
               <div class="row">
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">llustration courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Craft courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Marketing & Business courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Photography & Video courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Design courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">3D & Animation courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Architecture & Spaces courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Web & App Design courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">llustration courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Craft courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Marketing & Business courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Photography & Video courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Design courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">3D & Animation courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Architecture & Spaces courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Web & App Design courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Writing courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Calligraphy & Typography courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Fashion courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Music & Audio courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Writing courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Calligraphy & Typography courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Fashion courses</a></div>
                  <div class="col-6 col-lg-3 col-md-3"><a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Music & Audio courses</a></div>
               </div>
            </div>
         </div>
      </div>
      <!-- Footer -->
      <div class="py-5 footer bg-white">
         <div>
            <div class="container py-3">
               <div class="row">
                  <div class="col-md-12 col-lg-2 col-6 order-1 order-md-0">
                     <a href="index.html" class="brand d-flex align-items-center mb-0 text-decoration-none me-4 fw-bold h5 text-black">
                     <img src="images/logo.png" alt="" class="img-fluid d-inline-block align-text-center me-2 rounded-pill">
                     Edotree
                     </a>
                     &nbsp;&nbsp;&nbsp;<div class="text-muted my-3 py-1">
                        <small>All rights recerved</small>
                        <span class="small">“Be open to new ideas and approaches. Develop your problem-solving skills.”</span>
                     </div>
                     <div class="d-flex gap-3 h5 m-0">
                        <a href="#" class="link-dark"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="link-dark"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="link-dark"><i class="bi bi-github"></i></a>
                        <a href="#" class="link-dark"><i class="bi bi-instagram"></i></a>
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-2 col-6 offset-lg-1 mb-lg-0 mb-3">
                     <h6 class="pb-2">Company</h6>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="about.html">About</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">All Courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="careers.html">Careers</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="student-edit-profile.html">Account</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="testimonials.html">Testimonials</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="contact.html">Contact Us</a>
                  </div>
                  <div class="col-md-6 col-lg-2 col-6">
                     <h6 class="pb-2">Categories</h6>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Illustration courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Craft courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Marketing & Business</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Photography & Video</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Design courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">3D & Animation</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Architecture & Spaces</a>
                  </div>
                  <div class="col-md-12 col-lg-2 col-12 mb-lg-0 mb-3">
                     <h6 class="pb-2">Software</h6>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Adobe Photoshop</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Adobe Illustrator</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Adobe After Effects</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Procreate courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Cinema 4D courses</a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Adobe Lightroom </a>
                     <a class="py-1 text-decoration-none d-block w-100 link-dark" href="courses.html">Adobe InDesign </a>
                  </div>
                  <div class="col-md-12 col-lg-3 col-6 order-1 order-md-0">
                     <h6 class="pb-2">Fancy a cool newsletter?</h6>
                     <small class="text-muted">Be the first to get Edotree's latest news</small>
                        <div class="input-group my-3 shadow-sm border rounded-3 overflow-hidden p-1">
                           <input type="text" class="form-control shadow-none border-0" placeholder="Enter your email">
                           <a href="" class="input-group-text bg-white shadow-none border-0 text-primary btn" id="basic-addon2">
                           Sign up
                           </a>
                        </div>
                     <p><i class="bi bi-envelope"></i> Get new clients, grow your business.</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <footer class="footer bg-white border-top">
         <div class="container">
            <div class="row align-items-center justify-content-between py-4">
               <div class="col-auto">
                  <div class="mb-4 mb-md-0">
                     <a href="index.html" class="text-decoration-none link-dark fw-bold"><i class="icofont-home bg-primary text-white p-1 rounded-pill"></i></a>
                     <a href="terms-and-conditions.html" class="text-decoration-none link-dark small mx-3">Terms & Conditions</a>
                     <a href="privacy-policy.html" class="text-decoration-none link-dark small">Privacy Policy</a>
                  </div>
               </div>
               <div class="col-auto">
                  <div class="d-flex align-items-center gap-1">
                     <a href="#" class="text-decoration-none link-dark pe-2">Download app</a>
                     <a class="me-1" href="#"><img src="images/google.png" class="img-fluid app-icon" alt="#" loading="lazy"></a>
                     <a href="#"><img src="images/apple.png" class="img-fluid app-icon" alt="#" loading="lazy"></a>
                  </div>
               </div>
            </div>
            <hr class="m-0">
            <div class="row align-items-center justify-content-between flex-column flex-sm-row py-4">
               <div class="col-auto order-1 order-md-0">
                  <span class="small">©2024 <b class="text-primary">Edotree</b>. All rights reserved</span>
               </div>
               <div class="col-auto order-0 order-md-1">
                  <a href="#" class="text-decoration-none text-primary"><i class="bi bi-globe me-1"></i> Language</a>
               </div>
            </div>
         </div>
      </footer>
     </FooterTemplate>
   

       </asp:repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inventry_ModuleDBConnectionString %>" SelectCommand="SELECT * FROM [CourseData] WHERE ([cid] = @cid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cid" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
          </asp:SqlDataSource>
    </form>
   <script src="../js/jquery.min.js"></script>
   <!-- Bootstrap Bundle Js -->
   <script src="../js/bootstrap.bundle.min.js"></script>
   <!-- Slick Js -->
   <script src="../js/slick.min.js"></script>
   <!-- Custom Js -->
   <script src="../js/custom.js"></script>
</body><!-- Jquery Js --></html>
