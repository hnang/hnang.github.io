package SIMS.Service;

import SIMS.Entity.Student;

public interface studentService {
	//普通用户登录
	Student login(String name,String password);
	//普通新用户注册
	Student signup(String name, String password, String _class, String grade, int age, String email);
	
	
}
