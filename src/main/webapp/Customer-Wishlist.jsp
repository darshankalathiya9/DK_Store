<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="Dao.CartDao"%>
<%@page import="Model.Cart"%>
<%@page import="Dao.WishlistDao"%>
<%@page import="Model.Wishlist"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Add Icon Web Pages -->
<link
	href="https://i.pinimg.com/600x315/d3/b0/ec/d3b0ec40a8046297bf67fdba2450c78f.jpg"
	rel='icon' />
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
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
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->

</head>
<body>

	<%
	Customer c = null;
	if (session.getAttribute("data") != null) {
		c = (Customer) session.getAttribute("data");
	} else {
		response.sendRedirect("Customer-Login.jsp");
	}
	%>

	<a href="offer.html"><img src="images/download.png"
		class="img-head" alt=""></a>
	<div class="header">

		<div class="container">

			<div class="logo">
				<h1>
					<a href="Customer-Home.jsp"><b>T<br>H<br>E
					</b>DK Store<span>The Best Supermarket</span></a>
				</h1>
			</div>
			<div class="head-t">
				<ul class="card">

					<%
					List<Wishlist> list2 = WishlistDao.getwishlistByCustomerID(c.getID());
					%>
					<li class=" active"><a href="Customer-Wishlist.jsp"><i class="fa fa-heart"
							aria-hidden="true"></i>Wishlist(<%=list2.size()%>)</a></li>
					
					<%
					List<Cart> list1 = CartDao.getCartByCustomerID(c.getID());
					%>
					<li><a href="Customer-Cart.jsp"><i class="fa fa-heart"
							aria-hidden="true"></i>Cart(<%=list1.size()%>)</a></li>
							
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
							<li><a href="Customer-Home.jsp" class="hyper "><span>Home</span></a></li>

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
								<ul class="dropdown-menu multi">
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
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li><a href="#" class="hyper"><span> Gift Cards</span></a></li>
							<li><a href="#" class="hyper"><span> Coins</span></a></li>
							<li><a href="contact.html" class="hyper"><span>Contact
										Us</span></a></li>
							<li><a href="#" class="hyper"><span> Hello <%=c.getUsername()%></span></a></li>
							<li><a href="Customer-Logout.jsp" class="hyper"><span>
										Logout</span></a></li>
						</ul>
					</div>
				</nav>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!---->

	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h3>Wishlist</h3>
			<h4>
				<a href="Index.jsp">Home</a><label>/</label>Wishlist
			</h4>
			<div class="clearfix"></div>
		</div>
	</div>

	<!-- contact -->
	<div class="check-out">
		<div class="container">
			<div class="spec ">
				<h3>Wishlist</h3>
				<div class="ser-t">
					<b></b> <span><i></i></span> <b class="line"></b>
				</div>
			</div>
			<script>
				$(document).ready(function(c) {
					$('.close1').on('click', function(c) {
						$('.cross').fadeOut('slow', function(c) {
							$('.cross').remove();
						});
					});
				});
			</script>
			<script>
				$(document).ready(function(c) {
					$('.close2').on('click', function(c) {
						$('.cross1').fadeOut('slow', function(c) {
							$('.cross1').remove();
						});
					});
				});
			</script>
			<script>
				$(document).ready(function(c) {
					$('.close3').on('click', function(c) {
						$('.cross2').fadeOut('slow', function(c) {
							$('.cross2').remove();
						});
					});
				});
			</script>
			<table class="table text-center">
				<tr>
					<th class="t-head head-it text-center">Products</th>
					<th class="t-head text-center">Price</th>
					<th class="t-head text-center">Remove</th>
					<th class="t-head text-center">Purchase</th>
				</tr>


				<%
				List<Wishlist> list = WishlistDao.getwishlistByCustomerID(c.getID());
				%>
				<%
				for (Wishlist w : list) {
				%>

				<%
				Product p = ProductDao.getProductByPID(w.getPID());
				%>
				<tr class="cross">
					<td class="ring-in t-data"><a href="single.html" class="at-in">
							<img src="Image/<%=p.getImage()%>" class="img-responsive"
							height="100px" width="100px" alt="">
					</a>
						<div class="sed">
							<h5>
								<a href="Single-Product.jsp?ID=<%=p.getPID()%>"> <%=p.getPName()%></a>
							</h5>
						</div>
						<div class="clearfix"></div></td>
					<td class="t-data"><%=p.getPPrice()%></td>
					<td class="t-data">
							<a href="RemoveFromWishlist.jsp?WID=<%=w.getWID()%>">Remove
							<!-- <button	class="btn btn-danger my-cart-btn my-cart-b">Remove</button> -->
							</a>
					</td>
					<td class="t-data">
						<form action="CartController" method="post">
							<input type="hidden" name="PID" value=<%=p.getPID()%>> <input
								type="hidden" name="CustomerID" value=<%=c.getID()%>>
							<button class="btn btn-danger my-cart-btn my-cart-b"
								name="action" value="Add to Cart">Add to Cart</button>
						</form>
					</td>

				</tr>
				<%
				}
				%>

			</table>
		</div>
	</div>

	<!--quantity-->
	<script>
		$('.value-plus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) + 1;
							divUpd.text(newVal);
						});

		$('.value-minus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) - 1;
							if (newVal >= 1)
								divUpd.text(newVal);
						});
	</script>
	<!--quantity-->


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
					<li><a href="Customer-Home.jsp">Home</a></li>
					<li><a href="kitchen.html">Kitchen</a></li>
					<li><a href="care.html">Personal Care</a></li>
					<li><a href="hold.html">Household</a></li>
					<li><a href="codes.html">Short Codes</a></li>
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
					<li><a href="Customer-Wishlist.jsp">Wishlist</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2>
					<a href="Customer-Home.jsp"><b>T<br>H<br>E
					</b>DK Store<span>The Best Supermarket</span></a>
				</h2>
				<br> <br>
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
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
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
		$(function() {

			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $(
						'<img width="30px" height="30px" src="'
								+ $addTocartBtn.data("image") + '"/>').css({
					"position" : "fixed",
					"z-index" : "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
					top : position.top,
					left : position.left
				}, 500, "linear", function() {
					$image.remove();
				});
			}

			$('.my-cart-btn').myCart({
				classCartIcon : 'my-cart-icon',
				classCartBadge : 'my-cart-badge',
				affixCartIcon : true,
				checkoutCart : function(products) {
					$.each(products, function() {
						console.log(this);
					});
				},
				clickOnAddToCart : function($addTocart) {
					goToCartIcon($addTocart);
				},
				getDiscountPrice : function(products) {
					var total = 0;
					$.each(products, function() {
						total += this.quantity * this.price;
					});
					return total * 1;
				}
			});

		});
	</script>

</body>
</html>