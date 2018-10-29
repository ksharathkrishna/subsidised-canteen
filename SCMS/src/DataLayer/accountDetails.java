package DataLayer;
import java.sql.*;
public class accountDetails {

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/canteen";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";



    public   int ac=0;
    public  void updQuantity(String foodID,String Quantity ){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;

        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();

            //STEP 4: Execute a query
            String sql = "SELECT * FROM food WHERE foodid = \"" +
                    foodID + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = rs.getInt("quantity")-Integer.parseInt(Quantity);
                ac=1;
            }
            sql = "UPDATE  food SET quantity =quantity+"+Quantity+" WHERE FoodID = \"" +
                    foodID + "\"";

            stmt.executeUpdate(sql);
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");

        }
    }
    public int dc;
    public  int decQuantity(String foodID,String Quantity ) {
        Connection conn = null;
        Statement stmt = null;
        int flag = 1;

        dc = 0;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "SELECT * FROM food WHERE foodid = \"" +
                    foodID + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = rs.getInt("quantity")-Integer.parseInt(Quantity);
                dc=1;
            }
            if(flag>=0) {
                sql = "UPDATE  food SET quantity =quantity-" + Quantity + " WHERE FoodID = \"" +
                        foodID + "\"";

                stmt.executeUpdate(sql);
            }
            else{
                //do nothing
            }

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");

        }
 return flag;
    }
    public boolean isPasswordCorrect(String adminName, String password) {
        Connection conn = null;
        Statement stmt = null;
        boolean flag = false;

        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 4: Execute a query

            System.out.println("Creating statement...");
            stmt = conn.createStatement();

            String sql;
            sql = "SELECT * FROM customer WHERE username = \"" +
                    adminName + "\"";

            System.out.println(adminName + ' ' + password);
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                //System.out.println("inside while");
                String ps = rs.getString("password");
                System.out.println(ps);
                if (ps.equals(password)) {
                    //System.out.println(ps+password);
                    flag = true;
                }
            }
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");
            return flag;
        }
    }

    public int f=0;
    public boolean addUser( String username, String password, String cardno) {
        Connection conn = null;
        Statement stmt = null;
        boolean flag = false;

        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
           String sql = "SELECT * FROM customer WHERE username = \"" +
                    username + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()){
                System.out.println("inside while");
                flag = false;
                f=1;
            }
            sql="SELECT * FROM customer WHERE cardno = \"" +
                    cardno + "\"";
            rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()){
                System.out.println("inside while");
                flag = false;
                f=1;
            }

            if(f==0){
                sql="SELECT * FROM validation WHERE cardno = \"" +
                    cardno + "\"";
            rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()){
                System.out.println("inside while");
                flag = true;
            }

            if(flag) {
                System.out.println("Creating statement...");
                System.out.println("username"+username);
                sql = "insert into customer (username,password,cardno)  values (?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
              //  ps.setString(1, name);
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, cardno);
                //ps.setString(5, age);
                System.out.println("username"+username);
                System.out.println("pwd"+password);
                ps.executeUpdate();
            }}

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");
            return flag;
        }
    }

    public  int isBf(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "SELECT * FROM customer WHERE username = \"" +
                    username + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = rs.getInt("bf");
            }
        }

             catch (SQLException se) {
                //Handle errors for JDBC
                se.printStackTrace();
            } catch (Exception e) {
                //Handle errors for Class.forName
                e.printStackTrace();
            } finally {
                //finally block used to close resources

                try {
                    if (conn != null)
                        conn.close();
                } catch (SQLException se) {
                    se.printStackTrace();

                }//end finally try

                System.out.println("Closing DB Connection - Goodbye!");
                return flag;
            }
    }

    public  void setBf(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "UPDATE  customer SET bf ='1' WHERE username = \"" +
                    username + "\"";

            stmt.executeUpdate(sql);
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");

        }
    }

    public  int isLu(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "SELECT * FROM customer WHERE username = \"" +
                    username + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = rs.getInt("lu");
            }
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");
            return flag;
        }
    }

    public  void setLu(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "UPDATE  customer SET lu ='1' WHERE username = \"" +
                    username + "\"";

            stmt.executeUpdate(sql);
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");

        }
    }


    public  int isDi(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "SELECT * FROM customer WHERE username = \"" +
                    username + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = rs.getInt("di");
            }
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");
            return flag;
        }
    }


    public  void setDi(String username){
        Connection conn = null;
        Statement stmt = null;
        int  flag = 1;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "UPDATE  customer SET di ='1' WHERE username = \"" +
                    username + "\"";

            stmt.executeUpdate(sql);
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");

        }
    }


    public  boolean delete(String username){
        Connection conn = null;
        Statement stmt = null;
        boolean flag = false;
        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            //STEP 4: Execute a query
            String sql = "SELECT * FROM customer WHERE username = \"" +
                    username + "\"";

            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("after rs");
            while (rs.next()) {
                System.out.println("inside while");
                flag = true;
                sql = "DELETE  FROM customer WHERE username = \""  +
                                           username + "\"";
                stmt.executeUpdate(sql);

            }
        }

        catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources

            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();

            }//end finally try

            System.out.println("Closing DB Connection - Goodbye!");
            return flag;
        }
    }
}
