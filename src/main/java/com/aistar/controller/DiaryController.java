package com.aistar.controller;

import com.aistar.pojo.Diary;
import com.aistar.service.DiaryService;
import com.aistar.util.JsonResult;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class DiaryController {

    @Autowired
    private DiaryService diaryService;

    @GetMapping("diary")
    public ModelAndView getAllDiary(){
        ModelAndView mav = new ModelAndView();
        List<Diary> diaryList = diaryService.getAllDiary();
        System.out.println("所有日记:"+diaryList);
        mav.addObject("diaryList",diaryList);
        mav.setViewName("diary/decoration_diary");
        return mav;
    }

    @GetMapping("diary/{id}")
    public ModelAndView getById(@PathVariable("id") int id){
        ModelAndView mav = new ModelAndView();
        Diary diary = diaryService.getById(id);
        System.out.println("当前所在日记：diary:"+diary);
        mav.addObject("diary",diary);
        mav.setViewName("diary/diary_detail");
        return mav;
    }
}
