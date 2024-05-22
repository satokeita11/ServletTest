<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問合せフォーム</title>

</head>
<body>
	<h2>お問い合わせフォーム</h2>
	<form action="${pageContext.request.contextPath }/servlet/greeting"
		method="post">
		<p>氏名</p>
		<input type="text" name="userName"><br>

		<p>会社名</p>
		<input type="text" name="companyName"><br>

		<p>メールアドレス</p>
		<input type="text" name="email"><br>

		<p>お問合せ内容</p>
		<textarea name="review" cols="30" rows="5"></textarea>
		<br>

		<p>メルマガ種類</p>
		<input type="checkbox" name="newsletter" value="総合案内"> 総合案内<br>
		<input type="checkbox" name="newsletter" value="セミナー案内">
		セミナー案内<br> <input type="checkbox" name="newsletter"
			value="求人採用情報"> 求人採用情報<br> <br>

		<p>資料請求希望</p>
		<input type="radio" name="documentRequest" value="Yes">Yes <input
			type="radio" name="documentRequest" value="No">No <br> <br>
		<input type="submit" value="送信">
	</form>
</body>
</html>