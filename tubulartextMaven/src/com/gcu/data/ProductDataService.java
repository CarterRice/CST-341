package com.gcu.data;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.gcu.model.User;
import com.gcu.model.product;

public class ProductDataService implements DataAccessInterface<product> {
	
	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<product> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public product findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean create(product t) {
		
String sql = "INSERT INTO TUBULARTEXT.PRODUCTS (NAME, DESCRIPTION, PRICE, IMAGEFILEPATH, TEXTFILEPATH) VALUES (?,?,?,?,?)";
		
		try {
			int rows = jdbcTemplateObject.update(sql,t.getName(),t.getDescription(),t.getPrice(),t.getImageFilePath(),t.getTextFilePath());
			
			return rows == 1 ? true : false;
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean update(product t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(product t) {
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
