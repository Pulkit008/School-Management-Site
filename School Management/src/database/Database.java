package database;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Database {

	private Connection con=null;
	private PreparedStatement pt;
	private ResultSet rs;
	static int roll=101;
	
	public Database()
	{
			try 
			{
				if(con==null)
				{
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
					if(con!=null)
						System.out.println("Connection Established");
				}
				else
				{
					System.out.println("Connection already Established");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public boolean adminlogin(String email,String password)
	{
		try {
			pt=con.prepareStatement("select * from admin where email=? and password=?");
			pt.setString(1, email);
			pt.setString(2, password);
			
			rs=pt.executeQuery();
			if(rs.next())
				return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public Admin GetdetailAdmin()
	{
		Admin ob=new Admin();
		try {
			ob.setUsername(rs.getString(1));
			ob.setName(rs.getString(2));
			ob.setEmail(rs.getString(3));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ob;
	}
	public void insertadmin (Admin a) {
		try 
		{
			pt=con.prepareStatement("insert into admin values(?, ?, ?, ?)");
			
			pt.setString(1, a.getUsername());
			pt.setString(2, a.getName());
			pt.setString(3, a.getEmail());
			pt.setString(4, a.getPassword());
			
			pt.executeUpdate();
			
			System.out.println("Data Entered");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void insert(Student s)
	{
		try 
		{
			 pt=con.prepareStatement("select max(rollno) from students");
			 rs=pt.executeQuery();
			 rs.next();
			 
			 
			 if(rs.getInt(1)!=0)
			 {
				 int r;
				 r=rs.getInt(1);
				 r++;
				 s.setRollno(r);
			 }
			 else
			 {
				 s.setRollno(roll);
			 }
			
			pt=con.prepareStatement("insert into students values(?, ?, ?, ?, ?)");
			
			pt.setInt(1, s.getRollno());
			pt.setString(2, s.getName());
			pt.setInt(3, s.getPhysics());
			pt.setInt(4, s.getChemistry());
			pt.setInt(5, s.getMaths());
			
			pt.executeUpdate();
			
			System.out.println("Data Entered");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public ArrayList<Student> getstudents(){
		ArrayList<Student> ss = new ArrayList<Student>();
		try {
			pt=con.prepareStatement("select * from students");
			rs=pt.executeQuery();
			
			while(rs.next()) {
				Student s = new Student();
				s.setRollno(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setPhysics(rs.getInt(3));
				s.setChemistry(rs.getInt(4));
				s.setMaths(rs.getInt(5));
				
				ss.add(s);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ss;
	}
	public Student getstudent(int roll) {
		Student s = new Student();
		try {
			pt=con.prepareStatement("select * from students where rollno = ?");
			pt.setInt(1, roll);
			rs=pt.executeQuery();
			rs.next();
			s.setRollno(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setPhysics(rs.getInt(3));
			s.setChemistry(rs.getInt(4));
			s.setMaths(rs.getInt(5));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	public void editstudent (Student s) {
		try {
			pt=con.prepareStatement("update students set name=?, physics=?, chemistry=?, maths=? where rollno=?");
			pt.setString(1, s.getName());
			pt.setInt(2, s.getPhysics());
			pt.setInt(3, s.getChemistry());
			pt.setInt(4, s.getMaths());
			pt.setInt(5, s.getRollno());
			
			pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void deletestudent (int roll) {
		try {
			pt=con.prepareStatement("delete from students where rollno=?");
			pt.setInt(1, roll);
						
			pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
