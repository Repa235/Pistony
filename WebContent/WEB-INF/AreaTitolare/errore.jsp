<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <meta http-equiv="refresh" content="5;url=/AreaTitolare/ProfiloTitolare" /> -->

<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/Per_login.css" />

</head>
<body style="background: #0000FF">
	<!-- Header -->
	<header id="header">
		<a href="index.html" class="logo"><strong>Pistony</strong> by
			Toto's</a>
	</header>



	<section id="banner">
		<div class="inner">
			<h1 style="color: white; text-align: center;">Errore</h1>
			<h3 style="text-align: center; color: white;">
				<br> Qualcosa è andato storto nel sito, sembra essersi
				verificato un errore <br>
				<s:property value="exception" />
				<br> Ti invitiamo a tornare indietro
			</h3>




		</div>
	</section>


	<!-- Footer -->
	<div style="margin-top: 200px">
		<%@ include file="/WEB-INF/Generali/footer.jsp"%>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/Per_login.js"></script>

</body>
</html> --%>


	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="5;url=/AreaTitolare/ProfiloTitolare" />
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<link rel="apple-touch-icon" type="image/png" href="/assets/img/imgHome/icoPistony.png">
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon" href="/assets/img/imgHome/icoPistony.png">
<link rel="mask-icon" type="" href="/assets/img/imgHome/icoPistony.png">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bungee">  
<link rel="stylesheet" href="assets/css/errore.css" />

<title>Errore</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="xs-12 md-6 mx-auto">
				<div id="countUp">
					<body translate="no">
						<div class="glitch">
							<div class="glitch__item"></div>
							<div class="glitch__item"></div>
							<div class="glitch__item"></div>
							<div class="glitch__item"></div>
							<h5 class="glitch__title" align="center">
								Qualcosa &egrave; andato storto nel sito, sembra essersi
								verificato un errore
								
								<br>
								<s:property value="exception" />
								<br>
							<img alt="" src="https://www.superiorlawncareusa.com/wp-content/uploads/2020/05/loading-gif-png-5.gif" style="width: 10%; text-align: center;">
								<br>
								Attendere per essere reindirizzato alla tua Dashboard
							</h5>
						</div>
				</div>
			</div>
		</div>
	</div>

	<head>

<style>
:root {
  --color-text: #fff;
  --color-bg: #000;
  --color-link: #f9d77e;
  --color-link-hover: #fff;
  --color-info: #efc453;
  --glitch-width: 100vw;
  --glitch-height: 100vh;
  --gap-horizontal: 10px;
  --gap-vertical: 5px;
  --time-anim: 4s;
  --delay-anim: 2s;
  --blend-mode-1: none;
  --blend-mode-2: none;
  --blend-mode-3: none;
  --blend-mode-4: none;
  --blend-mode-5: overlay;
  --blend-color-1: transparent;
  --blend-color-2: transparent;
  --blend-color-3: transparent;
  --blend-color-4: transparent;
  --blend-color-5: #af4949;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  background-color: #1D1E22;
  margin: 0;
  padding: 0;
}

.glitch {
  width: 100vh;
  height: 100vh;
  max-width: 100%;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
}
.glitch .glitch__item {
  background: url("/assets/img/imgHome/LogoPistony.png") no-repeat 50% 50%/cover;
  height: 100%;
    opacity: 0.1;
  width: 100%;
  top: 0;
  left: 0;
  position: absolute;
}
.glitch .glitch__item:nth-child(n+2) {
  opacity: 0;
  animation-duration: var(--time-anim);
  animation-delay: var(--delay-anim);
  animation-timing-function: linear;
  animation-iteration-count: infinite;
}
.glitch .glitch__item:nth-child(2) {
  background-color: var(--blend-color-2);
  background-blend-mode: var(--blend-mode-2);
  animation-name: glitch-anim-2;
}
.glitch .glitch__item:nth-child(2) {
  background-color: var(--blend-color-3);
  background-blend-mode: var(--blend-mode-3);
  animation-name: glitch-anim-3;
}
.glitch .glitch__item:nth-child(4) {
  background-color: var(--blend-color-4);
  background-blend-mode: var(--blend-mode-4);
  animation-name: glitch-anim-4;
}
.glitch .glitch__item:nth-child(5) {
  background-color: var(--blend-color-5);
  background-blend-mode: var(--blend-mode-5);
  animation-name: glitch-anim-flash;
}
@keyframes glitch-anim-flash {
  0%, 5% {
    opacity: 0.2;
    transform: translate3d(var(--glitch-horizontal), var(--glitch-height), 0);
  }
  5.5%, 100% {
    opacity: 0;
    transform: translate3d(0, 0, 0);
  }
}
.glitch .glitch__title {
  font-family: "Bungee", cursive;
  font-size: 20px;
  color: #ffffff;
  position: relative;
  text-transform: uppercase;
}
.glitch .glitch__title:before, .glitch .glitch__title:after {
  content: "PISTONY";
      opacity: 0.1;
  
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.glitch .glitch__title:before {
  left: 2px;
  text-shadow: -1px 0 #00ffea;
  clip: rect(24px, 550px, 90px, 0);
  animation: glitch-anim 2s linear infinite alternate-reverse;
}
.glitch .glitch__title:after {
  left: -2px;
  text-shadow: -1px 0 #fe3a7f;
  clip: rect(85px, 550px, 140px, 0);
  animation: glitch-anim 2s 1s linear infinite alternate-reverse;
}
@keyframes glitch-anim {
  0% {
    clip: rect(91px, 9999px, 59px, 0);
  }
  5% {
    clip: rect(68px, 9999px, 57px, 0);
  }
  10% {
    clip: rect(64px, 9999px, 83px, 0);
  }
  15% {
    clip: rect(33px, 9999px, 145px, 0);
  }
  20% {
    clip: rect(34px, 9999px, 16px, 0);
  }
  25% {
    clip: rect(137px, 9999px, 75px, 0);
  }
  30% {
    clip: rect(119px, 9999px, 85px, 0);
  }
  35% {
    clip: rect(19px, 9999px, 44px, 0);
  }
  40% {
    clip: rect(2px, 9999px, 4px, 0);
  }
  45% {
    clip: rect(93px, 9999px, 23px, 0);
  }
  50% {
    clip: rect(70px, 9999px, 23px, 0);
  }
  55% {
    clip: rect(30px, 9999px, 97px, 0);
  }
  60% {
    clip: rect(125px, 9999px, 123px, 0);
  }
  65% {
    clip: rect(80px, 9999px, 158px, 0);
  }
  70% {
    clip: rect(107px, 9999px, 107px, 0);
  }
  75% {
    clip: rect(30px, 9999px, 111px, 0);
  }
  80% {
    clip: rect(114px, 9999px, 63px, 0);
  }
  85% {
    clip: rect(96px, 9999px, 136px, 0);
  }
  90% {
    clip: rect(130px, 9999px, 11px, 0);
  }
  95% {
    clip: rect(46px, 9999px, 122px, 0);
  }
  100% {
    clip: rect(57px, 9999px, 155px, 0);
  }
}

@keyframes glitch-anim-2 {
  0% {
    opacity: 1;
    transform: translate3d(var(--gap-horizontal), 0, 0);
    -webkit-clip-path: polygon(0 2%, 100% 2%, 100% 5%, 0 5%);
    clip-path: polygon(0 2%, 100% 2%, 100% 5%, 0 5%);
  }
  2% {
    -webkit-clip-path: polygon(0 15%, 100% 15%, 100% 15%, 0 15%);
    clip-path: polygon(0 15%, 100% 15%, 100% 15%, 0 15%);
  }
  4% {
    -webkit-clip-path: polygon(0 10%, 100% 10%, 100% 20%, 0 20%);
    clip-path: polygon(0 10%, 100% 10%, 100% 20%, 0 20%);
  }
  6% {
    -webkit-clip-path: polygon(0 1%, 100% 1%, 100% 2%, 0 2%);
    clip-path: polygon(0 1%, 100% 1%, 100% 2%, 0 2%);
  }
  8% {
    -webkit-clip-path: polygon(0 33%, 100% 33%, 100% 33%, 0 33%);
    clip-path: polygon(0 33%, 100% 33%, 100% 33%, 0 33%);
  }
  10% {
    -webkit-clip-path: polygon(0 44%, 100% 44%, 100% 44%, 0 44%);
    clip-path: polygon(0 44%, 100% 44%, 100% 44%, 0 44%);
  }
  12% {
    -webkit-clip-path: polygon(0 50%, 100% 50%, 100% 20%, 0 20%);
    clip-path: polygon(0 50%, 100% 50%, 100% 20%, 0 20%);
  }
  14% {
    -webkit-clip-path: polygon(0 70%, 100% 70%, 100% 70%, 0 70%);
    clip-path: polygon(0 70%, 100% 70%, 100% 70%, 0 70%);
  }
  16% {
    -webkit-clip-path: polygon(0 80%, 100% 80%, 100% 80%, 0 80%);
    clip-path: polygon(0 80%, 100% 80%, 100% 80%, 0 80%);
  }
  18% {
    -webkit-clip-path: polygon(0 50%, 100% 50%, 100% 55%, 0 55%);
    clip-path: polygon(0 50%, 100% 50%, 100% 55%, 0 55%);
  }
  20% {
    -webkit-clip-path: polygon(0 70%, 100% 70%, 100% 80%, 0 80%);
    clip-path: polygon(0 70%, 100% 70%, 100% 80%, 0 80%);
  }
  21.9% {
    opacity: 1;
    transform: translate3d(var(--gap-horizontal), 0, 0);
  }
  22%, 100% {
    opacity: 0;
    transform: translate3d(0, 0, 0);
    -webkit-clip-path: polygon(0 0, 0 0, 0 0, 0 0);
    clip-path: polygon(0 0, 0 0, 0 0, 0 0);
  }
}
@keyframes glitch-anim-3 {
  0% {
    opacity: 1;
    transform: translate3d(calc(-1 * var(--gap-horizontal)), 0, 0);
    -webkit-clip-path: polygon(0 25%, 100% 25%, 100% 30%, 0 30%);
    clip-path: polygon(0 25%, 100% 25%, 100% 30%, 0 30%);
  }
  3% {
    -webkit-clip-path: polygon(0 3%, 100% 3%, 100% 3%, 0 3%);
    clip-path: polygon(0 3%, 100% 3%, 100% 3%, 0 3%);
  }
  5% {
    -webkit-clip-path: polygon(0 5%, 100% 5%, 100% 20%, 0 20%);
    clip-path: polygon(0 5%, 100% 5%, 100% 20%, 0 20%);
  }
  7% {
    -webkit-clip-path: polygon(0 20%, 100% 20%, 100% 20%, 0 20%);
    clip-path: polygon(0 20%, 100% 20%, 100% 20%, 0 20%);
  }
  9% {
    -webkit-clip-path: polygon(0 40%, 100% 40%, 100% 40%, 0 40%);
    clip-path: polygon(0 40%, 100% 40%, 100% 40%, 0 40%);
  }
  11% {
    -webkit-clip-path: polygon(0 52%, 100% 52%, 100% 59%, 0 59%);
    clip-path: polygon(0 52%, 100% 52%, 100% 59%, 0 59%);
  }
  13% {
    -webkit-clip-path: polygon(0 60%, 100% 60%, 100% 60%, 0 60%);
    clip-path: polygon(0 60%, 100% 60%, 100% 60%, 0 60%);
  }
  15% {
    -webkit-clip-path: polygon(0 75%, 100% 75%, 100% 75%, 0 75%);
    clip-path: polygon(0 75%, 100% 75%, 100% 75%, 0 75%);
  }
  17% {
    -webkit-clip-path: polygon(0 65%, 100% 65%, 100% 40%, 0 40%);
    clip-path: polygon(0 65%, 100% 65%, 100% 40%, 0 40%);
  }
  19% {
    -webkit-clip-path: polygon(0 45%, 100% 45%, 100% 50%, 0 50%);
    clip-path: polygon(0 45%, 100% 45%, 100% 50%, 0 50%);
  }
  20% {
    -webkit-clip-path: polygon(0 14%, 100% 14%, 100% 33%, 0 33%);
    clip-path: polygon(0 14%, 100% 14%, 100% 33%, 0 33%);
  }
  21.9% {
    opacity: 1;
    transform: translate3d(calc(-1 * var(--gap-horizontal)), 0, 0);
  }
  22%, 100% {
    opacity: 0;
    transform: translate3d(0, 0, 0);
    -webkit-clip-path: polygon(0 0, 0 0, 0 0, 0 0);
    clip-path: polygon(0 0, 0 0, 0 0, 0 0);
  }
}
@keyframes glitch-anim-4 {
  0% {
    opacity: 1;
    transform: translate3d(0, calc(-1 * var(--gap-vertical)), 0) scale3d(-1, -1, 1);
    -webkit-clip-path: polygon(0 1%, 100% 1%, 100% 3%, 0 3%);
    clip-path: polygon(0 1%, 100% 1%, 100% 3%, 0 3%);
  }
  1.5% {
    -webkit-clip-path: polygon(0 10%, 100% 10%, 100% 9%, 0 9%);
    clip-path: polygon(0 10%, 100% 10%, 100% 9%, 0 9%);
  }
  2% {
    -webkit-clip-path: polygon(0 5%, 100% 5%, 100% 6%, 0 6%);
    clip-path: polygon(0 5%, 100% 5%, 100% 6%, 0 6%);
  }
  2.5% {
    -webkit-clip-path: polygon(0 20%, 100% 20%, 100% 20%, 0 20%);
    clip-path: polygon(0 20%, 100% 20%, 100% 20%, 0 20%);
  }
  3% {
    -webkit-clip-path: polygon(0 10%, 100% 10%, 100% 10%, 0 10%);
    clip-path: polygon(0 10%, 100% 10%, 100% 10%, 0 10%);
  }
  5% {
    -webkit-clip-path: polygon(0 30%, 100% 30%, 100% 25%, 0 25%);
    clip-path: polygon(0 30%, 100% 30%, 100% 25%, 0 25%);
  }
  5.5% {
    -webkit-clip-path: polygon(0 15%, 100% 15%, 100% 16%, 0 16%);
    clip-path: polygon(0 15%, 100% 15%, 100% 16%, 0 16%);
  }
  7% {
    -webkit-clip-path: polygon(0 40%, 100% 40%, 100% 39%, 0 39%);
    clip-path: polygon(0 40%, 100% 40%, 100% 39%, 0 39%);
  }
  8% {
    -webkit-clip-path: polygon(0 20%, 100% 20%, 100% 21%, 0 21%);
    clip-path: polygon(0 20%, 100% 20%, 100% 21%, 0 21%);
  }
  9% {
    -webkit-clip-path: polygon(0 60%, 100% 60%, 100% 55%, 0 55%);
    clip-path: polygon(0 60%, 100% 60%, 100% 55%, 0 55%);
  }
  10.5% {
    -webkit-clip-path: polygon(0 30%, 100% 30%, 100% 31%, 0 31%);
    clip-path: polygon(0 30%, 100% 30%, 100% 31%, 0 31%);
  }
  11% {
    -webkit-clip-path: polygon(0 70%, 100% 70%, 100% 69%, 0 69%);
    clip-path: polygon(0 70%, 100% 70%, 100% 69%, 0 69%);
  }
  13% {
    -webkit-clip-path: polygon(0 40%, 100% 40%, 100% 41%, 0 41%);
    clip-path: polygon(0 40%, 100% 40%, 100% 41%, 0 41%);
  }
  14% {
    -webkit-clip-path: polygon(0 80%, 100% 80%, 100% 75%, 0 75%);
    clip-path: polygon(0 80%, 100% 80%, 100% 75%, 0 75%);
  }
  14.5% {
    -webkit-clip-path: polygon(0 50%, 100% 50%, 100% 51%, 0 51%);
    clip-path: polygon(0 50%, 100% 50%, 100% 51%, 0 51%);
  }
  15% {
    -webkit-clip-path: polygon(0 90%, 100% 90%, 100% 90%, 0 90%);
    clip-path: polygon(0 90%, 100% 90%, 100% 90%, 0 90%);
  }
  16% {
    -webkit-clip-path: polygon(0 60%, 100% 60%, 100% 60%, 0 60%);
    clip-path: polygon(0 60%, 100% 60%, 100% 60%, 0 60%);
  }
  18% {
    -webkit-clip-path: polygon(0 100%, 100% 100%, 100% 99%, 0 99%);
    clip-path: polygon(0 100%, 100% 100%, 100% 99%, 0 99%);
  }
  20% {
    -webkit-clip-path: polygon(0 70%, 100% 70%, 100% 71%, 0 71%);
    clip-path: polygon(0 70%, 100% 70%, 100% 71%, 0 71%);
  }
  21.9% {
    opacity: 1;
    transform: translate3d(0, calc(-1 * var(--gap-vertical)), 0) scale3d(-1, -1, 1);
  }
  22%, 100% {
    opacity: 0;
    transform: translate3d(0, 0, 0);
    -webkit-clip-path: polygon(0 0, 0 0, 0 0, 0 0);
    clip-path: polygon(0 0, 0 0, 0 0, 0 0);
  }
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<style>

@import url('https://fonts.googleapis.com/css?family=Roboto+Mono:300,500');

html, body {
    width: 100%;
    height: 100%;
}

body {
    background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/257418/andy-holmes-698828-unsplash.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    min-height: 100vh;
    min-width: 100vw;
    font-family: "Roboto Mono", "Liberation Mono", Consolas, monospace;
    color: rgba(255,255,255,.87);
}

.mx-auto {
    margin-left: auto;
    margin-right: auto;
}

.container,
.container > .row,
.container > .row > div {
    height: 100%;
}

#countUp {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100%;
    
    .number {
        font-size: 4rem;
        font-weight: 500;
        
        + .text {
            margin: 0 0 1rem;
        }
    }
    
    .text {
        font-weight: 300;
        text-align: center;
    }
}
</style>
</body>
</html>
