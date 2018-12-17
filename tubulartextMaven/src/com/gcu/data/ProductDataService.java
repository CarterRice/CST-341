package com.gcu.data;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.rowset.SqlRowSet;

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
				//products.add(new product(srs.getInt("ID"),srs.getString("NAME"),srs.getString("DESCRIPTION"),srs.getString("PRICE"),srs.getString("IMAGEFILEPATH"),srs.getString("TEXTFILEPATH")));
				products.add(new product(srs.getInt("ID"),srs.getString("NAME"),srs.getString("DESCRIPTION"),srs.getString("PRICE"),null,null,srs.getString("ENCODE")));
			}
					
		}catch(Exception e){
			e.printStackTrace();			
		}
		
		return products;
	}

	@Override
	public product findById(int id) {
		
		product p = new product(0,"FAIL","FAIL","FAIL",null,null,"");
		
		String sql = "SELECT * FROM TUBULARTEXT.PRODUCTS WHERE ID = ?";
		
		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql,id);	
			
			if(srs.next()) {
				//p = new product(srs.getInt("ID"),srs.getString("NAME"),srs.getString("DESCRIPTION"),srs.getString("PRICE"),srs.getString("IMAGEFILEPATH"),srs.getString("TEXTFILEPATH"));
				p = new product(srs.getInt("ID"),srs.getString("NAME"),srs.getString("DESCRIPTION"),srs.getString("PRICE"),null,null,srs.getString("ENCODE"));				
			}					
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		
		return p;
	
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
		
		String sql = "UPDATE TUBULARTEXT.PRODUCTS SET NAME = '"+ t.getName() +"', DESCRIPTION = '"+ t.getDescription() +"', PRICE = '"+ t.getPrice() +"' WHERE ID = "+ t.getId() +"";
		
		try {
			int rows = jdbcTemplateObject.update(sql);
			
			return rows == 1 ? true : false;
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean delete(int id) {
		String sql = "DELETE FROM TUBULARTEXT.PRODUCTS WHERE ID = ?";
		
		try {
			int rows = jdbcTemplateObject.update(sql,id);
			
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

	@Override
	public boolean findByUsername(String username) {
		// TODO Auto-generated method stub
		return false;
	}

}
