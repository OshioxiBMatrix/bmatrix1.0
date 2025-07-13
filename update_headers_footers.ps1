# PowerShell script to update headers and footers in all HTML files
$files = Get-ChildItem -Path . -Filter "*.html" -File | Where-Object { $_.Name -ne "index.html" -and $_.Name -ne "about.html" -and $_.Name -ne "services.html" -and $_.Name -ne "blog.html" }

foreach ($file in $files) {
    Write-Host "Processing $($file.Name)..."
    
    # Read the file content
    $content = Get-Content -Path $file.FullName -Raw
    
    # Replace header section
    $content = $content -replace '(?s)<!-- Main Header-->.*?<!--End Sticky Header-->', @'
<!-- Main Header-->
    <header class="main-header">
    
    	<!--Header Top-->
    	<div class="header-top">
        	<div class="auto-container">
            	<div class="clearfix">
                    <div class="top-left">
                        <ul class="clearfix">
                        	<li><a href="#"><span class="icon fa fa-phone"></span>+84 966 342 709</a></li>
                            <li><a href="#"><span class="icon fa fa-envelope"></span>info@bountymatrix.net</a></li>
                        </ul>
                    </div>
                    <div class="top-right clearfix">
                    	<ul class="clearfix">
                        	<li>
                            	<div class="social-links">
                                	<span class="connect">Kết nối:</span>
                                    <a href="https://www.facebook.com/bountymatrix"><span class="fa fa-facebook-f"></span></a>
                                    <a href="https://x.com/bountymatrix"><span class="fa fa-twitter"></span></a>
                                    <a href="https://www.linkedin.com/in/bmatrix/"><span class="fa fa-linkedin"></span></a>
                                    <a href="https://www.pinterest.com/bountymatrix/"><span class="fa fa-pinterest-p"></span></a>
                                    <a href="https://www.tiktok.com/@bountysmatrix"><span class="fa fa-tiktok"></span></a>
                                    <a href="https://www.reddit.com/user/BountyMatrix/"><span class="fa fa-reddit"></span></a>
                                    <a href="https://www.instagram.com/bountymatrix/"><span class="fa fa-instagram"></span></a>
                               	</div>
                            </li>
                        </ul>
                        <a href="contact.html" class="stay-connect">Nhận báo giá</a>
                    </div>
                </div>
            </div>
        </div>
    
        <!--Header-Upper-->
        <div class="header-upper">
        	<div class="auto-container clearfix">
                	
                <div class="pull-left logo-outer">
                    <div class="logo"><a href="index.html"><img src="images/logo.png" alt="" title=""></a></div>
                </div>
                
                <div class="pull-right upper-right clearfix">
                    
                    <div class="nav-outer clearfix">
                		<!-- Main Menu -->
                        <nav class="main-menu">
                            <div class="navbar-header">
                                <!-- Toggle Button -->    	
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                            </div>
                            
                            <div class="navbar-collapse collapse clearfix">
                                <ul class="navigation clearfix">
                                    <li class="current"><a href="index.html">Trang chủ</a></li>
                                    <li class="dropdown"><a href="about.html">Về chúng tôi</a>
                                        <ul>
                                            <li><a href="about.html">Về công ty</a></li>
                                            <li><a href="team.html">Đội ngũ của chúng tôi</a></li>
                                            <li><a href="faq.html">Câu hỏi thường gặp</a></li>
                                            <li><a href="testimonials.html">Đánh giá khách hàng</a></li>
                                        </ul>
                                    </li>
                                    <li class=""><a href="services.html">Dịch vụ</a>
                                    </li>
                                    <li class=""><a href="cases.html">Dự án của chúng tôi</a>
                                    </li>
                                    <li class=""><a href="http://bountymatrix.net/blog">Tin tức</a>
                                    </li>
                                    
                                    <li><a href="contact.html">Liên hệ</a></li>
                                </ul>
                            </div>
                        </nav>
                        
                        <!-- Main Menu End-->
                        <div class="outer-box">
                            <!--Search Box-->
                            <div class="search-box-outer">
                                <div class="dropdown">
                                    <button class="search-box-btn dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-search"></span></button>
                                    <ul class="dropdown-menu pull-right search-panel" aria-labelledby="dropdownMenu3">
                                        <li class="panel-outer">
                                            <div class="form-container">
                                                <form method="post" action="blog.html">
                                                    <div class="form-group">
                                                        <input type="search" name="field-name" value="" placeholder="Tìm kiếm" required>
                                                        <button type="submit" class="search-btn"><span class="fa fa-search"></span></button>
                                                    </div>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
            		</div>
                    
                </div>
                    
            </div>
        </div>
        <!--End Header Upper-->
        
        <!--Sticky Header-->
        <div class="sticky-header">
        	<div class="auto-container clearfix">
            	<!--Logo-->
            	<div class="logo pull-left">
                	<a href="index.html" class="img-responsive"><img src="images/logo-small.png" alt="" title=""></a>
                </div>
                
                <!--Right Col-->
                <div class="right-col pull-right">
                	<!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->    	
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class="current"><a href="index.html">Trang chủ</a></li>
                                <li class="dropdown"><a href="about.html">Về chúng tôi</a>
                                    <ul>
                                        <li><a href="about.html">Về công ty</a></li>
                                        <li><a href="team.html">Đội ngũ của chúng tôi</a></li>
                                        <li><a href="faq.html">Câu hỏi thường gặp</a></li>
                                        <li><a href="testimonials.html">Đánh giá khách hàng</a></li>
                                    </ul>
                                </li>
                                <li class=""><a href="services.html">Dịch vụ</a>
                                    
                                </li>
                                <li class=""><a href="cases.html">Dự án của chúng tôi</a>
    
                                </li>
                                <li class="dropdown"><a href="http://bountymatrix.net/blog">Tin tức</a>
                                   
                                </li>
                                
                                <li><a href="contact.html">Liên hệ</a></li>
                            </ul>
                        </div>
                    </nav><!-- Main Menu End-->
                </div>
                
            </div>
        </div>
        <!--End Sticky Header-->
    
    </header>
    <!--End Main Header -->
'@
    
    # Replace footer section
    $content = $content -replace '(?s)<!--Main Footer-->.*?<!--End Main Footer-->', @'
<!--Main Footer-->
    <footer class="main-footer">
    	<div class="auto-container">
        	<!--Widgets Section-->
            <div class="widgets-section">
            	<div class="row clearfix">
					<!--Footer Column-->
                    <div class="footer-column col-md-5 col-sm-12 col-xs-12">
                    	<div class="footer-widget logo-widget">
                            <div class="footer-logo">
                            	<div class="logo"><a href="index.html"><img src="images/footer-logo.png" alt=""></a></div>
                            </div>
                            <div class="widget-content">
                                <div class="text">Bmatrix mang đến kiến thức công nghệ, mẹo vặt và công cụ mã nguồn mở miễn phí từ năm 2025, giúp cộng đồng tối ưu hóa hệ thống và phát triển bền vững. <a href="#">Đọc thêm</a></div>
                                <h3>Liên hệ:</h3>
                                <div class="row clearfix">
                                	<div class="inner-column col-md-6 col-sm-6 col-xs-12">
                                    	<div class="info-text">QL32, Phụng Thượng, Phúc Thọ, Hà Nội, Việt Nam</div>
                                    </div>
                                    <div class="inner-column col-md-6 col-sm-6 col-xs-12">
                                    	<ul>
                                        	<li><span>ĐT:</span> +84 966 342 709</li>
                                            <li><span>Email:</span> info@bountymatrix.net</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Footer Column-->
                    <div class="footer-column col-md-7 col-sm-12 col-xs-12">
                    	<div class="row clearfix">
                        
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            	<div class="news-widget">
                                	<h2>Tin tức mới nhất</h2>
                                    <div class="widget-content">
                                        
                                        <article class="post">
                                            <figure class="post-thumb">
                                                <a href="blog-single.html"><img src="images/resource/news-thumb-1.jpg" alt=""></a>
                                                <a class="overlay"><span class="fa fa-link"></span></a>
                                            </figure>
                                            <div class="content">
                                                <div class="text"><a href="blog-single.html">Mẹo tối ưu hóa hiệu suất máy tính với công cụ mã nguồn mở</a></div>
                                                <div class="post-info">10 tháng 7, 2025</div>
                                            </div>
                                        </article>
                                                                            
                                        <article class="post">
                                            <figure class="post-thumb">
                                                <a href="blog-single.html"><img src="images/resource/news-thumb-2.jpg" alt=""></a>
                                                <a class="overlay"><span class="fa fa-link"></span></a>
                                            </figure>
                                            <div class="content">
                                                <div class="text"><a href="blog-single.html">Xu hướng công nghệ 2025: Tái sử dụng thiết bị cũ để tiết kiệm chi phí</a></div>
                                                <div class="post-info">5 tháng 7, 2025</div>
                                            </div>
                                        </article>
                                                                            
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            	<div class="links-widget">
                                	<h2>Liên kết hữu ích</h2>
                                    <div class="widget-content">
                                    	<ul class="links">
                                        	<li><a href="about.html">Về Bmatrix</a></li>
                                            <li><a href="services.html">Dịch vụ của chúng tôi</a></li>
                                            <li><a href="contact.html">Nhận báo giá</a></li>
                                            <li><a href="cases.html">Dự án mới nhất</a></li> 
                                            <li><a href="team.html">Gặp đội ngũ của chúng tôi</a></li>
                                            <li><a href="contact.html">Liên hệ với chúng tôi</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!--Footer Bottom-->
        <div class="footer-bottom">
        	<div class="auto-container">
            	<div class="row clearfix">
                	<div class="copyright-column col-md-5 col-sm-12 col-xs-12">
                    	<div class="copyright">Bản quyền © 2025 Tất cả các quyền được bảo lưu bởi <a href="#">Bmatrix.</a></div>
                    </div>
                    <div class="nav-column col-md-7 col-sm-12 col-xs-12">
                    	<ul class="footer-nav">
                        	<li><a href="legel.html">Pháp lý</a></li>
                            <li><a href="sitemap.html">Sơ đồ trang</a></li>
                            <li><a href="privacy.html">Chính sách bảo mật</a></li>
                            <li><a href="terms.html">Điều khoản & Điều kiện</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--End Main Footer-->
'@
    
    # Save the updated content back to the file
    Set-Content -Path $file.FullName -Value $content
    
    Write-Host "Updated $($file.Name) successfully."
}

Write-Host "All files have been updated." 