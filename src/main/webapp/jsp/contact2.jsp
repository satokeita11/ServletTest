<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>フォーム送信結果</title>
</head>
<body>
	<h2>フォーム送信結果</h2>
	<p>以下はフォームで選択されたデータです。</p>

	<%-- フォームからのデータを取得 --%>
	<p>
		氏名:
		<%=request.getAttribute("userName")%></p>
	<p>
		会社名:
		<%=request.getAttribute("companyName")%></p>
	<p>
		メールアドレス:
		<%=request.getAttribute("email")%></p>
	<p>
		お問合せ内容:
		<%=request.getAttribute("review")%></p>

	<h3>メルマガ種類</h3>
	<%
	String[] newsletters = (String[]) request.getAttribute("newsletters");
	if (newsletters != null) {
		for (String newsletter : newsletters) {
			out.println("<p>" + newsletter + "</p>");
		}
	} else {
		out.println("<p>なし</p>");
	}
	%>

	<h3>資料請求希望</h3>
	<p><%=request.getAttribute("documentRequest") != null ? request.getAttribute("documentRequest") : "選択されていません"%></p>
</body>
</html>
