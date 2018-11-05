<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Tubular Text</title>
</head>

<body style="background-color:#133E7C">
	<!-- Header -->
	<div style="background-color:#133E7C">
	<tiles:insertAttribute name="header" />
	</div>
	<!-- Body Page -->
	<div align="center" style="background-color:#133E7C">
		<tiles:insertAttribute name="body" />
	</div>

	<!-- Footer Page -->
	<div style="background-color:#133E7C">
	<tiles:insertAttribute name="footer" />
	</div>
</body>

</html>