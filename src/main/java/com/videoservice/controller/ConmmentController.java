package com.videoservice.controller;

import com.github.pagehelper.PageHelper;
import com.videoservice.dao.UserDao;
import com.videoservice.dao.VideoDao;
import com.videoservice.pojo.Person;
import com.videoservice.pojo.User;
import com.videoservice.pojo.Video;
import com.videoservice.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
public class ConmmentController {
    @Autowired
    private Person person;
    @Autowired
    private UserDao userDao;
    @Autowired
    private VideoDao videoDao;
    @RequestMapping(value = "/hello")
    public String hello(){
        PageHelper.startPage(1,5);
        List<Video> list = videoDao.listVideosByType("dd");
        System.out.println(list.size());
        return "hello,world";
    }


    @RequestMapping(value = "/save")
    public @ResponseBody String saveUser(){
        User user = new User();
        user.setScore(20.0);


        System.out.println(user);
        Long num = userDao.insertUser(user);
        System.out.println(user.getId());
        return "usccess";
    }
    @RequestMapping(value = "/index")
    public String index(){
        System.out.println(">>>>>" +person+ "<<<<<");
        return "/index";
    }
    //处理文件上传
    @RequestMapping(value="/testuploadimg", method = RequestMethod.POST)
    public @ResponseBody
    String uploadImg(@RequestParam("file") MultipartFile file,
                     HttpServletRequest request) {
        System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        String contentType = file.getContentType();
        String fileName = file.getOriginalFilename();
        System.out.println("fileName-->" + fileName);
        System.out.println("getContentType-->" + contentType);
        String filePath = request.getSession().getServletContext().getRealPath("imgupload/");
        try {
            FileUtil.uploadFile(file.getBytes(), filePath, fileName);
        } catch (Exception e) {
            // TODO: handle exception
        }
        //返回json
        return "uploadimg success";
    }
}
