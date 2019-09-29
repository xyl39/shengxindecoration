package com.aistar.service.impl;

import com.aistar.mapper.DiaryMapper;
import com.aistar.pojo.Diary;
import com.aistar.service.DiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;

@Service
public class DiaryServiceImpl implements DiaryService {

    @Autowired
    private DiaryMapper diaryMapper;

    @Override
    public boolean save(Diary diary) {
        return false;
    }

    @Override
    public Diary getById(int id) {
        return diaryMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Diary> getAllDiary() {
        return null;
    }

    @Override
    public boolean update(Diary diary) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
