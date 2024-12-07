<%@page import="Controller.DBconnect"%>
<%@page import="java.sql.*" %>

<%
try {
    Connection con = DBconnect.getCon();
    Statement st = con.createStatement();
    
    // SQL query to create the 'payment' table with relevant fields
    String q2 = "CREATE TABLE IF NOT EXISTS payment ("
    		
              + "id VARCHAR(50) PRIMARY KEY,"
              + "cardHolderName VARCHAR(100),"
              + "cardNumber VARCHAR(16),"
              + "amount VARCHAR(16),"
              + "expMonth VARCHAR(2),"
              + "expYear VARCHAR(4),"
              + "cvv VARCHAR(16),"
              + "paymentOption VARCHAR(50)"
              + ")";
    
    // Execute the query
    st.execute(q2);
    System.out.print("Table created successfully");
    
    // Close the connection
    con.close();
} catch (Exception e) {
    System.out.print("Error: " + e);
}
%>

















<%-- <%@page import="Controller.DBconnect"%>
<%@page import="java.sql.*" %>

<%
try{
	Connection con=DBconnect.getCon();
	Statement st=con.createStatement();
	
	String q2="create table payment()";
	
	System.out.print(q2);
	
	st.execute(q2);
	System.out.print("Table created");
	con.close();
}catch(Exception e){
	System.out.print(e);
}

%> --%>