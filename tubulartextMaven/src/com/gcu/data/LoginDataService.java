package com.gcu.data;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.gcu.model.User;
import com.gcu.model.registerUser;

public class LoginDataService implements DataAccessInterface<User> {
	
	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
		
	public boolean loginCheck(User t) {
		
		String sql = "SELECT ID, USERNAME, PASSWORD, ADMIN FROM TUBULARTEXT.USERS WHERE USERNAME='" + t.getUsername() + "' AND PASSWORD='"+ t.getPassword() +"'";
		
		try {
			
			SqlRowSet rows = jdbcTemplateObject.queryForRowSet(sql);	
			
			int count = 0;
			
			while(rows.next()) {
				count++;
			}
			
			if(count != 1) {
				return false;
			}else {
				return true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean create(User t) {
		
		return false;
	}

	@Override
	public boolean update(User t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(User t) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
}
