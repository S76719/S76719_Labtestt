package com.drivesmart.dao;

import com.drivesmart.model.SessionBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SessionDAO {
    
    private Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
         
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drivesmart_db", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public void bookSession(SessionBean session) {
        String sql = "INSERT INTO Training_Sessions (student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection(); 
             PreparedStatement ps = conn.prepareStatement(sql)) {
             
            ps.setString(1, session.getStudentName());
            ps.setString(2, session.getBranchLocation());
            ps.setString(3, session.getLessonType());
            ps.setString(4, session.getStatus());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<SessionBean> getAllSessions() {
        List<SessionBean> sessions = new ArrayList<>();
        String sql = "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";
        
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
             
            while (rs.next()) {
                SessionBean bean = new SessionBean();
                bean.setSessionId(rs.getInt("session_id"));
                bean.setStudentName(rs.getString("student_name"));
                bean.setBranchLocation(rs.getString("branch_location"));
                bean.setLessonType(rs.getString("lesson_type"));
                bean.setStatus(rs.getString("status"));
                sessions.add(bean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sessions;
    }
}