<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="free css layout, old blog template, CSS, HTML" />
<meta name="description" content="Blog, speex, socks, slip, tcpip, http" />

<link   rel="stylesheet" type="text/css" href="resources/blog/templatemo_style.css"  />
<link   rel="stylesheet" type="text/css" href="resources/blog/tabcontent.css" />
<!-- 
<script type="text/javascript" src="resources/blog/tabcontent.js"/>
 -->

</head>

<body>

	<div id="templatemo_header_panel">
		<div id="templatemo_title_section">
			<h1>Xu Zhuo's Blog</h1>
			徐卓的blog空间
		</div>
	</div>
	<!-- end of templatemo header panel -->

	<div id="templatemo_menu_panel">
		<div id="templatemo_menu_section">
			<ul>
				<li><a href="index.html" class="current">Home</a></li>
				<li><a href="#">Gallery</a></li>
				<li><a href="#">Categories</a></li>
				<li><a href="#">Archives</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
	<!-- end of menu -->



	<div id="templatemo_content_container">
		<div id="templatemo_content">
			
			<div id="templatemo_content_left">

				<div class="templatemo_post_wrapper">
					<div class="templatemo_post">
						<div class="post_title">Free CSS Template</div>
						<div class="post_info">
							Posted by <a href="http://www.templatemo.com" target="_blank">templatemo.com</a>,
							December 7, 2048 at 10:12 am, in <a href="#">Player.</a>
						</div>
						<div class="post_body">
							<img src="resources/blog/images/templatemo_image_02.jpg" alt="free css template"
								border="1" />
							<p>
								Free CSS Template is provided by <a
									href="http://www.templatemo.com" target="_blank">templatemo.com</a>
								for blog websites. You may download, modify and use this website
								layout for personal or commercial websites.
							</p>
							<p>
								Credits go to <a
									href="http://www.bittbox.com/freebies/free-hi-resolution-wood-textures/"
									target="_blank">bittbox.com</a> for wood texture, <a
									href="http://www.brusheezy.com/brush/1108-Floral-Pack-1"
									target="_blank">ElenaSham</a> and <a
									href="http://www.brusheezy.com/brush/957-Enchanting-Flowers"
									target="_blank">Coby17</a> for brushes.
							</p>
						</div>
						<div class="post_comment">
							<a href="#">No Comment</a>
						</div>
					</div>
				</div>
				<!-- End of a post-->

				<div class="templatemo_post_wrapper">
					<div class="templatemo_post">
						<div class="post_title">Blog web template for free</div>
						<div class="post_info">
							Posted by <a href="http://www.templatemo.com" target="_blank">TemplateMo.com</a>,
							December 6, 2048 at 11:24 am, in <a href="#">Player.</a>
						</div>
						<div class="post_body">
							<img src="images/templatemo_image_01.jpg"
								alt="free blog template" border="1" />
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Nunc quis sem nec tellus blandit tincidunt. Duis vitae velit sed
								dui malesuada dignissim. Donec mollis aliquet ligula. Maecenas
								adipiscing elementum ipsum. Pellentesque vitae magna.</p>
							<p>Pellentesque dolor nulla, congue vitae, fringilla in,
								varius a, orci. Mauris convallis. Proin vel libero id erat
								venenatis accumsan. Nunc blandit orci sit amet risus. Donec
								mollis aliquet ligula. Maecenas adipiscing elementum ipsum.</p>
						</div>
						<div class="post_comment">
							<a href="#">5 comments</a>
						</div>
					</div>
				</div>
				<!-- End of a post-->

			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">

				<div class="templatemo_right_section">
					<div class="tag_section">
						<ul id="countrytabs" class="shadetabs">
							<li><a href="#" rel="search" class="selected">Search</a></li>
							<li><a href="#" rel="category">Category</a></li>
							<li><a href="#" rel="archive">Archive</a></li>
						</ul>
					</div>

					<div class="tabcontent_section">
						<div id="search" class="tabcontent">
							<form method="get" action="#">
								<input type="text"   name="searchkeyword"  class="inputfield" id="searchkeyword" /> 
								<input type="submit" name="submit"      class="button" value="Search" />
							</form>
						</div>

						<div id="category" class="tabcontent">
							<ul>
								<li><a href="#">Lorem ipsum</a></li>
								<li><a href="#">Duis mollis</a></li>
								<li><a href="#">Maecenas adipiscing</a></li>
								<li><a href="#">Nunc blandit orci</a></li>
								<li><a href="#">Cum sociis natoque</a></li>
							</ul>
						</div>

						<div id="archive" class="tabcontent">
							<ul>
								<li><a href="#">January 2049</a></li>
								<li><a href="#">December 2048</a></li>
								<li><a href="#">November 2048</a></li>
								<li><a href="#">October 2048</a></li>
								<li><a href="#">September 2048</a></li>
							</ul>
						</div>
					</div>

					<script type="text/javascript">
					
						var countries = new ddtabcontent("countrytabs");
						countries.setpersist(true);
						//"link" or "linkparent"
						countries.setselectedClassTarget("link"); 
						countries.init();
						
					</script>
					<!--- end of tag -->
				</div>


				<div class="templatemo_right_section">
					<h2>Popular Posts</h2>
					<ul>
						<li><a href="#">Quisque dictum pharetra neque</a></li>
						<li><a href="#">Aliquam pretium porta odio</a></li>
						<li><a href="#">Maecenas adipiscing</a></li>
						<li><a href="#">Vivamus vestibulum condimentum</a></li>
						<li><a href="#">Cum sociis natoque</a></li>
					</ul>
				</div>

				<div class="templatemo_right_section">
					<h2>Archives</h2>
					<ul>
						<li><a href="#">January 2049</a></li>
						<li><a href="#">December 2048</a></li>
						<li><a href="#">November 2048</a></li>
						<li><a href="#">October 2048</a></li>
						<li><a href="#">September 2048</a></li>
					</ul>
				</div>

				<div class="templatemo_right_section">
					<h2>Recent Comments</h2>
					<ul>
						<li>Lorem Ipsum on <a href="#">Donec mollis aliquet</a></li>
						<li>Consectetuer on <a href="#">Suspendisse a nibh</a></li>
						<li>Sed on <a href="#">Pellentesque vitae magna</a></li>
						<li>Vitae Neque on <a href="#">Nunc blandit orci sit amet</a></li>
						<li>Donec Mollis on <a href="#">Maecenas adipiscing</a></li>
					</ul>
				</div>

				<div class="templatemo_right_section">
					<h2>Search</h2>
					<form method="get" action="#">
						<input class="inputfield" name="keyword" type="text" id="keyword" />
						<input type="submit" name="submit" class="button" value="Search" />
					</form>
				</div>

			</div>
			<!-- end of right content -->
		</div>
		
		<!-- end of content -->
	</div>
	<!-- end of content container -->
	
	

	<div id="templatemo_bottom_panel">
		<div id="templatemo_bottom_section">
			<div class="templatemo_bottom_section_content">
				<h3>Partner Links</h3>
				<ul>
					<li><a href="#">Mauris congue felis at nisi</a></li>
					<li><a href="#">Donec mattis rhoncus mi</a></li>
					<li><a href="#">Maecenas adipiscing</a></li>
					<li><a href="#">Nunc blandit orci</a></li>
					<li><a href="#">Cum sociis natoque</a></li>
				</ul>
			</div>

			<div class="templatemo_bottom_section_content">
				<h3>Other Links</h3>
				<ul>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Privacy</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>

			<div class="templatemo_bottom_section_content">
				<h3>About this blog</h3>
				<p>Vivamus laoreet pharetra eros. In quam nibh, placerat ac,
				   porta ac, molestie non, purus. Curabitur sem ante, condimentum non,
				   cursus quis, eleifend non, libero. Nunc a nulla.</p>
			</div>

		</div>
	</div>
	<!-- end of templatemo bottom panel -->

</body>
</html>