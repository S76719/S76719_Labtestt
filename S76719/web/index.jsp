<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DriveSmart - Home</title>
</head>
<body>
    <%@ include file="header.html" %>

    <div style="text-align: center; margin: 50px;">
        <h2>Welcome to DriveSmart Central Hub</h2>
        <p>Please select a module to proceed:</p>
        
        <a href="book_session.jsp" style="display:inline-block; padding:10px 20px; margin:10px; background:#28a745; color:white; text-decoration:none;">Book a Session</a>
        
        <a href="ScheduleServlet" style="display:inline-block; padding:10px 20px; margin:10px; background:#007bff; color:white; text-decoration:none;">View Schedule Dashboard</a>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>