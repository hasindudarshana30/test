<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table user(guest_id INT AUTO_INCREMENT PRIMARY KEY,guest_name VARCHAR(100) NOT NULL,email VARCHAR(100) NOT NULL UNIQUE,password VARCHAR(255) NOT NULL,address VARCHAR(255),contact_number VARCHAR(20),room_type VARCHAR(50),check_in_date DATE,check_out_date DATE,city varchar(100),state varchar(100),country varchar(100))";
String q2="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
String q3="create table cart(email varchar(100),room_id int,Number_of_Nights int,price int,total int,address varchar(255),city varchar(100),state varchar(100),country varchar(100),contact_number varchar(20),check_in_date DATE,check_out_Date DATE,paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
String q4="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
System.out.println(q1);
System.out.println(q2);
System.out.println(q3);
System.out.println(q4);
//st.execute(q1);
//st.execute(q2);
//st.execute(q3);
st.execute(q4);
System.out.println("Table Created");
con.close();
}
catch(Exception e)
{
	System.out.print("e");}
%>


