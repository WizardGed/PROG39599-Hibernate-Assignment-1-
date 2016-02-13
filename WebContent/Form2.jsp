<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Information</title>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

#wrapper {
	margin: 10px auto;
	display: flex;
	justify-content: center; /* align horizontal */
}

#submission {
	position: relative; top 50%;
	transform: translateY(125%);
}

#header {
	background-color: black;
	color:white;
	width: 100%;
	padding: 5px 5px 5px 5px;
	float: left;
}

form {
	padding: 25px 25px 25px 25px;
	outline: black solid thin;
}
</style>
</head>
<body>
<span id="header">Feedback on the selected department</span>
	<br />
	<section id="wrapper">
		<section id="submission">
			<c:forEach var="item" items="${feedbackList}">
				<h2>Department: ${item.department}</h2>
				<br />
				<h2>Feedback: ${item.feedtext}</h2>
				<br />
			</c:forEach>
		</section>
	</section>
</body>
</html>