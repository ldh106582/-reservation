<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="/reservation/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="/reservation/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/reservation/resources/vendor/devicons/css/devicons.min.css" rel="stylesheet">
<link href="/reservation/resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/reservation/resources/css/resume.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body id="page-top">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Start Bootstrap</span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/reservation/resources/img/profile.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger active" href="#about">restaurant</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#experience">Map</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#education">Menu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#skills">Reserve</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#interests">Reviews</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#awards">Awards</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
        <div class="my-auto">
          <h1 class="mb-0"> restaurant Name :
            <span class="text-primary">${rocation.restaurantName}</span>
          </h1>
          <div class="subheading">restaurant Number : 
            <a href="#">${rocation.restaurantNumber}</a>
          </div>
          <div class="subheading mb-5">restaurant hours : 
            <a href="#" style="font-size: 20px;">${rocation.open_hour}</a>
          </div>
          <p class="mb-5"> ${rocation.category}</p>
          <p class="mb-5">건강하고 맛있는 밥상을 준비하고 있습니다. 가족들과 식사하기 좋고 어른들을 위한 메뉴를 준비하여 많은 사람들의 입을 행복할 수 있도록 신선하고 맛있는 음식을 여러분들께 제공하도록 하겠습니다. 많은 관심 부탁드립니다 :)</p>
          <ul class="list-inline list-social-icons mb-0">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
        <div class="my-auto">
          <h2 class="mb-5">Restaurant Map</h2>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0"></h3>
              <div class="subheading mb-3">Restaurant Address(가게주소)</div>
              <p>${rocation.restaurantAddr} </p>
            </div>
            <!-- <div class="resume-date text-md-right">
              <span class="text-primary">March 2013 - Present</span>
            </div> -->
          </div>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Map(지도)</h3>
              <div class="subheading mb-3"></div>
              	<p><div id="map" style="width:70vw;height:520px;"></div></p>
            </div>
          <!--   <div class="resume-date text-md-right">
              <span class="text-primary">December 2011 - March 2013</span>
            </div> -->
          </div>

         <!--  <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Junior Web Designer</h3>
              <div class="subheading mb-3">Shout! Media Productions</div>
              <p>Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.</p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">July 2010 - December 2011</span>
            </div>
          </div>

          <div class="resume-item d-flex flex-column flex-md-row">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Web Design Intern</h3>
              <div class="subheading mb-3">Shout! Media Productions</div>
              <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.</p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">September 2008 - June 2010</span>
            </div>
          </div> -->

        </div>

      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
        <div class="my-auto">
          <h2 class="mb-5">Menu</h2>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Korean cuisine(한식)</h3>
              <div class="subheading mb-3">representative Korean food(한국을 대표하는 음식)</div>
              
                <div class="card-deck" style="overflow: auto;">
                
				  <div class="card">
				    <img src="/reservation/resources/img/jae.jpg" class="card-img-top" alt="...">
				    <div class="card-body">
				      <h5 class="card-title">Jeyuk-bokkeum(제육볶음)</h5>
					  <p class="card-text">Jeyuk-bokkeum is a representative Korean dish made by stir-frying thinly sliced pork with spicy seasoning, primarily based on gochujang along with various spices and vegetables. It is commonly enjoyed with rice or as a side dish for alcoholic beverages. </p>
				      <p class="card-text">제육볶음은 한국의 대표적인 요리로, 얇게 썬 돼지고기를 매콤한 양념과 함께 볶아내는 요리입니다. 이 매콤한 양념은 주로 고추장을 기반으로 하며, 여기에 다양한 향신료와 야채가 더해져 풍부한 맛을 낸답니다. 제육볶음은 보통 밥과 함께 식사로 즐깁니다.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">가격 : 15,000 원</small>
				    </div>
				  </div>
				  
				  <div class="card">
				    <img src="/reservation/resources/img/bull.jpg" class="card-img-top" alt="...">
				    <div class="card-body">
				      <h5 class="card-title">Bulgogi(불고기)</h5>
				      <p class="card-text">Bulgogi is one of Korea's traditional dishes, characterized by marinated meat that's grilled to perfection. It primarily uses beef and is known for its sweet and savory flavor profile. Bulgogi is a popular dish often served during family gatherings and holidays.</p>
				      <p class="card-text">불고기는 한국의 전통적인 요리 중 하나로, 양념에 재운 고기를 구워 먹는 방식입니다. 주로 소고기를 사용하며, 달콤하고 짭짤한 맛이 특징이에요. 불고기는 가족 모임이나 명절 때 자주 차려지는 인기 있는 요리입니다.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">가격 : 15,000 원</small>
				    </div>
				  </div>
				  
				  <div class="card">
				    <img src="/reservation/resources/img/bo.jpg" class="card-img-top" alt="..." style="height: 17vw;">
				    <div class="card-body">
				      <h5 class="card-title">Bossam(보쌈)</h5>
				      <p class="card-text">Bossam is a traditional Korean dish consisting of boiled pork served with cabbage wraps. The meat is boiled in a flavorful brine until tender and served thinly sliced. Each person wraps the meat in salted napa cabbage leaves along with radish salad and salted shrimp.</p>
				      <p class="card-text">보쌈은 삶은 돼지고기를 배추나 상추에 싸서 먹는 전통적인 한국 요리입니다. 돼지고기는 향이 좋은 육수에 삶아 부드럽게 만든 후 얇게 썰어서 제공됩니다. 일반적으로 절인 배추 잎, 무생채, 그리고 새우젓과 함께 즐깁니다.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">가격 : 20,000원 </small>
				    </div>
				  </div>	
				</div>
            </div>
          </div>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">University of Colorado Boulder</h3>
              <div class="subheading mb-3">Bachelor of Science</div>
              
              <div>
	              <div class="card-deck">
					  <div class="card">
					    <img src="..." class="card-img-top" alt="...">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">Last updated 3 mins ago</small>
					    </div>
					  </div>
				  </div>
				  
					<div class="card-deck">
					  <div class="card">
					    <img src="..." class="card-img-top" alt="...">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">Last updated 3 mins ago</small>
					    </div>
					  </div>
				  </div>
				  
				  <div class="card-deck">
					  <div class="card">
					    <img src="..." class="card-img-top" alt="...">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">Last updated 3 mins ago</small>
					    </div>
					  </div>
				  </div>
				  
				 <div class="card-deck">
					  <div class="card">
					    <img src="..." class="card-img-top" alt="...">
					    <div class="card-body">
					      <h5 class="card-title">Card title</h5>
					      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">Last updated 3 mins ago</small>
					    </div>
					  </div>
				  </div>
				  
			   </div>
            </div>
          </div>
          
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">University of Colorado Boulder</h3>
              <div class="subheading mb-3">Bachelor of Science</div>
              <div class="card-deck">
				  <div class="card">
				    <img src="..." class="card-img-top" alt="...">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">Last updated 3 mins ago</small>
				    </div>
				  </div>
				  <div class="card">
				    <img src="..." class="card-img-top" alt="...">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">Last updated 3 mins ago</small>
				    </div>
				  </div>
				  <div class="card">
				    <img src="..." class="card-img-top" alt="...">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
				    </div>
				    <div class="card-footer">
				      <small class="text-muted">Last updated 3 mins ago</small>
				    </div>
				  </div>
				</div>
            </div>
          </div>
          
          
		

        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
        <div class="my-auto">
          <h2 class="mb-5">Reserve</h2>

          <div class="subheading mb-3">Programming Languages &amp; Tools</div>
          <ul class="list-inline list-icons">
            <li class="list-inline-item">
              <i class="devicons devicons-html5"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-css3"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-javascript"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-jquery"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-sass"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-less"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-bootstrap"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-wordpress"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-grunt"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-gulp"></i>
            </li>
            <li class="list-inline-item">
              <i class="devicons devicons-npm"></i>
            </li>
          </ul>

          <div class="subheading mb-3">Reviews</div>
          <ul class="fa-ul mb-0">
            <li>
              <i class="fa-li fa fa-check"></i>
              Mobile-First, Responsive Design</li>
            <li>
              <i class="fa-li fa fa-check"></i>
              Cross Browser Testing &amp; Debugging</li>
            <li>
              <i class="fa-li fa fa-check"></i>
              Cross Functional Teams</li>
            <li>
              <i class="fa-li fa fa-check"></i>
              Agile Development &amp; Scrum</li>
          </ul>
        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
        <div class="my-auto">
          <h2 class="mb-5">Interests</h2>
          <p>Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skiier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking.</p>
          <p class="mb-0">When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technolgy advancements in the front-end web development world.</p>
        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
        <div class="my-auto">
          <h2 class="mb-5">Awards &amp; Certifications</h2>
          <ul class="fa-ul mb-0">
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              Google Analytics Certified Developer</li>
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              Mobile Web Specialist - Google Certification</li>
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              1<sup>st</sup>
              Place - University of Colorado Boulder - Emerging Tech Competition 2009</li>
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              1<sup>st</sup>
              Place - University of Colorado Boulder - Adobe Creative Jam 2008 (UI Design Category)</li>
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              2<sup>nd</sup>
              Place - University of Colorado Boulder - Emerging Tech Competition 2008</li>
            <li>
            </li><li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              1<sup>st</sup>
              Place - James Buchanan High School - Hackathon 2006</li>
            <li>
              <i class="fa-li fa fa-trophy text-warning"></i>
              3<sup>rd</sup>
              Place - James Buchanan High School - Hackathon 2005</li>
          </ul>
        </div>
      </section>

    </div>


</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f30b9d1a04930d10cdcf58c2d9681f7e"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(${rocation.y}, ${rocation.x}), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${rocation.y}, ${rocation.x}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);
</script>
<script src="/reservation/resources/vendor/jquery/jquery.min.js"></script>
<script src="/reservation/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/reservation/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="/reservation/resources/js/resume.min.js"></script>
</html>