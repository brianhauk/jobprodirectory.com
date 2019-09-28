

var lastDisplayed = "";  // global used to expand text
var lastDisplayed2 = "";  // global used to expand text
var lastDisplayed3 = "";  // global used to expand text
var lastDisplayed4 = "";  // global used to expand text

function show_details( elem )  {
	if ( lastDisplayed == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed = "";
	} else {
		if ( lastDisplayed != "" )  {
			document.getElementById( lastDisplayed ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed = elem;
	}
}


function show_details2( elem )  {
	if ( lastDisplayed2 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed2 = "";
	} else {
		if ( lastDisplayed2 != "" )  {
			document.getElementById( lastDisplayed2 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed2 = elem;
	}
}


function show_details3( elem )  {
	if ( lastDisplayed3 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed3 = "";
	} else {
		if ( lastDisplayed3 != "" )  {
			document.getElementById( lastDisplayed3 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed3 = elem;
	}
}


function show_details4( elem )  {
	if ( lastDisplayed4 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed4 = "";
	} else {
		if ( lastDisplayed4 != "" )  {
			document.getElementById( lastDisplayed4 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed4 = elem;
	}
}

///////////////////////// scroll page slowly up - start ////////////
////////////////////////////////////////////////////////////////////

//User Agent
var ua = new Object();
function setUa(){
	var nav_ua = navigator.userAgent;
	var nav_app = navigator.appName;
	var nav_ver = navigator.appVersion;

	//ua
	ua.dom = document.getElementById;
	ua.omn = nav_ua.indexOf("OmniWeb") != -1;
	ua.n4 = document.layers && !ua.omn;
	ua.opera = window.opera;
	ua.ie = document.all && !ua.opera;
	ua.safari = nav_ua.indexOf("safari",0) != -1;
	ua.gecko = (nav_ua.indexOf("Gecko",0) != -1) && !ua.safari;
	ua.netscape = nav_ua.indexOf("Netscape") != -1;
	ua.firefox = nav_ua.indexOf("Firefox") != -1;

	//os
	ua.mac = nav_ver.indexOf('Mac',0) != -1;
	ua.win = nav_ver.indexOf('Win',0) != -1;

	//iever
	var s = nav_ua.indexOf("MSIE ",0) + 5;
	var e = nav_ua.indexOf(";",s);
	ua.iever = nav_ua.substring(s,e);
}
setUa();

//Smooth Scroll
function smoothScroll(elem,yLastPosition,yTargetPosition) {
	var xScrollSpeed = 1;
	var yScrollSpeed = 1.1;

	var y1 = y2 = 0;
	if (document.documentElement) y1 = document.documentElement.scrollTop || 0;
	if (document.body) y2 = document.body.scrollTop || 0;
	var yNow = Math.max(y1, y2);

	if(!yLastPosition) yLastPosition = yNow;

	var xTarget = yTarget = 0;
	if(!yTargetPosition){
		if(!elem) var elem = "anchorPagetop";
		if(elem.substring(0,7)=="http://"){
			if(elem.indexOf("#")!=-1){
				elem = elem.split("#")[1];
			}else{
				elem = "anchorPagetop";
			}
		}

		if(document.getElementById && elem!="anchorPagetop"){
			var obj = document.getElementById(elem);
			if(elem) {
				yTarget = obj.offsetTop;
				while((obj = obj.offsetParent) != null){
					yTarget += obj.offsetTop;
				}
			}
		}
		if(yTarget>getWindowScrollSize().height-getWindowInnerSize().height) {
			yTarget = getWindowScrollSize().height-getWindowInnerSize().height;
		}
	} else {
		yTarget = yTargetPosition;
	}

	var xTempTarget = xTarget;
	var yTempTarget = yTarget;

	if(yTarget>yNow) yTempTarget = Math.ceil( yTarget - ( yTarget - yNow ) / yScrollSpeed );
	if(yTarget<yNow) yTempTarget = Math.floor( ( yNow - yTarget ) / yScrollSpeed + yTarget );
	window.scrollTo(xTempTarget, yTempTarget);

	if (yTarget!=yNow && yLastPosition==yNow) {
		var nextFunc = "smoothScroll('" + elem + "'," + yTempTarget + "," + yTarget + ")";
		window.setTimeout(nextFunc, 16);
	}
}

//window inner size
function getWindowInnerSize(){
	var obj = new Object();
	if(document.all || (document.getElementById && ua.ie)){
		obj.width = document.documentElement.clientWidth;
		obj.height = document.documentElement.clientHeight;
	} else if(document.layers || document.getElementById){
		obj.width = window.innerWidth;
		obj.height = window.innerHeight;
	}
	return obj;
}

//window scroll size
function getWindowScrollSize(){
	var obj = new Object();
	obj.width = document.documentElement.scrollWidth;
	obj.height = document.documentElement.scrollHeight;
	return obj;
}


///////////////////////// scroll page slowly up - end //////////////
////////////////////////////////////////////////////////////////////


//////////////////// determine screen size - start /////////////////
////////////////////////////////////////////////////////////////////

// for NN4/IE4
if (self.screen) {
        width = screen.width
        height = screen.height
}

// for NN3 w/Java
else if (self.java) {
       var javakit = java.awt.Toolkit.getDefaultToolkit();
       var scrsize = javakit.getScreenSize();
       width = scrsize.width;
       height = scrsize.height;
}
else {

// N2, E3, N3 w/o Java (Opera and WebTV)
width = height = '?'
}

if ( ( width < 1024 ) && ( height < 768 ) ) self.status='This site is best viewed at a screen resolution of 1024 X 768. Your resolution is set to ' + width +" X "+ height + ".";

//////////////////// determine screen size - end ////////////////////
////////////////////////////////////////////////////////////////////
