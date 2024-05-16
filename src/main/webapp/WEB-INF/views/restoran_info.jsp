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
<link href="/reservation/resources/css/restoran_info.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="/reservation/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/reservation/resources/vendor/devicons/css/devicons.min.css" rel="stylesheet">
<link href="/reservation/resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/reservation/resources/css/resume.min.css" rel="stylesheet">
<link href="/reservation/resources/css/my.css" rel="stylesheet">
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
        
        <div class="fix border border-dark">
        	<div class="chat-message">궁금하신 점을 입력해주세요.</div>
	        <div id="talk"></div>
        	<form id="gptchat" action="/resotrant_info/gpt" method="POST">
        		<input type="text" id="userinput" name="m_gpt">
        		<input type="submit" id="submit">
        	</form>
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
          </div>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Map(지도)</h3>
              <div class="subheading mb-3"></div>
              	<p><div id="map" style="width:70vw;height:520px;"></div></p>
            </div>
          </div>

         <!-- 

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
              
              <div class="slider">
	              <div class="over">
	                <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/jae.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Jeyuk-bokkeum(제육볶음)</h5>
						  <p class="card-text">Jeyuk-bokkeum is a representative Korean dish made by stir-frying thinly sliced pork with spicy seasoning, primarily based on gochujang along with various spices and vegetables. It is commonly enjoyed with rice or as a side dish for alcoholic beverages. </p>
					      <p class="card-text">제육볶음은 한국의 대표적인 요리로, 얇게 썬 돼지고기를 매콤한 양념과 함께 볶아내는 요리입니다. 이 매콤한 양념은 주로 고추장을 기반으로 하며, 여기에 다양한 향신료와 야채가 더해져 풍부한 맛을 낸답니다. 제육볶음은 보통 밥과 함께 식사로 즐깁니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 15,000 원</small>
					    </div>
					  </div>
					</div>
					
				    <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/bull.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Bulgogi(불고기)</h5>
					      <p class="card-text">Bulgogi is one of Korea's traditional dishes, characterized by marinated meat that's grilled to perfection. It primarily uses beef and is known for its sweet and savory flavor profile. Bulgogi is a popular dish often served during family gatherings and holidays.</p>
					      <p class="card-text">불고기는 한국의 전통적인 요리 중 하나로, 양념에 재운 고기를 구워 먹는 방식입니다. 주로 소고기를 사용하며, 달콤하고 짭짤한 맛이 특징이에요. 불고기는 가족 모임이나 명절 때 자주 차려지는 인기 있는 요리입니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 15,000 원</small>
					    </div>
					  </div>
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/bo.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
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
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/gimbab.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">GimBab(김밥)</h5>
					      <p class="card-text">Gimbap, a representative Korean snack, is a dish made by wrapping ingredients with rice in seaweed. It is commonly enjoyed with rice and features a variety of fillings, offering both flavor and nutrition.</p>
					      <p class="card-text">김밥은 한국의 대표적인 가정간식으로, 식품을 김으로 감싸 재료와 함께 말아 만든 요리입니다. 주로 밥과 함께 식사되며, 다양한 종류의 재료를 사용하여 맛과 영양이 풍부합니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 8,000원 </small>
					    </div>
					  </div>	
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/bibim.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">BiBimBab(비빔밥)</h5>
					      <p class="card-text">Bibimbap, a popular Korean dish, consists of mixed rice topped with various seasoned vegetables, meat, and a spicy sauce. It is served with a range of side dishes and enjoyed for its vibrant flavors and textures.</p>
					      <p class="card-text">비빔밥은 한국의 대표적인 요리 중 하나로, 다양한 양념을 묻혀진 채소, 고기, 그리고 매운 소스가 올려진 혼밥입니다. 다양한 반찬과 함께 제공되며, 생동감 넘치는 맛과 식감으로 즐겨지는 요리입니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 12,000원 </small>
					    </div>
					  </div>	
					</div>
					
				  </div>
				</div>
            </div>
          </div>

          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Japanese cuisine(일식)</h3>
              <div class="subheading mb-3">representative Japanese food(일본을 대표하는 음식)</div>
              
              <div class="slider">
	              <div class="over">
	                <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/ramen.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Ramen(라멘)</h5>
						  <p class="card-text">Ramen is a beloved Japanese noodle dish consisting of wheat noodles served in a savory broth, typically flavored with soy sauce or miso. It is often topped with sliced pork, green onions, nori, and other toppings, offering a satisfying umami-rich flavor experience. </p>
					      <p class="card-text">라멘은 일본의 대표적인 면 요리로, 보통 간장 또는 미소로 향긋한 국물에 담긴 밀가루 면으로 이루어져 있습니다. 종종 슬라이스된 돼지고기, 파, 김 등으로 토핑하여, 풍성한 양념맛을 느낄 수 있습니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 13,000 원</small>
					    </div>
					  </div>
					</div>
					
				    <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/sushi.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Sushi(초밥)</h5>
					      <p class="card-text">Sushi is a traditional Japanese dish consisting of vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. It is often served with pickled ginger, wasabi, and soy sauce, and enjoyed for its fresh flavors and artistic presentation.</p>
					      <p class="card-text">초밥은 일본의 전통적인 요리로, 식초로 맛을 낸 밥에 다양한 식재료를 올려 만든 음식입니다. 주로 해산물, 채소, 가끔은 열대 과일과 함께 섭취됩니다. 피클링된 생강, 와사비, 간장과 함께 제공되며, 신선한 맛과 아름다운 모습으로 즐겨집니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 30,000 원</small>
					    </div>
					  </div>
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/udon.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Udon(우동)</h5>
					      <p class="card-text">Udon is a quintessential Japanese noodle dish, featuring thick wheat noodles served either in a flavorful broth or chilled. It is commonly seasoned with ingredients such as dashi, soy sauce, and salt, and enjoyed with a variety of toppings.</p>
					      <p class="card-text">우동은 일본의 대표적인 면 요리 중 하나로, 국물이나 냉면 형태로 즐기는 밀가루 면 요리입니다. 보통 다시마, 가쓰오부시, 소금 등으로 맛을 내며, 다양한 토핑과 함께 즐겨집니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 12,000원 </small>
					    </div>
					  </div>	
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/nabe.jpg" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Nabe(나베)</h5>
					      <p class="card-text">Nabe is a representative winter dish in Japan, consisting of various ingredients such as meat, seafood, and vegetables cooked in a hot pot of broth. It comes in many variations and is a popular choice for home-cooked meals as well.</p>
					      <p class="card-text">나베는 일본의 대표적인 겨울 요리로, 국물에 고기, 해산물, 채소 등을 넣어 끓여 먹는 음식입니다. 다양한 종류가 있으며, 가정에서도 손쉽게 즐길 수 있는 인기 메뉴입니다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 8,000원 </small>
					    </div>
					  </div>	
					</div>
					
				  </div>
				</div>
            </div>
          </div>
          
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">Chinese cuisine(중식)</h3>
              <div class="subheading mb-3">representative Chinese food(중국을 대표하는 음식)</div>
              
              <div class="slider">
	              <div class="over">
	                <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/jajang.JPG" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Jajangmyeon(짜장면)</h5>
						  <p class="card-text"> A representative noodle dish from China, typically served with black bean sauce over thick, chewy noodles.</p>
					      <p class="card-text">중국의 대표적인 면 요리로, 탄탄면에 짜장 소스를 곁들여 먹는다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 5,000 원</small>
					    </div>
					  </div>
					</div>
					
				    <div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/tang.JPG" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Tangsuyuk(탕수육)</h5>
					      <p class="card-text">A Chinese-style deep-fried dish, where meat is fried and coated with a sweet and sour sauce.</p>
					      <p class="card-text">고기를 튀겨 단 새콤한 소스로 뒤덮은 중국식 튀김 요리이다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 30,000 원</small>
					    </div>
					  </div>
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/mapa.JPG" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Mapa(마파두부)</h5>
					      <p class="card-text">A traditional Chinese dish made by cooking meat and tofu in chili oil, known for its spicy and flavorful taste.</p>
					      <p class="card-text">고추 기름에 고기와 두부를 넣어 만든 중국의 전통적인 요리이다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 18,000원 </small>
					    </div>
					  </div>	
					</div>
					
					<div class="card-deck">            
					  <div class="card">
					    <img src="/reservation/resources/img/ggan.JPG" class="card-img-top" alt="..." style="height: 14.3vw">
					    <div class="card-body">
					      <h5 class="card-title">Kkanpunggi(깐풍기)</h5>
					      <p class="card-text"> A dish made by frying chicken and tossing it in a spicy sauce, known for its crispy texture and bold flavors.</p>
					      <p class="card-text">닭고기를 튀기고 매콤한 소스에 버무려낸 요리이다.</p>
					    </div>
					    <div class="card-footer">
					      <small class="text-muted">가격 : 18,000원 </small>
					    </div>
					  </div>	
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
		  <section class="section bg-light pb-0">
		      <div class="container">
		       
		        <div class="row check-availabilty" id="next">
		          <div class="block-32 aos-init aos-animate" data-aos="fade-up" data-aos-offset="-200">
		            <form action="#">
		              <div class="row">
		                <div id="reserve" class="col-md-6 mb-3 mb-lg-0 col-lg-5">
		                  <label for="checkin_date" class="font-weight-bold text-black">Reserve Date</label>
		                  <div class="field-icon-wrap">
		                    <div class="icon"><span class="icon-calendar"></span></div>
		                    <input type="text" id="checkin_date" class="form-control">
		                  </div>
		                </div>

		                <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
		                  <div class="row">
		                    <div class="col-md-6 mb-3 mb-md-0">
		                      <label for="adults" class="font-weight-bold text-black">Adults</label>
		                      <div class="field-icon-wrap">
		                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                        <select name="" id="adults" class="form-control">
		                          <option value="1">1</option>
		                          <option value="2">2</option>
		                          <option value="3">3</option>
		                          <option value="4">4</option>
		                        </select>
		                      </div>
		                    </div>
		                    <div class="col-md-6 mb-3 mb-md-0">
		                      <label for="children" class="font-weight-bold text-black">Children</label>
		                      <div class="field-icon-wrap">
		                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                        <select name="" id="children" class="form-control">
		                          <option value="1">1</option>
		                          <option value="2">2</option>
		                          <option value="3">3</option>
		                          <option value="4">4</option>
		                        </select>
		                      </div>
		                    </div>
		                  </div>		                  
		                </div>

		                <span class="col-md-6 mb-3 mb-lg-0 col-lg-12"> *8명 이상 주문할 경우 매장으로 전화 혹은 방문을 통해 예약해주시길 바랍니다.</span>
		              </div>
		              <div class="time_area">
		            	<div class="calendar_time_slot">
		            		<div class="time_title mt-2">오전</div>
		            			<ul class="time_list">
		            				<li class="time_item">
		            					<button type="button" class="btn_time">10:00</button>
		            				</li>
		            				<li class="time_item">
		            					<button type="button" class="btn_time">10:30</button>
		            				</li>
		            				<li class="time_item">
		            					<button type="button" class="btn_time">11:00</button>
		            				</li>
		            			</ul>
		            			<div class="time_title">오후</div>
		            				<ul class="time_list">
		            					<li class="time_item">
		            						<button type="button" class="btn_time">12:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time">1:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time">2:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time">3:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time">4:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time">5:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time unselectable">6:00</button>
		            					</li>
		            					<li class="time_item">
		            						<button type="button" class="btn_time unselectable">7:00</button>
		            					</li>
										<li class="time_item">
											<button type="button" class="btn_time unselectable">8:00</button>
										</li>
									</ul>
								</div>
								
								<div class="owl-item active" style="width: 1110px; margin-right: 30px;">
									<div class="prising_active d-flex justify-content-between">
			                            <div class="single_prising col-md-4 p-0">
			                                <div class="prise_title">
			                                    <h4>KOREAN CUISINE(한식)</h4>
			                                </div>
			                                <div class="single_service">
			                                    <div class="service_inner">
			                                        <div class="thumb">
			                                            <img src="img/prising/1.png" alt="">
			                                        </div>
			                                    </div>
			                                    <div class="hair_style_info">
			                                    	
			                                        <div class="prise d-flex">
			                                            <input type="checkbox" name="jeyuk" class="mr-2">
			                                            <span>JEYUK-BOKKEUM(제육볶음)</span>
			                                            <span>15,000원</span>
			                                        </div>
			                                        <p>주문할 음식 수를 선택해주세요</p>
			                                        <input type="number" name="jeyuk_num" min="0">
			                                    </div>
			                                </div>
			                                <div class="single_service">
			                                    <div class="service_inner">
			                                        <div class="thumb">
			                                            <img src="img/prising/1.png" alt="">
			                                        </div>
			                                    </div>
			                                    <div class="hair_style_info">
			                                        <div class="prise d-flex">
			                                            <input type="checkbox" name="bulgogy" class="mr-2">
			                                            <span>BULGOGI(불고기)</span>
			                                            <span>20,000원</span>
			                                        </div>
			                                        <p>주문할 음식 수를 선택해주세요 </p>
			                                        <input type="number" name="bulgogy_num" min="0">
			                                    </div>
			                                </div>
			                                <div class="single_service">
			                                    <div class="service_inner">
			                                        <div class="thumb">
			                                            <img src="img/prising/1.png" alt="">
			                                        </div>
			                                    </div>
			                                    <div class="hair_style_info">
			                                        <div class="prise d-flex">
			                                        <input type="checkbox" name="bossam" class="mr-2">
			                                            <span>BOSSAM(보쌈)</span>
			                                            <span>20,000원</span>
			                                        </div>
			                                        <p>주문할 음식 수를 선택해주세요 </p>
			                                        <input type="number" name="bossam_num" min="0">
			                                    </div>
			                                </div>
			                                <div class="single_service">
			                                    <div class="service_inner">
			                                        <div class="thumb">
			                                            <img src="img/prising/1.png" alt="">
			                                        </div>
			                                    </div>
			                                    <div class="hair_style_info">
			                                        <div class="prise d-flex">
			                                        <input type="checkbox" name="gimbab" class="mr-2" min="0">
			                                            <span>GIMBAB(김밥)</span>
			                                            <span>8,000원</span>
			                                        </div>
			                                        <p>주문할 음식 수를 선택해주세요(김밥은 한 줄 가격입니다.) </p>
			                                        <input type="number" name="gimbab_num" min="0">
			                                    </div>
			                                </div>
			                                <div class="single_service">
			                                    <div class="service_inner">
			                                        <div class="thumb">
			                                            <img src="img/prising/1.png" alt="">
			                                        </div>
			                                    </div>
			                                    <div class="hair_style_info">
			                                        <div class="prise d-flex">
			                                        <input type="checkbox" name="bibimbab" class="mr-2">
			                                            <span>BIBIMBAB(비빔밥)</span>
			                                            <span>12,000원</span>
			                                        </div>
			                                        <p>주문할 음식 수를 선택해주세요 </p>
			                                        <input type="number" name="bibimbab_num" min="0">
			                                    </div>
			                                </div>
			                            </div>
		                            
		                            <div class="single_prising col-md-4">
		                                <div class="prise_title">
		                                    <h4>JAPANEANES CUISINE(일식)</h4>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="ramen" class="mr-2">
		                                            <span>RAMEN(라멘)</span>
		                                            <span>12,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요 </p>
		                                        <input type="number" name="ramen_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="sushi" class="mr-2">
		                                            <span>SUSHI(초밥)</span>
		                                            <span>30,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요.</p>
		                                        <p style="font-size: 13px;">새우초밥 1p, 연어 1p, 계란초밥 1p, 소고기초밥 1p, 간장새우초밥 1p, 활어초밥 1p, 홍합초밥 1p, 가리비 초밥 1p, 장어초밥 1p, 가지초밥 1p, 참치초밥 1p, 연어알 초밥 1p 총 12p</p>
		                                        <input type="number" name="sushi_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="udong" class="mr-2">
		                                            <span>UDON(우동)</span>
		                                            <span>12,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요</p>
		                                        <input type="number" name="udong_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="nabe" class="mr-2">
		                                            <span>NABE(나베)</span>
		                                            <span>8,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요</p>
		                                        <input type="number" name="nabe_num" min="0">
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="single_prising col-md-4">
		                                <div class="prise_title">
		                                    <h4>CHINESE CUISINE(중식)</h4>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="jajng" class="mr-2">
		                                            <span>JAJANGMYEON(짜장면)</span>
		                                            <span>5,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요 </p>
		                                        <input type="number" name="jajng_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="tangsuyuk" class="clickable mr-2" onclick="showText(this)">
		                                            <span>TANGSUYUK(탕수육))</span>
		                                            <span>30,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요.</p>
		                                        <input type="number" name="tangsuyuk_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="mapa" class="mr-2">
		                                            <span>MAPA(마파두부)</span>
		                                            <span>18,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요</p>
		                                        <input type="number" name="mapa_num" min="0">
		                                    </div>
		                                </div>
		                                <div class="single_service">
		                                    <div class="service_inner">
		                                        <div class="thumb">
		                                            <img src="img/prising/1.png" alt="">
		                                        </div>
		                                    </div>
		                                    <div class="hair_style_info">
		                                        <div class="prise d-flex">
		                                        <input type="checkbox" name="kkanpunggi" class="mr-2">
		                                            <span>KKANPUNGGI(깐풍기)</span>
		                                            <span>18,000원</span>
		                                        </div>
		                                        <p>주문할 음식 수를 선택해주세요</p>
		                                        <input type="number" name="kkanpunggi_num" min="0">
		                                    </div>
		                                </div>
		                            </div>
		                            
                      			  </div>
                      			</div>
                      			
								  <div id="displaytext">
									<p></p>
									<div></div>
								<div class="border border-dark">
									<p>
								</div>
								
					           <div class="col-md-6 col-lg-3 align-self-end p-0 mt-2">
				                 <button class="btn btn-primary btn-block text-white">reserve</button>
				              	</div>
					          </div>

				            </form>

					        </div>
					      </div>
					    </section>
            
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
<script src="/reservation/resources/js/my.js"></script>
<script src="/reservation/resources/js/restoran_info.js"></script>
</html>