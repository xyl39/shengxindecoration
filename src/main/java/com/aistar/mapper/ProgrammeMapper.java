package com.aistar.mapper;

import com.aistar.pojo.Programme;
import com.aistar.pojo.ProgrammeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProgrammeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int countByExample(ProgrammeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int deleteByExample(ProgrammeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int deleteByPrimaryKey(Integer programmeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int insert(Programme record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int insertSelective(Programme record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    List<Programme> selectByExample(ProgrammeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    Programme selectByPrimaryKey(Integer programmeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int updateByExampleSelective(@Param("record") Programme record, @Param("example") ProgrammeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int updateByExample(@Param("record") Programme record, @Param("example") ProgrammeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int updateByPrimaryKeySelective(Programme record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table programme
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    int updateByPrimaryKey(Programme record);
}