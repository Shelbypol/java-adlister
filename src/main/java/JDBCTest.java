//================================ JDBC MINI EXERCISE
//        1. add and commit all uncommitted work in your current AdLister branch
//        2. create a 'jdbc-exercise' branch off of the 'jdbc' tag
//        3. add the MySQL connector dependency to your POM file (if not already there)
//        4. create a class called 'JDBCTest'
//        5. in this class, create a private static method called getEmployeeFirstNames that returns a list of strings
//        - the method should return an array list of the first 10 first names of employees in the employees database
//        - a specific table from a given database can be queried directly with the syntax database_name.table_name
//        6. test this method out by adding a main method and souting out the return value of the getEmployeeFirstNames method
//        7. overload the method to take in an integer that determines how many names of employees to return


//import java.sql.Driver;

import java.sql.*;

import com.mysql.cj.jdbc.Driver;

import java.util.ArrayList;
import java.util.List;

public class JDBCTest {

    private static List<String> getEmployeeFirstName() {
        List<String> names = new ArrayList<>();
        try {
            DriverManager.registerDriver(new Driver());
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost/employees?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement statement = conn.createStatement();

            ResultSet rs = statement.executeQuery("SELECT first_name FROM employees.employees LIMIT 10");
            while (rs.next()) {
                names.add(rs.getString(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return names;
    }


    private static List<String> getEmployeeFirstName(int numOfNames) {
        List<String> names = new ArrayList<>();
        try {
            DriverManager.registerDriver(new Driver());
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost/employees?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement statement = conn.createStatement();
//Watch the " at the end of Limit
            ResultSet rs = statement.executeQuery("SELECT first_name FROM employees.employees LIMIT" + numOfNames);
            while (rs.next()) {
                names.add(rs.getString(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return names;
    }


    public static void main(String[] args) {
        System.out.println(getEmployeeFirstName());
        System.out.println(getEmployeeFirstName(4));
    }
}


//import java.sql.*;
//
//import com.mysql.cj.jdbc.Driver;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class JDBCTest {
//    public static List<String> getEmployeeFirstNames() {
//        List<String> names = new ArrayList<>();
//        try {
//            DriverManager.registerDriver(new Driver());
//            Connection conn = DriverManager.getConnection(
//                    "jdbc:mysql://localhost/employees?serverTimezone=UTC&useSSL=false",
//                    "root",
//                    "codeup"
//            );
//            Statement stmt = conn.createStatement();
//            String query = "SELECT first_name FROM employees.employees LIMIT 10";
//            ResultSet rs = stmt.executeQuery(query);
//            while (rs.next()) {
//                names.add(rs.getString(1));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return names;
//    }
//    public static List<String> getEmployeeFirstNames(int numOfNames) {
//        List<String> names = new ArrayList<>();
//        try {
//            Connection conn = DriverManager.getConnection(
//                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
//                    "root",
//                    "codeup"
//            );
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT first_name FROM employees.employees LIMIT " + numOfNames);
//            while(rs.next()) {
//                names.add(rs.getString(1));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return names;
//    }
//
//
//    public static void main (String[]args){
//            System.out.println(getEmployeeFirstNames());
//            System.out.println(getEmployeeFirstNames(3));
//        }
//    }


