package com.Xd.controller;

import com.Xd.entity.Book;
import com.Xd.service.BookService;
import com.alibaba.fastjson.JSON;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BookController {
    @Autowired
    private BookService bookService;

    @RequestMapping("/directToAddBook")
    public String directToAddBook(){
        return "addBook";
    }
    @RequestMapping("/addBook")
    public void addBook(Book book, HttpServletRequest request, HttpServletResponse response){
        String name=book.getName();
        System.out.println("name:"+name);
        bookService.addBook(book);
        try {
            request.getRequestDispatcher("selectBook").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/selectBookById")
    public String selectBookById(Integer id,Model model,HttpServletRequest request){

        System.out.println("before selectController");
        Book book = bookService.selectBookById(7);
        String name = book.getName();
        String author = book.getAuthor();
        System.out.println("name:"+name+",author:"+author);
        model.addAttribute("book", book);  //传递给Model,页面获取
        request.setAttribute("author", author);
        return "bookList";
    }
    @RequestMapping("/selectBook")
    public String bookList(Model model){
        System.out.println("before selectController");
        List<Book> bookList =bookService.bookList();
        System.out.println("name:"+bookList.get(0).getName()+",author:"+bookList.get(0).getAuthor());
        model.addAttribute("bookList", bookList);  //传递给Model,页面获取
        return "allBookList";
    }
    @RequestMapping("/deleteBookById")
        public void deleteBookById(Integer id, HttpServletRequest request,HttpServletResponse response){
            System.out.println("id:"+id);//可以直接从参数列表中获取从页面传递的id
//            System.out.println(request.getParameter("id"));//这样也可以获取从页面传递的id
            bookService.deleteBookById(id);
        try {
            request.getRequestDispatcher("selectBook").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @ResponseBody
    @RequestMapping("/addBookTest")
    public String addBookTest(Book book){

        System.out.println("addBookTest");
//        String name=book.getName();
//        System.out.println("name:"+name);
//        bookService.addBook(book);
        List<String> list = new ArrayList<String>();
        list.add("first");
        list.add("second");
        HashMap<String,Object> map = new HashMap<String,Object>();
//        map.put("name",book.getName());
//        map.put("author",book.getAuthor());
        map.put("name","name");
        map.put("author","author");
        map.put("list",list);

        String json = JSON.toJSONString(map);
        return json;
    }

}
