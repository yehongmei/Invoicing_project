package mapper;

import vo.Userinfo;

public interface UserMapper {
	Userinfo findUserByAccountAndPassword(Userinfo userinfo);
	int addUserinfo(Userinfo userinfo);
}
