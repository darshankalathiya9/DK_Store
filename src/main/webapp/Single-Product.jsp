<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="Model.Wishlist"%>
<%@page import="Dao.WishlistDao"%>
<%@page import="Dao.CartDao"%>
<%@page import="Model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>DK Store</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords"
	content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Add Icon Web Pages -->
<link
	href="https://i.pinimg.com/600x315/d3/b0/ec/d3b0ec40a8046297bf67fdba2450c78f.jpg"
	rel='icon' />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700'
	rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
	<% Customer c = null;
	if(session.getAttribute("data")!=null){
		c = (Customer)session.getAttribute("data");
	}else{
		response.sendRedirect("Customer-Login.jsp");
	}
%>
	<a href="offer.html"><img src="images/download.png"
		class="img-head" alt=""></a>
	<div class="header">

		<div class="container">

			<div class="logo">
				<h1>
					<a href="Index.jsp"><b>T<br>H<br>E
					</b>DK Store<span>The Best Supermarket</span></a>
				</h1>
			</div>
			<div class="head-t">
				<ul class="card">

					<li><a href="Wishlist.jsp"><i class="fa fa-heart"
							aria-hidden="true"></i>Wishlist</a></li>
					<li><a href="Customer-Login.jsp"><i class="fa fa-user"
							aria-hidden="true"></i>Login</a></li>
					<li><a href="Customer-Registration.jsp"><i
							class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					<li><a href="about.html"><i class="fa fa-file-text-o"
							aria-hidden="true"></i>Order History</a></li>
					<li><a href="shipping.html"><i class="fa fa-ship"
							aria-hidden="true"></i>Shipping</a></li>
				</ul>
			</div>

			<div class="nav-top">
				<nav class="navbar navbar-default">

					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li class=" active"><a href="Index.jsp" class="hyper "><span>Home</span></a></li>

							<li class="dropdown "><a href="#"
								class="dropdown-toggle  hyper" data-toggle="dropdown"><span>Profile<b
										class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-12">
											<ul class="multi-column-dropdown">

												<li><a href="Customer-Profile.jsp"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Update
														Profile</a></li>
												<li><a href="Customer-Change-Password.jsp"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Change
														Password</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle hyper" data-toggle="dropdown"><span>Notifications<b
										class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-12">
											<ul class="multi-column-dropdown">
												<li><a href="#"><i class="fa fa-angle-right"
														aria-hidden="true"></i>Primary</a></li>
												<li><a href="#"><i class="fa fa-angle-right"
														aria-hidden="true"></i>Social</a></li>
												<li><a href="#"><i class="fa fa-angle-right"
														aria-hidden="true"></i>Others</a></li>
											</ul>
										</div>
									</div>
								</ul></li>
							<li><a href="#" class="hyper"><span> Gift Cards</span></a></li>
							<li><a href="#" class="hyper"><span> Coins</span></a></li>
							<li><a href="contact.html" class="hyper"><span>Contact
										Us</span></a></li>
							<li><a href="#" class="hyper"><span> Hello <%=c.getUsername() %></span></a></li>
							<li><a href="Customer-Logout.jsp" class="hyper"><span>
										Logout</span></a></li>
						</ul>
					</div>
				</nav>
				<div class="cart">
					<span class="fa fa-shopping-cart my-cart-icon"><span
						class="badge badge-notify my-cart-badge"></span></span>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!---->
	
	<%int ID = Integer.parseInt(request.getParameter("ID")); %>
	<%Product p = ProductDao.getProductByPID(ID);  %>
	
	
	<!--banner-->
	<div class="banner-top">
		<div class="container">
		
			<h3><%=p.getPName()%></h3>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="single">
		<div class="container">
			<div class="single-top-main">
			
			
			
				<div class="col-md-5 single-top">
					<div class="single-w3agile">

						<div id="picture-frame">
							<img src="Image/<%=p.getImage() %>" data-src="Image/<%=p.getImage() %>" alt=""
								class="img-responsive" />
						</div>
						<script src="js/jquery.zoomtoo.js"></script>
						<script>
			$(function() {
				$("#picture-frame").zoomToo({
					magnify: 1
				});
			});
		</script>



					</div>
				</div>
				<div class="col-md-7 single-top-left ">
					<div class="single-right">
						<h3><%=p.getPName()%></h3>


						<div class="pr-single">
							<p class="reduced "> &#8377; <%=p.getPPrice() %></p>
						</div>
						<div class="block block-w3">
							<div class="starbox small ghosting"></div>
						</div>
						<p class="in-pa">There are many variations of passages of
							Lorem Ipsum available, but the majority have suffered alteration
							in some form, by injected humour, or randomised words which don't
							look even slightly believable.</p>

					<!-- 	<ul class="social-top">
							<li><a href="#" class="icon facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
							<li><a href="#" class="icon twitter"><i
									class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
							<li><a href="#" class="icon pinterest"><i
									class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
							<li><a href="#" class="icon dribbble"><i
									class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
						</ul> -->
						
						
						<!-- <div class="add add-3">
							<button class="btn btn-danger my-cart-btn my-cart-b" data-id="1"
								data-name="Wheat" data-summary="summary 1" data-price="6.00"
								data-quantity="1" data-image="images/si.jpg">Add to
								Cart</button><br><br>
								<button class="btn btn-danger my-cart-btn my-cart-b" data-id="1"
								data-name="Wheat" data-summary="summary 1" data-price="6.00"
								data-quantity="1" data-image="images/si.jpg">Add to
								Cart</button>
						</div> -->
						
						<div class="add add-3">
						<form action="CartController" method="post">
						
							<button class="btn btn-danger my-cart-btn my-cart-b" name="action" value="Add to Cart">Add To Cart</button>
						</form><br>
						
						<form action="WishlistController" method="post">
							<input type="hidden" name="PID" value=<%=p.getPID() %>>
							<input type="hidden" name="CustomerID" value=<%=c.getID() %>>
							<button class="btn btn-danger my-cart-btn my-cart-b" name="action" value="Add to Wishlist">Add To Wishlist</button>
						</form>
						</div>
						
						<div class="clearfix"></div>
					</div>


				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<br><br>
	<!---->

	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-grid">
				<h3>About Us</h3>
				<p>You can Purchase Routine Life Items From Here and Enjoy Your
					Life Easier.</p>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Menu</h3>
				<ul>
					<li><a href="Index.jsp">Home</a></li>
					<li><a href="kitchen.html">Kitchen</a></li>
					<li><a href="care.html">Personal Care</a></li>
					<li><a href="hold.html">Household</a></li>
					<li><a href="codes.html">Short Codes</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Customer Services</h3>
				<ul>
					<li><a href="shipping.html">Shipping</a></li>
					<li><a href="terms.html">Terms & Conditions</a></li>
					<li><a href="faqs.html">Faqs</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li><a href="offer.html">Online Shopping</a></li>

				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h3>My Account</h3>
				<ul>
					<li><a href="Customer-Login.jsp">Login</a></li>
					<li><a href="Customer-Registration.jsp">Register</a></li>
					<li><a href="wishlist.html">Wishlist</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2>
					<a href="Index.jsp"><b>T<br>H<br>E
					</b>DK Store<span>The Best Supermarket</span></a>
				</h2>
				<br>
				<br>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble"
							aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-home" aria-hidden="true"></i>Somewhere on Earth
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i>+91 9624360699
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<a href="mailto:dkstore0123@gmail.com"><i
								class="fa fa-envelope-o" aria-hidden="true"></i>dkstore0123@gmail.com</a>
						</p>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			<div class="copy-right">
				<p>&copy; 2023 DK Store. All Rights Reserved | Design by DK</p>
			</div>
		</div>
	</div>
	<!-- //footer-->

	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //smooth scrolling -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>


	<!-- product -->
	<div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of4.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Lays(100 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$1.00</del>$0.70</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="5" data-name="Lays" data-summary="summary 5"
								data-price="0.70" data-quantity="1" data-image="images/of4.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal6" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of5.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Kurkure(100 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$1.00</del>$0.70</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="6" data-name="Kurkure" data-summary="summary 6"
								data-price="0.70" data-quantity="1" data-image="images/of5.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal7" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of6.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Popcorn(250 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$2.00</del>$1.00</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="7" data-name="Popcorn" data-summary="summary 7"
								data-price="1.00" data-quantity="1" data-image="images/of6.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal8" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of7.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Nuts(250 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$4.00</del>$3.50</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="8" data-name="Nuts" data-summary="summary 8"
								data-price="3.50" data-quantity="1" data-image="images/of7.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal9" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of8.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Banana(6 pcs)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$2.00</del>$1.50</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="9" data-name="Banana" data-summary="summary 9"
								data-price="1.50" data-quantity="1" data-image="images/of8.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal10" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of9.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Onion(1 kg)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$1.00</del>$0.70</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="10" data-name="Onion" data-summary="summary 10"
								data-price="0.70" data-quantity="1" data-image="images/of9.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal11" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of10.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Bitter Gourd(1 kg)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$2.00</del>$1.00</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="11" data-name="Bitter Gourd" data-summary="summary 11"
								data-price="1.00" data-quantity="1" data-image="images/of10.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal12" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of11.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Apples(1 kg)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$4.00</del>$3.50</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="12" data-name="Apples" data-summary="summary 12"
								data-price="3.50" data-quantity="1" data-image="images/of11.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal13" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of12.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Honey(500 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$7.00</del>$6.00</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="13" data-name="Honey" data-summary="summary 13"
								data-price="6.00" data-quantity="1" data-image="images/of12.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal14" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of13.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Chocos(250 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$5.00</del>$4.50</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="14" data-name="Chocos" data-summary="summary 14"
								data-price="4.50" data-quantity="1" data-image="images/of13.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal15" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of14.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Oats(1 kg)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$4.00</del>$3.50</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="15" data-name="Oats" data-summary="summary 15"
								data-price="3.50" data-quantity="1" data-image="images/of14.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- product -->
	<div class="modal fade" id="myModal16" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="images/of15.png" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>Bread(500 g)</h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom "><del>$1.00</del>$0.80</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="add-to">
							<button class="btn btn-danger my-cart-btn my-cart-btn1 "
								data-id="16" data-name="Bread" data-summary="summary 16"
								data-price="0.80" data-quantity="1" data-image="images/of15.png">Add
								to Cart</button>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>