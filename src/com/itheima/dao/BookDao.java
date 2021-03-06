package com.itheima.dao;
import com.itheima.po.Book;

import java.util.List;

/**
 * 用户DAO层接口
 */
public interface BookDao {

    public int doAddBook(Book book);
    public List<Book> selectBookAll(Book book);
    public List<Book> bookSelect(Book book);
    public List<Book> selectBookList(Book book);
    public int deleteBook(Integer id);
    public Book findBookById(Integer id);
    public int updateBook(Book book);
    public List<Book> selectBook(Book book);
    public List<Book> computerBook(Book book);
}
