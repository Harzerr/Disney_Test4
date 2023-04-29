<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./static/style.css">
</head>
<body>
	<div class="container">
		<!-- 第一个卡片 -->
		<div class="card">
			<div class="content">
				<h2>01</h2>
				<h3>allShow</h3>
				<p>你可以点击当前卡片显示所有用户信息</p>
				<a href="allShow.jsp">用户显示功能</a>
			</div>
		</div>
		<!-- 第二个卡片 -->
		<div class="card">
			<div class="content">
				<h2>02</h2>
				<h3>insert</h3>
				<p>你可以点击当前卡片插入用户信息</p>
				<a href="insert.jsp">用户新增功能</a>
			</div>
		</div>
		<!-- 第三个卡片 -->
		<div class="card">
			<div class="content">
				<h2>04</h2>
				<h3>dele</h3>
				<p>你可以点击当前卡片删除用户信息</p>
				<a href="dele.jsp">用户删除功能</a>
			</div>
		</div>
	</div>

	<div class="container">
		<!-- 第一个卡片 -->
		<div class="card">
			<div class="content">
				<h2>03</h2>
				<h3>update</h3>
				<p>你可以点击当前卡片更新用户信息</p>
				<a href="update.jsp">用户更新功能</a>
			</div>
		</div>
		<!-- 第二个卡片 -->
		<div class="card">
			<div class="content">
				<h2>04</h2>
				<h3>search</h3>
				<p>你可以点击当前卡片检索用户信息</p>
				<a href="search.jsp">用户检索功能</a>
			</div>
		</div>

		<!-- 第三个卡片 -->
		<div class="card">
			<div class="content">
				<h2>06</h2>
				<h3>upload</h3>
				<p>你可以点击当前卡片实现批量上传</p>
				<a href="upload.jsp">批量上传功能</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="vanilla-tilt.js"></script>
	<script>
        VanillaTilt.init(document.querySelector(".your-element"), {
		max: 25,
		speed: 400,
        glare:true,
        "max-glare":1,
	});
    </script>
	<span class="js-cursor-container"></span>
	<script>
        (function fairyDustCursor() {
 
            var possibleColors = ["#D61C59", "#E7D84B", "#1B8798"]
            var width = window.innerWidth;
            var height = window.innerHeight;
            var cursor = { x: width / 2, y: width / 2 };
            var particles = [];
 
            function init() {
                bindEvents();
                loop();
            }
 
           
            function bindEvents() {
                document.addEventListener('mousemove', onMouseMove);
                window.addEventListener('resize', onWindowResize);
            }
 
            function onWindowResize(e) {
                width = window.innerWidth;
                height = window.innerHeight;
            }
 
            function onMouseMove(e) {
                cursor.x = e.clientX;
                cursor.y = e.clientY;
 
                addParticle(cursor.x, cursor.y, possibleColors[Math.floor(Math.random() * possibleColors.length)]);
            }
 
            function addParticle(x, y, color) {
                var particle = new Particle();
                particle.init(x, y, color);
                particles.push(particle);
            }
 
            function updateParticles() {
 
                
                for (var i = 0; i < particles.length; i++) {
                    particles[i].update();
                }
 
               
                for (var i = particles.length - 1; i >= 0; i--) {
                    if (particles[i].lifeSpan < 0) {
                        particles[i].die();
                        particles.splice(i, 1);
                    }
                }
 
            }
 
            function loop() {
                requestAnimationFrame(loop);
                updateParticles();
            }
 
          
 
            function Particle() {
 
                this.character = "*";
                this.lifeSpan = 120; //ms
                this.initialStyles = {
                    "position": "fixed",
                    "display": "inline-block",
                    "top": "0px",
                    "left": "0px",
                    "pointerEvents": "none",
                    "touch-action": "none",
                    "z-index": "10000000",
                    "fontSize": "25px",
                    "will-change": "transform"
                };
 
              
                this.init = function (x, y, color) {
 
                    this.velocity = {
                        x: (Math.random() < 0.5 ? -1 : 1) * (Math.random() / 2),
                        y: 1
                    };
 
                    this.position = { x: x + 10, y: y + 10 };
                    this.initialStyles.color = color;
 
                    this.element = document.createElement('span');
                    this.element.innerHTML = this.character;
                    applyProperties(this.element, this.initialStyles);
                    this.update();
 
                    document.querySelector('.js-cursor-container').appendChild(this.element);
                };
 
                this.update = function () {
                    this.position.x += this.velocity.x;
                    this.position.y += this.velocity.y;
                    this.lifeSpan--;
 
                    this.element.style.transform = "translate3d(" + this.position.x + "px," + this.position.y + "px, 0) scale(" + (this.lifeSpan / 120) + ")";
                }
 
                this.die = function () {
                    this.element.parentNode.removeChild(this.element);
                }
 
            }
 
           
            function applyProperties(target, properties) {
                for (var key in properties) {
                    target.style[key] = properties[key];
                }
            }
 
            if (!('ontouchstart' in window || navigator.msMaxTouchPoints)) init();
        })();    
    </script>

</body>
</html>
