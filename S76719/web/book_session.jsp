<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Session</title>
</head>
<body>
    <%@ include file="header.html" %>
    
    <div style="margin: 20px auto; width: 50%;">
        <h2>Register New Driving Lesson</h2>
        
        <form method="POST" action="BookSessionServlet">
            <p>
                <label>Student Name:</label><br>
                <input type="text" name="student_name" required>
            </p>
            <p>
                <label>Branch Location:</label><br>
                <select name="branch_location" required>
                    <option value="Kuala Lumpur">Kuala Lumpur</option>
                    <option value="Penang">Penang</option>
                    <option value="Johor">Johor</option>
                </select>
            </p>
            <p>
                <label>Lesson Type:</label><br>
                <select name="lesson_type" required>
                    <option value="Manual Car">Manual Car</option>
                    <option value="Automatic Car">Automatic Car</option>
                    <option value="Motorcycle">Motorcycle</option>
                </select>
            </p>
            <button type="submit" style="padding:10px; background:#28a745; color:white; border:none;">Book Lesson</button>
            <a href="index.jsp">Back to Home</a>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>