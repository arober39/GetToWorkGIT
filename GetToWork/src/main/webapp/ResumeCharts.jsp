<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="GetToWorkServer.GetToWork.HelloAppEngine" %>
<html>
<head>
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

<!DOCTYPE>
<html>
<head>
<title>networking</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script  src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="   crossorigin="anonymous"></script>
<script src="bootstable.min.js"></script>

<style>
		.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}

		</style>
</head>



<body>

  <div class="topnav">
  <a class="active" href="dragNdrop.html">GetToWork</a>
  <a href="#">Quick Start</a>
  <a href="dp.html">Jobs</a>
  <a href="#contact">Networking</a>
  <a href="tasklist.html">Tasks</a>
  <a href="./ResumeCharts.jsp">Resume/Job Description</a>
</div>



<script>
 $('#makeEditable').SetEditable({ $addButton: $('#but_add')});
</script>
</body>
</html>

</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Learn more more about your resume</h1>
       
 
<form method="POST" enctype="multipart/form-data" action="FileUploadServlet"> <!-- The action might have some issues GetToWorkServer.GetToWork -->
  Copy and Paste your Resume or Cover Letter:    <br>
  <textarea name="resume" id="resumeText" rows="20" cols="50"></textarea>  
   
  <br> Copy and paste a Job Description:    <br>
   <textarea name="job" id="jobText" rows="20" cols="50"></textarea>  
 
 <!--   <input type="text" name="resume" id="resumeText" style="height:200px;font-size:14pt;" ><br/>  -->
  <br/>
  <input type="button" value="Press" onclick="getGraphs()" > 
  
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

	

function getGraphs(){
	getChartForText("resumeText");
	getChartForText("jobText");
	
	compareText("resumeText", "jobText");
	
}
	function getFilteredText(text){
		
		var resumeText = text.toLowerCase();
		resumeText = resumeText.replace(/,/g, '');

		resumeText = resumeText.replace(new RegExp(' is ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' are', 'g'), ' ');
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
		resumeText = resumeText.replace(new RegExp(' the ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' will ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' there ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' them ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' inc. ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' its ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' it ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' were ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' was ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' you ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' your ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' inc ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' wait ', 'g'), '');
		resumeText = resumeText.replace(new RegExp('when ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' our ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' be ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' for ', 'g'), '');
		resumeText = resumeText.replace(new RegExp(' a ', 'g'), ' ');  
		resumeText = resumeText.replace(new RegExp(' in ', 'g'), ' ');  
		resumeText = resumeText.replace(new RegExp('-', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' an ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' of ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' by ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' I ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' as ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' an ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp('this', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' can ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' at ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' than ', 'g'), ' ');

		resumeText = resumeText.replace(new RegExp(' make ', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp(' use ', 'g'), ' ');
		
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
		resumeText = resumeText.replace(new RegExp('●', 'g'), ' ');
		resumeText = resumeText.replace(new RegExp('•', 'g'), ' ');
		
		return resumeText;
		
	}
	
	
	function getChartForText(text){
	var resumeText = document.getElementById(text).value;
	
	resumeText = getFilteredText(resumeText);
	
	var wordM = "";
	var words = sortByCount(createWordMap(splitByWords(resumeText.toLowerCase())));
	
	if (words.length > 5) {
		
	for (var i = 0;i<5;i++){
		wordM = words[i].name + words[i].total +" "+ wordM;
		
	}

	//document.getElementById("demo1").innerText = wordM;
	var chart = new CanvasJS.Chart("chartContainer"+text, {
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

	
	function compareText(resume, job){
		var resumeText = document.getElementById(resume).value;
		//document.getElementById("r").innerHTML = document.getElementById(resume).value;
		resumeText = getFilteredText(resumeText);
		
		var wordResumeM = "";
		var wordResume = createWordMap(splitByWords(resumeText.toLowerCase()));
		
		for (var i = 0;i < wordResume.length;i++){
			wordResumeM = wordResume[i].name + wordResume[i].total +" "+ wordResumeM;
			
		}
		// document.getElementById("r").innerHTML =  wordResumeM;
		
		var jobText = document.getElementById(job).value;	
		//document.getElementById("j").innerHTML = jobText;
		jobText = getFilteredText(jobText);
		var wordJobM = "";
		var wordJob = createWordMap(splitByWords(jobText.toLowerCase()));
		var orderJob = sortByCount(createWordMap(splitByWords(jobText.toLowerCase())));
		
		var inCommon = "";
		
		var commonWord = [];
		var resCommon = [];
		var jobCommon = [];
		var suggest = [];
		var s = "";
		for (var i = 0; i < orderJob.length; i++) {
			var key = orderJob[i].name;
		    if (wordResume.hasOwnProperty(key)) {
		    	commonWord.push(key.toString());
		    	jobCommon.push(wordJob[key]);
		    	resCommon.push(wordResume[key]);
		    	inCommon = key + wordJob[key].toString() + wordJob[key].toString()+wordResume[key].toString();
		    }else{
		    	
		    	suggest.push(key);
		    	s = key+ " " + s;
		    	
		    }
		    
		}
		

		document.getElementById("r").innerHTML = suggest[0]+ ", "+ suggest[1]+ ", "+ suggest[2]+ ", "+ suggest[3];
		/*for (var i = 0;i < wordJob.length;i++){
			//wordJobM = wordJob[i].name + wordJob[i].total +" "+ wordJobM;
			if(wordResume.hasOwnProperty(wordJob[i].key) ){
				inCommon = wordJob[i].name+ inCommon;
			}
		}*/
		
	//	document.getElementById("j").innerHTML =  jobResumeM;
		
		
//	}
	

	//function () {

var chart = new CanvasJS.Chart("chartContainer", {
	exportEnabled: true,
	animationEnabled: true,
	title:{
		text: "Job vs Resume Words"
	},
	subtitles: [{
		text: "Click Legend to Hide or Unhide Data Series"
	}], 
	axisX: {
		title: "Words"
	},
	axisY: {
		title: "Words",
		titleFontColor: "#4F81BC",
		lineColor: "#4F81BC",
		labelFontColor: "#4F81BC",
		tickColor: "#4F81BC"
	},
	axisY2: {
		title: "Clutch - Units",
		titleFontColor: "#C0504E",
		lineColor: "#C0504E",
		labelFontColor: "#C0504E",
		tickColor: "#C0504E"
	},
	toolTip: {
		shared: true
	},
	legend: {
		cursor: "pointer",
		itemclick: toggleDataSeries
	},
	data: [{
		type: "column",
		name: "Resume",
		showInLegend: true,      
		yValueFormatString: "#,##0.# Units",
		
		/*
		var commonWord = [];
		var resCommon = [];
		var jobCommon = [];*/
		dataPoints: [
			{ label: commonWord[0],  y: resCommon[0] },
			{ label: commonWord[1],  y: resCommon[1] },
			{ label: commonWord[2],  y: resCommon[2] },
			{ label: commonWord[3],  y: resCommon[3] },
			{ label: commonWord[4],  y: resCommon[4] },
			{ label: commonWord[5],  y: resCommon[5] },
			{ label: commonWord[6],  y: resCommon[6] },
			{ label: commonWord[7],  y: resCommon[7] },
			{ label: commonWord[8],  y: resCommon[8] },
			{ label: commonWord[9],  y: resCommon[9] }
		]
	},
	{
		type: "column",
		name: "Job",
		axisYType: "secondary",
		showInLegend: true,
		yValueFormatString: "#,##0.# Units",
		dataPoints: [
			{ label: commonWord[0],  y: jobCommon[0] },
			{ label: commonWord[1],  y: jobCommon[1] },
			{ label: commonWord[2],  y: jobCommon[2] },
			{ label: commonWord[3],  y: jobCommon[3] },
			{ label: commonWord[4],  y: jobCommon[4] },
			{ label: commonWord[5],  y: jobCommon[5] },
			{ label: commonWord[6],  y: jobCommon[6] },
			{ label: commonWord[7],  y: jobCommon[7] },
			{ label: commonWord[8],  y: jobCommon[8] },
			{ label: commonWord[9],  y: jobCommon[9] }
		]
	}]
});
chart.render();


	}
function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else {
		e.dataSeries.visible = true;
	}
	e.chart.render();
}


</script>

</head>
<body>
<h1> Your Resume Data  </h1>
<div id="chartContainerresumeText" style="height: 300px; width: 100%;"></div>    
<h1> Job Description Data </h1>
<div id="chartContainerjobText" style="height: 300px; width: 100%;"></div> 
 
<h1> Job Description vs Resume Data </h1>
<div id="chartContainerCompare" style="height: 300px; width: 100%;"></div> 


<div id="chartContainer" style="height: 300px; width: 100%;"></div>

<div id="suggestions" ></div>
<h2>Here are some word you should consider adding to your resume.</h2>
<h1 id="r"></h1>
<h1 id="j"></h1>
      <p> Welcome it Get To Work </p>
    </div>

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