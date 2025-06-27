<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Receipt</title>
</head>
<body>
<h1>Order is successful</h1>
  <h2>Receipt</h2>
  <!-- Add a download link for the receipt file -->
  <a href="receipt?id=<%= request.getAttribute("oid") %>">Download Receipt</a>
</body>
</html>
