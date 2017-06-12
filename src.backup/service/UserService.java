package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.UserMapper;
import vo.Userinfo;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	public boolean login(Userinfo userinfo){
		return userMapper.findUserByAccountAndPassword(userinfo)!=null;
	}
	public boolean register(Userinfo userinfo){
		return userMapper.addUserinfo(userinfo)>0;
	}
}
