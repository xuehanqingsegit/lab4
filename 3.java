33 package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import date.DB;

import model.Book;

public class BookService{

	public List<Book> list(String author) throws SQLException {
		String sql;
		Connection conn = DB.createConn();
		if( author !="")
			sql = "SELECT _book.id AS id,_book.name AS name,_author.author AS author FROM _book JOIN _author  ON _author.id=_book.author_id where author LIKE '%"+author+"%'";
			else
			sql = "	SELECT _book.id AS id,_book.name AS name,_author.author AS author FROM _book JOIN _author  ON _author.id=_book.author_id ";	
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Book> books = new ArrayList<Book>();
		try {
			ResultSet rs = ps.executeQuery();
			Book c = null;
			while(rs.next()) {
				c = new Book();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setAuthor(rs.getString("author"));
				books.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw(e);
		}
		DB.close(ps);
		DB.close(conn);
		return books;
	}
	
	
	
	public Book loadById(int id) {
		Connection conn = DB.createConn();
		String sql = "SELECT _book.id AS id,_book.name AS name,_book.whopub AS whopub,_book.pubtime AS pubtime,_book.price AS price,_author.author AS author,_author.age AS age,_author.country AS country FROM _book JOIN _author  ON _author.id=_book.author_id  where _book.id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		Book c = null;
		try {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
		
			if(rs.next()) {
				c = new Book();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setWhopub(rs.getString("whopub"));
				c.setPubtime(rs.getString("pubtime"));
				c.setPrice(rs.getString("price"));
				c.setAuthor(rs.getString("author"));
				c.setAge(rs.getString("age"));
				c.setCountry(rs.getString("country"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return c;
	}
	
	
	
	
	
	public void deleteById(int id) {
		Connection conn = DB.createConn();
		String sql = "delete from _book where id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	
}
