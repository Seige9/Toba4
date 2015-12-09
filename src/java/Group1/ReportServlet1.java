/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Group1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import Group1.ConnectionPool;

@WebServlet("/userTableSpreadsheet")
public class ReportServlet1 extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws IOException, ServletException {

        // create the workbook, its worksheet, and its title row
        Workbook workbook = new HSSFWorkbook();
        Sheet sheet = workbook.createSheet("user");
        Row row = sheet.createRow(0);
        row.createCell(0).setCellValue("user");
        
        // create the header row
        row = sheet.createRow(2);
        row.createCell(1).setCellValue("Username");
        row.createCell(3).setCellValue("Firstname");
        row.createCell(4).setCellValue("Lastname");
        row.createCell(5).setCellValue("Phone");
        row.createCell(6).setCellValue("Address");
        row.createCell(7).setCellValue("City");
        row.createCell(8).setCellValue("State");
        row.createCell(9).setCellValue("Zipcode");
        row.createCell(10).setCellValue("Email");
                
        try {
            // read database rows
            ConnectionPool pool = ConnectionPool.getInstance();
            Connection connection = pool.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM User ORDER BY Username";    
            ResultSet results = statement.executeQuery(query);
            
            // create the spreadsheet rows
            int i = 3;
            while (results.next()) {
                row = sheet.createRow(i);
                row.createCell(1).setCellValue(results.getInt("UsernameID"));
                row.createCell(3).setCellValue(results.getString("FirstName"));
                row.createCell(4).setCellValue(results.getString("LastName"));
                row.createCell(5).setCellValue(results.getString("Phone"));
                row.createCell(6).setCellValue(results.getString("Address"));
                row.createCell(7).setCellValue(results.getString("City"));
                row.createCell(8).setCellValue(results.getString("State"));
                row.createCell(9).setCellValue(results.getString("Zipcode"));
                row.createCell(10).setCellValue(results.getString("Email"));
                i++;
            }
            results.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            this.log(e.toString());
        }

        // set the response headers
        response.setHeader("content-disposition", 
                "attachment; filename=users.xls");
        response.setHeader("cache-control", "no-cache");

        // get the output stream and send the workbook to the browser
        OutputStream out = response.getOutputStream();
        workbook.write(out);
        out.close();
    }
}