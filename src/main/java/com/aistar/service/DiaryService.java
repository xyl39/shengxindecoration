package com.aistar.service;

import com.aistar.pojo.Diary;
import org.springframework.stereotype.Service;

import java.util.List;

public interface DiaryService {

    //添加日记
    public boolean save(Diary diary);

    //根据主键查询日记
    public Diary getById(int id);

    //查询所有日记
    public List<Diary> getAllDiary();

    //修改日记
    public boolean update(Diary diary);

    //根据主键删除日记
    public boolean delete(int id);

}
