package com.Xd.service;

import com.Xd.entity.Book;

import java.util.List;

public interface BookService {
    void addBook(Book book);
    Book selectBookById(Integer id);
    List<Book> bookList();
    void deleteBookById(Integer id);
}
