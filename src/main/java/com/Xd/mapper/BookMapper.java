package com.Xd.mapper;

import com.Xd.entity.Book;

import java.util.List;

public interface BookMapper {
    void addBook(Book book);
    Book selectBookById(Integer id);
    List<Book> bookList();
    void deleteBookById(Integer id);
}
