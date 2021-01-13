package restful.demo.mapper;

import org.apache.ibatis.annotations.*;
import restful.demo.pojo.Student;

import java.util.List;

@Mapper
public interface StudentMapper {

    @Select("select * from student")
    List<Student> getAllStudent();

    @Select("select * from student where id=#{id}")
    Student getStudentById(@Param("id") int id);


    @Insert("insert into student (name,classes,subject,score) values (#{name},#{classes},#{subject},#{score})")
    boolean addStudent(Student student);

    @Update("update student set name=#{name},classes=#{classes},subject=#{subject},score=#{score} where id=#{id}")
    boolean updateStudent(Student student);

    @Delete("delete  from student where id=#{id}")
    boolean deleteStudentById(int id);
}
