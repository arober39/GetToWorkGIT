<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="GetToWorkServer.GetToWork.ResumeParser" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="resumeparser" method="GET">
    Select resume to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" name="submit">
    <!-- fileToUpload=Camille_Holt_Resume.pdf&submit=Upload+Image -->
</form>
</body>
</html>