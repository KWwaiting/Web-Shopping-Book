package com.itheima.controller;

import com.itheima.po.Book;
import com.itheima.po.User;
import com.itheima.service.BookService;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;

/**
 * 用户控制器类
 */
@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/doAddBook")
    public String doAddBook(Book book, HttpServletRequest request ) {
         int b = bookService.doAddBook(book);
         return "bookManage.jsp";
    }

    @RequestMapping(value = "/selectBookAll")
    public String selectUserAll(Book book,Model model) {
        List<Book> b = bookService.selectBookAll(book);
        model.addAttribute("bs",b);
        return "bookManage.jsp";
    }

    @RequestMapping(value = "/bookSelect")
    public String bookSelect(Book book,Model model) {
        List<Book> b = bookService.bookSelect(book);
        model.addAttribute("bs",b);
        return "bookList.jsp";
    }

    @RequestMapping(value = "/selectBookList")
    public String selectBookList(Book book,Model model) {
        List<Book> b = bookService.selectBookList(book);
        model.addAttribute("bs",b);
        return "bookManage.jsp";
    }


    @RequestMapping( "/findBookById")
    @ResponseBody
    public Book findBookById(Integer id) {
        Book book= bookService.findBookById(id);
        return book;
    }

    @RequestMapping( "/updateBook")
    public String updateBook(Book book) {
        int b = bookService.updateBook(book);
        return "bookManage.jsp";
    }

    @RequestMapping( "/deleteBook")
    @ResponseBody
    public String deleteBook(Integer id) {
        int b = bookService.deleteBook(id);
        return "bookManage.jsp";
    }

    @RequestMapping(value = "/selectBook")
    public String selectBook(Book book,Model model) {
        List<Book> b = bookService.selectBook(book);
        model.addAttribute("bs",b);
        return "book.jsp";
    }

    @RequestMapping(value = "/computerBook")
    public String computerBook(Book book,Model model) {
        List<Book> b = bookService.computerBook(book);
        model.addAttribute("bs",b);
        return "computerList.jsp";
    }
}