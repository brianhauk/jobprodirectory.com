
var lastDisplayed = "";  // global used to expand text
var lastDisplayed2 = "";  // global used to expand text
var lastDisplayed3 = "";  // global used to expand text
var lastDisplayed4 = "";  // global used to expand text
var lastDisplayed5 = "";  // global used to expand text
var lastDisplayed6 = "";  // global used to expand text
var lastDisplayed7 = "";  // global used to expand text
var lastDisplayed8 = "";  // global used to expand text
var lastDisplayed9 = "";  // global used to expand text
var lastDisplayed10 = "";  // global used to expand text
var lastDisplayed11 = "";  // global used to expand text
var lastDisplayed12 = "";  // global used to expand text


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


function show_details5( elem )  {
	if ( lastDisplayed5 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed5 = "";
	} else {
		if ( lastDisplayed5 != "" )  {
			document.getElementById( lastDisplayed5 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed5 = elem;
	}
}


function show_details6( elem )  {
	if ( lastDisplayed6 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed6 = "";
	} else {
		if ( lastDisplayed6 != "" )  {
			document.getElementById( lastDisplayed6 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed6 = elem;
	}
}


function show_details7( elem )  {
	if ( lastDisplayed7 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed7 = "";
	} else {
		if ( lastDisplayed7 != "" )  {
			document.getElementById( lastDisplayed7 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed7 = elem;
	}
}


function show_details8( elem )  {
	if ( lastDisplayed8 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed8 = "";
	} else {
		if ( lastDisplayed8 != "" )  {
			document.getElementById( lastDisplayed8 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed8 = elem;
	}
}


function show_details9( elem )  {
	if ( lastDisplayed9 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed9 = "";
	} else {
		if ( lastDisplayed9 != "" )  {
			document.getElementById( lastDisplayed9 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed9 = elem;
	}
}


function show_details10( elem )  {
	if ( lastDisplayed10 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed10 = "";
	} else {
		if ( lastDisplayed10 != "" )  {
			document.getElementById( lastDisplayed10 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed10 = elem;
	}
}


function show_details11( elem )  {
	if ( lastDisplayed11 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed11 = "";
	} else {
		if ( lastDisplayed11 != "" )  {
			document.getElementById( lastDisplayed11 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed11 = elem;
	}
}


function show_details12( elem )  {
	if ( lastDisplayed12 == elem )  {
		document.getElementById( elem ).style.display = 'none';
		lastDisplayed12 = "";
	} else {
		if ( lastDisplayed12 != "" )  {
			document.getElementById( lastDisplayed12 ).style.display = 'none';
		}
		document.getElementById( elem ).style.display = 'block';
		lastDisplayed12 = elem;
	}
}



// ****** Stop all JavaScript Errors from reported by the browser ******

function stopError() {
//  return true;
}

window.onerror = stopError;


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



///////// start openWin - open window upon mouseOver - unused ///////
////////////////////////////////////////////////////////////////////

function openWin( windowURL, windowName, windowFeatures ) 
{
	return window.open( windowURL, windowName, windowFeatures ) ;
}

// example usage:
// <a href="javascript:void()" onMouseOver="JavaScript: newWindow = openWin( 'abbreviation_key.html', 'POPUP', 'width=442,height=500,toolbar=0,location=0,directories=0,status=0,menuBar=0,scrollBars=1,resizable=1,screenX=0,left=100,screenY=0,top=50' ); newWindow.focus()""  "" onClick=";return false">XXX</a>

///////// end openWin //////////////////////////////////////////////
////////////////////////////////////////////////////////////////////



///////// open various popup windows ///////////////////////////////
////////////////////////////////////////////////////////////////////

function open_data_loss_chart()
{
  var popurl="showdata_loss_chart.html"
  winpops=window.open(popurl,"","width=390,height=447,left=20,top=20")
}

function download_bccontacts()
{
  var popurl="showbccontacts_download.html"
  winpops=window.open(popurl,"","width=390,height=300,left=150,top=150")
}

function openfiltrum()
{
  var popurl="showfiltrum.html"
  winpops=window.open(popurl,"","width=910,height=558,left=20,top=20,scrollbars=yes")
}


function openshowcardnetdotnet()
{
  var popurl="showcardnetdotnet.html"
  winpops=window.open(popurl,"","width=800,height=680,left=20,top=20,scrollbars=yes")
}
  

function openshowecm()
{
  var popurl="showecm.html"
  winpops=window.open(popurl,"","width=800,height=680,left=20,top=20,scrollbars=yes")
}


///////// start generic mouseover - very useful but unused //////////
////////////////////////////////////////////////////////////////////

    if (document.images)
    {
        // Create Active images
        LearnMoreon = new Image();
        LearnMoreon.src = "images/LearnMoreActive.gif";

        LearnMoreoff = new Image();
        LearnMoreoff.src = "images/LearnMore.gif";
    }


//Activate Images
function imgOn(imgName)
    {
        if (document.images)
        {
            document[imgName].src = eval(imgName + "on.src");
        }
    }


//Deactivate Images
function imgOff(imgName) {
    if (document.images) {
    document[imgName].src = eval(imgName + "off.src");
    }
}

// Example usage:

//    <table width=100% cellpadding=0 cellspacing=0 border=0>
//    <tr><td align=left><a href="more.html" onMouseOver= "imgOn('LearnMore'); //self.status='Learn More'; return true" onMouseOut= "imgOff('LearnMore'); self.status=' '; //return true">
//    <img name="LearnMore" src="images/LearnMore.gif" width=88 height=18 alt="Learn More" //border="0"></a></td></tr>
//    </table>

///////// end generic mouseover - very useful //////////
////////////////////////////////////////////////////////


//////////////////////////// start showDate() - used on every page
//////////////////////////////////////////////////////////////////

var months=new Array(13);
months[1]="January";
months[2]="February";
months[3]="March";
months[4]="April";
months[5]="May";
months[6]="June";
months[7]="July";
months[8]="August";
months[9]="September";
months[10]="October";
months[11]="November";
months[12]="December";

var time=new Date();
var lmonth=months[time.getMonth() + 1];
var date=time.getDate();
var year=time.getYear();

if ((navigator.appName == "Microsoft Internet Explorer") && (year < 2000))
        year="19" + year;
if (navigator.appName == "Netscape")
        year=1900 + year;
        
function showDate() {
        document.write(lmonth + " ");
        document.write(date + ", " + year);
        document.close();
}

///	<SCRIPT LANGUAGE="JAVASCRIPT">showDate()</SCRIPT> to invoke       

//////////////////////////// end showDate() //////////////////////
//////////////////////////////////////////////////////////////////


///////////////////////////// start showLastUpdated - unused /////
//////////////////////////////////////////////////////////////////

function showLastUpdated() {
	document.write("last updated " + document.lastModified);
}	

///////////////////////////// end showLastUpdated ////////////////
//////////////////////////////////////////////////////////////////



///////////////////////////// start chooseStyle - unused /////////
//////////////////////////////////////////////////////////////////

function chooseStyle() { 
	//Give NS4.7 and below a different stylesheet

	if ((navigator.appName.indexOf("Netscape") != -1) 
		&& (parseInt(navigator.appVersion) < 5)) {
		document.write('<link rel="stylesheet" type="text/css" href="/stylesheetNS.css">');
	} else {
		document.write('<link rel="stylesheet" type="text/css" href="/stylesheet.css">');
	}
}

///////////////////////////// end chooseStyle ////////////////////
//////////////////////////////////////////////////////////////////



///////////////////////////// start clearDefault - clear SearchBox
//////////////////////////////////////////////////////////////////

function clearDefault(el) {
	if (el.defaultValue==el.value) el.value = ""
	// If Dynamic Style is supported, clear the style
	if (el.style) el.style.cssText = ""
}

///////////////////////////// end clearDefault ///////////////////
//////////////////////////////////////////////////////////////////



///////////////////////////// start searchSite ///////////////////
//////////////////////////////////////////////////////////////////

function searchSite(form) { 

  var SearchTerm = form.SearchBox.value;
  
  if ( (SearchTerm.length < 4) || (SearchTerm == "Enter Search Terms") ) { 
  
 // alert("SearchTerm length = " + SearchTerm.length);
  
  form.SearchBox.value = "Enter Search Terms"; return null;}
  
  
  // following width and height values ignored by window.open() ##########
  //var popurl="http://www.google.com/search?sourceid=navclient&ie=UTF-8&oe=UTF-8&q=site:www%2Edatacentrik%2Ecom " + SearchTerm;
  var popurl="http://www.google.com/search?q=site:www.BCContacts.Net " + SearchTerm;

  winpops=window.open(popurl,"","width=width,height=height,left=20,top=20,status=yes,toolbar=yes,menubar=yes,location=yes,resizable=yes,scrollbars=yes")
  
}

///////////////////////////// end searchSite /////////////////////
//////////////////////////////////////////////////////////////////

