package mapper;

import java.util.List;
import vo.Merchandise;

public  interface  MerchandiseMapper {
	int addMerchandise(Merchandise merchandise);
	int updateMerchandise(Merchandise merchandise);
	int deleteMerchandise(Merchandise merchandise);
	List<Merchandise> selectAllMerchandise();
	Merchandise selectMerchandise(Merchandise merchandise);
}
