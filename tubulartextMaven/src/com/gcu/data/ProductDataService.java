package com.gcu.data;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.gcu.mapping.ProductMapper;
import com.gcu.model.User;
import com.gcu.model.product;

public class ProductDataService implements DataAccessInterface<product> {
	
	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<product> findAll() {				
		
		String sql = "SELECT * FROM TUBULARTEXT.PRODUCTS";
		List<product> products = new ArrayList<product>();
		
		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql);	
			
			while(srs.next()) {
				products.add(new product(srs.getInt("ID"),srs.getString("NAME"),srs.getString("DESCRIPTION"),srs.getString("PRICE"),srs.getString("IMAGEFILEPATH"),srs.getString("TEXTFILEPATH")));
			}
					
		}catch(Exception e){
			e.printStackTrace();			
		}
		
		return products;
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
		
		String sql = "UPDATE TUBULARTEXT.PRODUCTS (NAME, DESCRIPTION, PRICE, IMAGEFILEPATH, TEXTFILEPATH) VALUES (?,?,?,?,?) WHERE ID = " + t.getId() + ";";
		
		try {
			int rows = jdbcTemplateObject.update(sql,t.getName(),t.getDescription(),t.getPrice(),t.getImageFilePath(),t.getTextFilePath());
			
			return rows == 1 ? true : false;
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean delete(product t) {
String sql = "DELETE FROM TUBULARTEXT.PRODUCTS WHERE ID = " + t.getId() + ";";
		
		try {
			int rows = jdbcTemplateObject.update(sql);
			
			return rows == 1 ? true : false;
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
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
