<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="GetToWorkServer.GetToWork.HelloAppEngine" %>
<html>
<head>


  <link href='//fonts.googleapis.com/css?family=Marmelad' rel='stylesheet' type='text/css'>
  <title>Hello App Engine Standard Java 8</title>
  

<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif;}
.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-theme-l1">Get To Work</a>
    <a href="https://gettoworkproduct.weebly.com/dev-guide.html" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Developer Guide</a>
    <a href="https://gettoworkproduct.weebly.com/user-guide.html" class="w3-bar-item w3-button w3-hide-small w3-hover-white">User Guide</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">News</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Contact/Bug Report</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hide-medium w3-hover-white">Clients</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hide-medium w3-hover-white">Partners</a>
  </div>
</div>

<!-- Sidebar -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>Menu</b></h4>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">Link</a>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Learn more more about your resume</h1>
       
 
<form method="POST" enctype="multipart/form-data" action="FileUploadServlet"> <!-- The action might have some issues GetToWorkServer.GetToWork -->
  Copy and Paste your Resume or Cover Letter: <input type="text" name="resume" id="resumeText" style="height:200px;font-size:14pt;" ><br/>
  <br/>
  <input type="button" value="Press" onclick="getText()" id="resumeText"> 
</form>

<div id="demo1">  </div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

function splitByWords (text) {
	  // split string by spaces (including spaces, tabs, and newlines)
	  var wordsArray = text.split(/\s+/);
	  return wordsArray;
	}


	function createWordMap (wordsArray) {

	  // create map for word counts
	  var wordsMap = {};

	  wordsArray.forEach(function (key) {
	    if (wordsMap.hasOwnProperty(key)) {
	      wordsMap[key]++;
	    } else {
	      wordsMap[key] = 1;
	    }
	  });

	  return wordsMap;

	}


	function sortByCount (wordsMap) {

	  // sort by count in descending order
	  var finalWordsArray = [];
	  finalWordsArray = Object.keys(wordsMap).map(function(key) {
	    return {
	      name: key,
	      total: wordsMap[key]
	    };
	  });

	  finalWordsArray.sort(function(a, b) {
	    return b.total - a.total;
	  });

	  return finalWordsArray;

	}


function getText(){
	
	var resumeText = document.getElementById("resumeText").value;
	
	resumeText = resumeText.replace(/,/g, '');
	resumeText = resumeText.replace(new RegExp('and ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp(' for', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp(' be ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp(':', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('to ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('the ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('that ', 'g'), '');
	resumeText = resumeText.replace(new RegExp(' on ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('with ', 'g'), '');
	resumeText = resumeText.replace(new RegExp('set ', 'g'), '');
	resumeText = resumeText.replace(new RegExp('from ', 'g'), '');
	resumeText = resumeText.replace(new RegExp('when ', 'g'), '');
	resumeText = resumeText.replace(new RegExp(' be ', 'g'), '');
	resumeText = resumeText.replace(new RegExp(' for ', 'g'), '');
	resumeText = resumeText.replace(new RegExp(' a ', 'g'), ' ');  
	resumeText = resumeText.replace(new RegExp(' in ', 'g'), ' ');  
	resumeText = resumeText.replace(new RegExp('-', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp(' an ', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp(' of ', 'g'), ' ');

	resumeText = resumeText.replace(new RegExp('1', 'g'), '');
	resumeText = resumeText.replace(new RegExp('2', 'g'), '');
	resumeText = resumeText.replace(new RegExp('3', 'g'), ' ');  
	resumeText = resumeText.replace(new RegExp('4', 'g'), ' ');  
	resumeText = resumeText.replace(new RegExp('5', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('6', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('7', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('8', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('9', 'g'), ' ');
	resumeText = resumeText.replace(new RegExp('0', 'g'), ' ');

	var wordM = "";
	var words = sortByCount(createWordMap(splitByWords(resumeText.toLowerCase())));
	
	if (words.length > 5) {
		
	for (var i = 0;i<5;i++){
		wordM = words[i].name + words[i].total +" "+ wordM;
		
	}

	document.getElementById("demo1").innerText = wordM;
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "Most Frequently Used Words"              
		},
		data: [              
		{
			type: "column",
			dataPoints: [
				{ label: words[0].name,  y: parseInt(words[0].total)  },
				{ label: words[1].name,  y: parseInt(words[1].total)  },
				{ label: words[2].name,  y: parseInt(words[2].total) },
				{ label: words[3].name,  y: parseInt(words[3].total)  },
				{ label: words[4].name,  y: parseInt(words[4].total)   }
			]
		}
		]
	});
	chart.render();
}
}

</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>    
      
      <p> Welcome it Get To Work </p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
    </div>
  </div>

  <div class="w3-row">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Heading</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
        dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
    </div>
  </div>

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Heading</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
        dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">»</a>
    </div>
  </div>

  <footer id="myFooter">
    <div class="w3-container w3-theme-l2 w3-padding-32">
      <h4>Footer</h4>
    </div>

    <div class="w3-container w3-theme-l1">
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
  </footer>

<!-- END MAIN -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}


function doAjax() {

	// Get form
	var form = $('#id_form')[0];
	var data = new FormData(form);
	$.ajax({
	    type: "POST",
	    enctype: 'multipart/form-data',
	    url: "controller/myMethod",
	    data: data,
	    processData: false, //prevent jQuery from automatically transforming the data into a query string
	    contentType: false,
	    cache: false,
	    dataType:'json',
	    success: function (e) {
	        $("#result").text(data);
	        alert("Success");
	    },
	    error: function (e) {
	        $("#result").text(e.responseText);
	        alert("Error");
	    },
	    complete: function () {
	        // Handle the complete event
	        alert("Complete");
	      }
	});
	}
</script>


  


</body>
</html>