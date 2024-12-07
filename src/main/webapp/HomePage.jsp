<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MedOrder - Home</title>
    <link href="${pageContext.request.contextPath}/home.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
    <style>
        /* Styles for the video background */
        #video-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1; /* Position behind other elements */
        }
        /* Optional: Adjust text color for better visibility */
        .text-light {
            color: white;
        }
        /* Custom styles for the sections */
        .section {
            padding: 50px 0;
        }
        .footer-content {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

<!-- Bootstrap JS (includes Popper.js) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


<!-- Video Background -->
<video id="video-bg" autoplay muted loop>
    <source src="MedicalBack.mp4" type="video/mp4">
</video>


<!-- Navbar with Dropdown and Search Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="Photos/logo.png" alt="Logo" width="50" height="50">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" href="#">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Services
            </a>
            <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
              <li><a class="dropdown-item" href="#">Room Booking</a></li>
              <li><a class="dropdown-item" href="#">Event Management</a></li>
              <li><a class="dropdown-item" href="#">Special Offers</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#testimonials">Testimonials</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#faq">FAQ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contact</a></li>
          <li class="nav-item">
            <a class="nav-link" href="#login">Login</a></li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Hero Section with Tooltip and Popover -->
<section id="home" class="text-center text-light d-flex justify-content-center align-items-center section" style="height: 90vh; background-color: rgba(0, 0, 0, 0.5);">
    <div>
        <h2 class="display-4" data-bs-toggle="tooltip" data-bs-placement="top" title="Welcome to MedOrder">Welcome to MedOrder</h2>
        <p class="lead" data-bs-toggle="popover" data-bs-trigger="hover" data-bs-content="Order medicines online with ease">Your trusted source for ordering medicines online, delivering convenience right to your doorstep.</p>
        <a href="#services" class="btn btn-primary btn-lg">Explore Services</a>
    </div>
</section>

<!-- Carousel Section -->
<section class="container my-5">
    <div class="text-center mb-4">
        <h1>PRODUCT CATEGORIES</h1>
        <p>Choose from a wide variety of products conveniently categorized.</p>
    </div>
    <div id="roomCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="d-flex justify-content-around align-items-center">
                    <div class="text-center">
                        <img src="Photos/pediatrics.png" alt="Kids" style="height: 100px;">
                        <p>KIDS</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/surgeryroom.png" alt="Surgical Items" style="height: 100px;">
                        <p>SURGICAL ITEMS</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/care.png" alt="Personal Care" style="height: 100px;">
                        <p>PERSONAL CARE</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/ayurveda.png" alt="Ayurveda" style="height: 100px;">
                        <p>AYURVEDA</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="d-flex justify-content-around align-items-center">
                    <div class="text-center">
                        <img src="Photos/vitamin-c.png" alt="Vitamins & Nutrition" style="height: 100px;">
                        <p>VITAMINS & NUTRITION</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/dairy.png" alt="Dairy Products" style="height: 100px;">
                        <p>DAIRY PRODUCTS</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/monitoring.png" alt="Dairy Products" style="height: 100px;">
                        <p>HEALTH MONITORING DEVICES</p>
                    </div>
                    <div class="text-center">
                        <img src="Photos/animal-welfare.png" alt="Pet Care" style="height: 100px;">
                        <p>PET CARE</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#roomCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#roomCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>



<section class="top-sales-container my-5">
    <div class="top-sales-header text-center mb-4">
        <h1 class="top-sales-title">Top Sales</h1>
        <p class="top-sales-description">Choose from a wide variety of top-selling products.</p>
    </div>
    <div id="topSalesCarouselNew" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="sales-item-wrapper d-flex justify-content-around align-items-center">
                    <div class="sales-item text-center">
                        <img src="Photos/add1.jpg" alt="Kids" class="sales-item-img">
                        <p class="sales-item-text">KIDS</p>
                        <p class="sales-item-price">$15.99</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/Dettol.jpg" alt="Surgical Items" class="sales-item-img">
                        <p class="sales-item-text">SURGICAL ITEMS</p>
                        <p class="sales-item-price">$45.50</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/BabyCheramy.png" alt="Personal Care" class="sales-item-img">
                        <p class="sales-item-text">PERSONAL CARE</p>
                        <p class="sales-item-price">$22.30</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/ToolKit.jpg" alt="Ayurveda" class="sales-item-img">
                        <p class="sales-item-text">AYURVEDA</p>
                        <p class="sales-item-price">$30.00</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="sales-item-wrapper d-flex justify-content-around align-items-center">
                    <div class="sales-item text-center">
                        <img src="Photos/BEEFRP.jpg" alt="Vitamins & Nutrition" class="sales-item-img">
                        <p class="sales-item-text">VITAMINS & NUTRITION</p>
                        <p class="sales-item-price">$25.00</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/yourgut.jpg" alt="Dairy Products" class="sales-item-img">
                        <p class="sales-item-text">DAIRY PRODUCTS</p>
                        <p class="sales-item-price">$10.50</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/Heartbeet.jpg" alt="Health Monitoring Devices" class="sales-item-img">
                        <p class="sales-item-text">HEALTH MONITORING DEVICES</p>
                        <p class="sales-item-price">$70.00</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                    <div class="sales-item text-center">
                        <img src="Photos/petfood.jpg" alt="Pet Care" class="sales-item-img">
                        <p class="sales-item-text">PET CARE</p>
                        <p class="sales-item-price">$18.99</p>
                        <button class="add-to-cart-btn">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#topSalesCarouselNew" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#topSalesCarouselNew" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>








<!-- About Us Section with Modal -->
<section id="about" class="container text-center my-5 section">
    <h2 class="section-title">About Us</h2>
    <p class="section-description">We aim to revolutionize healthcare by making medicines easily accessible through our reliable platform.</p>
    <button type="button" class="btn btn-outline-secondary learn-more-btn" data-bs-toggle="modal" data-bs-target="#aboutModal">Learn More</button>

    <!-- Modal -->
    <div class="modal fade" id="aboutModal" tabindex="-1" aria-labelledby="aboutModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="aboutModalLabel">About MedOrder</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            MedOrder is a pioneering online platform dedicated to providing convenient healthcare solutions by enabling users to order medicines online. Our mission is to enhance accessibility to essential medical supplies and ensure fast, reliable delivery services.
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  
  
  
  

<!-- Services Section with Accordion -->
<section id="services" class="container text-center my-5 section">
    <h2>Our Services</h2>
    <div class="accordion" id="servicesAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Medicine Delivery
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#servicesAccordion">
                <div class="accordion-body">
                    Fast and reliable medicine delivery services across multiple locations.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Prescription Upload
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#servicesAccordion">
                <div class="accordion-body">
                    Upload your prescriptions easily for a seamless ordering experience.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Consultations
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#servicesAccordion">
                <div class="accordion-body">
                    Consult our healthcare professionals online for expert advice.
                </div>
            </div>
        </div>
    </div>
</section>




<!-- Testimonials Section -->
<section id="testimonials" class="container my-5 py-5 section">
    <h2 class="text-center text-primary mb-5">What Our Customers Say</h2>
    <div class="row text-center">
        <!-- Testimonial 1 -->
        <div class="col-md-6">
            <div class="testimonial-card shadow p-4 mb-4 rounded">
                <blockquote class="blockquote">
                    <p class="mb-3">"Excellent service and quick delivery!"</p>
                    <footer class="blockquote-footer">John Doe, <cite title="Source Title">Satisfied Customer</cite></footer>
                </blockquote>
            </div>
        </div>
        <!-- Testimonial 2 -->
        <div class="col-md-6">
            <div class="testimonial-card shadow p-4 mb-4 rounded">
                <blockquote class="blockquote">
                    <p class="mb-3">"A lifesaver during the pandemic!"</p>
                    <footer class="blockquote-footer">Jane Smith, <cite title="Source Title">Loyal Customer</cite></footer>
                </blockquote>
            </div>
        </div>
    </div>
</section>






<!-- FAQ Section -->
<section id="faq" class="container my-5 section">
    <h2 class="text-center">Frequently Asked Questions</h2>
    <div class="accordion" id="faqAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="faqHeadingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapseOne" aria-expanded="true" aria-controls="faqCollapseOne">
                    How do I order medicines online?
                </button>
            </h2>
            <div id="faqCollapseOne" class="accordion-collapse collapse show" aria-labelledby="faqHeadingOne" data-bs-parent="#faqAccordion">
                <div class="accordion-body">
                    You can browse our catalog, select your medicines, and proceed to checkout.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="faqHeadingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapseTwo" aria-expanded="false" aria-controls="faqCollapseTwo">
                    Is my prescription required for ordering?
                </button>
            </h2>
            <div id="faqCollapseTwo" class="accordion-collapse collapse" aria-labelledby="faqHeadingTwo" data-bs-parent="#faqAccordion">
                <div class="accordion-body">
                    Yes, a valid prescription is required for certain medications.
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="container my-5 section">
    <h2 class="text-center">Get in Touch</h2>
    <form>
        <div class="mb-3">
            <label for="name" class="form-label">Your Name</label>
            <input type="text" class="form-control" id="name" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Your Email</label>
            <input type="email" class="form-control" id="email" required>
        </div>
        <div class="mb-3">
            <label for="message" class="form-label">Your Message</label>
            <textarea class="form-control" id="message" rows="4" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Send Message</button>
    </form>
</section>



<!-- Items on the homepage (sample data) -->
<div class="search-results-section container mt-5">
    <h2 class="section-title">Search Results</h2>
    <div class="row search-results">
        <div class="container mt-5">
        <div class="row">
            <!-- Item 1 -->
            <div class="col-md-4 search-item" data-name="Panadol">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Panadol</h5>
                        <p class="card-text">Pain relief medicine.</p>
                    </div>
                </div>
            </div>

            <!-- Item 2 -->
            <div class="col-md-4 search-item" data-name="Aspirin">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Aspirin</h5>
                        <p class="card-text">Medicine for fever and pain.</p>
                    </div>
                </div>
            </div>

            <!-- Item 3 -->
            <div class="col-md-4 search-item" data-name="Vitamin C">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Vitamin C</h5>
                        <p class="card-text">Immune system booster.</p>
                    </div>
                </div>
            </div>

            <!-- Item 4 -->
            <div class="col-md-4 search-item" data-name="Paracetamol">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Paracetamol</h5>
                        <p class="card-text">Fever reducer and pain reliever.</p>
                    </div>
                </div>
            </div>

            <!-- Item 5 -->
            <div class="col-md-4 search-item" data-name="Cough Syrup">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Cough Syrup</h5>
                        <p class="card-text">Medicine for cold and cough.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</div>




<!-- Footer -->
<footer class="footer-content text-center text-lg-start text-muted py-4">
    <div class="container">
      <div class="row align-items-center">
        <!-- Logo Section -->
        <div class="col-lg-3 col-md-12 mb-4">
          <a href="#">
            <img src="Photos/logo.png" alt="MedOrder Logo" class="footer-logo">
          </a>
        </div>
        <!-- About Section -->
        <div class="col-lg-3 col-md-6 mb-4">
          <h5 class="text-uppercase fw-bold mb-4">About MedOrder</h5>
          <p>MedOrder is your go-to platform for ordering medicines online, providing fast delivery, trusted products, and excellent customer service.</p>
        </div>
        <!-- Quick Links Section -->
        <div class="col-lg-3 col-md-6 mb-4">
          <h5 class="text-uppercase fw-bold mb-4">Quick Links</h5>
          <ul class="list-unstyled">
            <li><a href="#" class="text-muted text-decoration-none">Home</a></li>
            <li><a href="#" class="text-muted text-decoration-none">Services</a></li>
            <li><a href="#" class="text-muted text-decoration-none">About Us</a></li>
            <li><a href="#" class="text-muted text-decoration-none">Contact</a></li>
          </ul>
        </div>
        <!-- Social Media Section -->
        <div class="col-lg-3 col-md-12 mb-4">
          <h5 class="text-uppercase fw-bold mb-4">Follow Us</h5>
          <a href="#" class="text-muted me-3"><i class="fab fa-facebook-square fa-2x"></i></a>
          <a href="#" class="text-muted me-3"><i class="fab fa-twitter-square fa-2x"></i></a>
          <a href="#" class="text-muted"><i class="fab fa-instagram-square fa-2x"></i></a>
        </div>
      </div>
      <!-- Copyright Section -->
      <div class="row">
        <div class="col-12 text-center mt-3">
          <p>&copy; 2024 MedOrder. All Rights Reserved.</p>
        </div>
      </div>
    </div>
  </footer>
  

    
  
  
  
  
  
  
  <script>
        document.querySelector('form.d-flex').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from submitting

            var searchTerm = document.querySelector('input[type="search"]').value.toLowerCase();
            var items = document.querySelectorAll('.search-item');

            items.forEach(function(item) {
                // Get the name of the item from the data-name attribute
                var itemName = item.getAttribute('data-name').toLowerCase();

                // Show or hide items based on the search term
                if (itemName.includes(searchTerm)) {
                    item.style.display = 'block'; // Show item if it matches the search term
                } else {
                    item.style.display = 'none'; // Hide item if it doesn't match
                }
            });

            // Optional: Show alert if no matches found
            var visibleItems = Array.from(items).filter(item => item.style.display === 'block');
            if (visibleItems.length === 0) {
                alert('No matching items found');
            }
        });
    </script>
    
    
    
    
    
  
  
  
  

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
<script>
    // Initialize Bootstrap tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    });

    // Initialize Bootstrap popovers
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl)
    });
</script>
</body>
</html>
