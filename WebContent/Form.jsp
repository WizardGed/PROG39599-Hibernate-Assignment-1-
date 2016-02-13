<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Submission</title>
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
	<span id="header">A1 - Andrew DeMarsh</span>
	<br />
	<section id="wrapper">
		<section id="submission">
			<form method="post" action="HomeController">
				Enter Feedback:(To view results select department and click submit without text in the TextArea)<br /> <select name="department">
					<option value="customerService">Customer Service</option>
					<option value="billing">Billing</option>
					<option value="sales">Sales</option>
					<option value="technicalSupport">Technical Support</option>
				</select> <br />
				<textarea placeholder="Enter Text Here" rows="5" cols="80"
					name="feedback"></textarea>
				<br /> <input type="submit" value="Submit" />
			</form>
		</section>
	</section>
</body>
</html>