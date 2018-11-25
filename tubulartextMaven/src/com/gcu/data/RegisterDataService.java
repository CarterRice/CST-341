package com.gcu.data;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.gcu.model.User;
import com.gcu.model.registerUser;

public class RegisterDataService implements DataAccessInterface<registerUser> {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<registerUser> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public registerUser findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean create(registerUser t) {
		
		String sql = "INSERT INTO TUBULARTEXT.USERS (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ADMIN) VALUES (?,?,?,?,?,?)";
		
		try {
			int rows = jdbcTemplateObject.update(sql,t.getUsername(),t.getPassword(),t.getFirstName(),t.getLastName(),t.getEmail(),0);
			
			return rows == 1 ? true : false;
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean update(registerUser t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean loginCheck(User u) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

}
