<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.drivesmart.model.SessionBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Centralized Schedule</title>
    <style>
        table { width: 80%; margin: 20px auto; border-collapse: collapse; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #f4f4f4; }
    </style>
</head>
<body>
    <%@ include file="header.html" %>

    <h2 style="text-align: center;">All Booked Training Sessions</h2>
    
    <table>
        <tr>
            <th>Session ID</th>
            <th>Student Name</th>
            <th>Branch Location</th>
            <th>Lesson Type</th>
            <th>Status</th>
        </tr>
        
        <% 
            List<SessionBean> list = (List<SessionBean>) request.getAttribute("sessionList");
            if(list != null && !list.isEmpty()) {
                for(SessionBean sessionBean : list) { 
        %>
        <tr>
            <td><%= sessionBean.getSessionId() %></td>
            <td><%= sessionBean.getStudentName() %></td>
            <td><%= sessionBean.getBranchLocation() %></td>
            <td><%= sessionBean.getLessonType() %></td>
            <td><%= sessionBean.getStatus() %></td>
        </tr>
        <% 
                } 
            } else { 
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No sessions booked yet.</td>
        </tr>
        <% } %>
    </table>

    <div style="text-align: center; margin-bottom: 20px;">
        <a href="index.jsp">Back to Home</a> | <a href="book_session.jsp">Book Another Lesson</a>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>