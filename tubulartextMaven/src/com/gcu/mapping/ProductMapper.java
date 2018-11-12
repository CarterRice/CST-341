package com.gcu.mapping;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.gcu.model.product;

public class ProductMapper implements RowMapper<product> {

	public product mapRow(ResultSet rs, int rowNum) throws SQLException {
	      product product = new product();
	      product.setId(rs.getInt("ID"));
	      product.setName(rs.getString("NAME"));
	      product.setDescription(rs.getString("DESCRIPTION"));
	      product.setPrice(rs.getString("PRICE"));
	      product.setImageFilePath(rs.getString("IMAGEFILEPATH"));
	      product.setTextFilePath(rs.getString("TEXTFILEPATH"));
	      return product;	    
	}
}
