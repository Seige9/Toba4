/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Group1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws IOException, ServletException {

        // create the workbook, its worksheet, and its title row
    	List<String[]> apppp=new LinkedList<String[]>();
       
        try{
            // read database rowsgetConnection(
                    response.setContentType("text/html;charset=UTF-8");
                    Connection connection=DatabaseConnection.getConnection("toba","root","root");                
                    Statement statement = connection.createStatement();
                    String query = "SELECT * FROM user ORDER BY Username";
                    ResultSet results = statement.executeQuery(query);
                    
                    
                    // create the spreadsheet rows
                    
                    while (results.next()) {
                        String[] appp=new String[9];
                        appp[0]=""+results.getString("Username");
                        appp[1]=""+(results.getString("Firstname"));
                        appp[2]=""+(results.getString("Lastname"));
                        appp[3]=""+(results.getString("Phone"));
                        appp[4]=""+(results.getString("Address"));
                        appp[5]=""+(results.getString("City"));
                        appp[6]=""+(results.getString("State"));
                        appp[7]=""+(results.getString("Zipcode"));
                        appp[8]=""+(results.getString("Email"));
                        apppp.add(appp);
                    }
                    results.close();
                    statement.close();
                DatabaseConnection.closeConnection(connection);
                 String[][] args=new String[apppp.size()][9];
        
        
        
                for(int i=0;i<apppp.size();i++){
                    args[i]=apppp.get(i);
                }
              
                request.setAttribute("users",args);
        } catch (SQLException e) {
            e.printStackTrace();
            this.log(e.toString());
        }

        RequestDispatcher rs = request.getRequestDispatcher("reports.jsp"); 
        rs.forward(request, response);

        // get the output stream and send the workbook to the browser
       
    }
}