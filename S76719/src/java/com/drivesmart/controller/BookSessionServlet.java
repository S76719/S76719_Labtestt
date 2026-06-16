package com.drivesmart.controller;

import com.drivesmart.dao.SessionDAO;
import com.drivesmart.model.SessionBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookSessionServlet")
public class BookSessionServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
        String studentName = request.getParameter("student_name");
        String branchLocation = request.getParameter("branch_location");
        String lessonType = request.getParameter("lesson_type");

        SessionBean session = new SessionBean();
        session.setStudentName(studentName);
        session.setBranchLocation(branchLocation);
        session.setLessonType(lessonType);
        session.setStatus("Booked");

        SessionDAO dao = new SessionDAO();
        dao.bookSession(session);

        response.sendRedirect("ScheduleServlet");
    }
}