package com.Xd.service.Impl;

import com.Xd.entity.Book;
import com.Xd.mapper.BookMapper;
import com.Xd.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookMapper dao;
    public void addBook(Book book) {
        System.out.println("beforeServiceImpl");
        dao.addBook(book);
        System.out.println("serviceImpl");
    }
    public  Book selectBookById(Integer id){
        System.out.println(id);
        return   dao.selectBookById(id);
    }
    public List<Book> bookList(){
        return dao.bookList();
    }
    public void deleteBookById(Integer id){
        dao.deleteBookById(id);
    }
}
