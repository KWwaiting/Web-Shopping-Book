package com.itheima.service.impl;

import com.itheima.dao.BookDao;
import com.itheima.dao.UserDao;
import com.itheima.po.Book;
import com.itheima.po.User;
import com.itheima.service.BookService;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	// 注入UserDao
	@Autowired
	private BookDao bookDao;

	@Override
	public  int doAddBook(Book book) {
		return bookDao.doAddBook(book);
	}

	@Override
	public List<Book> selectBookAll(Book book) {
		List<Book> b = this.bookDao.selectBookAll(book);
		return b;
	}

	@Override
	public List<Book> bookSelect(Book book) {
		List<Book> b = this.bookDao.bookSelect(book);
		return b;
	}

	@Override
	public List<Book> selectBookList(Book book) {
		List<Book> b = this.bookDao.selectBookList(book);
		return b;
	}


	@Override
	public Book findBookById(Integer id) {
		Book book = bookDao.findBookById(id);
		return book;
	}

	@Override
	public int updateBook(Book book) {
		return bookDao.updateBook(book);
	}

	@Override
	public int deleteBook(Integer id) {
		return bookDao.deleteBook(id);
	}

	@Override
	public List<Book> selectBook(Book book) {
		List<Book> b = this.bookDao.selectBook(book);
		return b;
	}

	@Override
	public List<Book> computerBook(Book book) {
		List<Book> b = this.bookDao.computerBook(book);
		return b;
	}
}
