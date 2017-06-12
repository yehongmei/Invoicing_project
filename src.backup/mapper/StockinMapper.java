package mapper;

import java.util.List;

import vo.Stockin;


public  interface  StockinMapper {
	List<Stockin> selectAllStockin(Stockin stockin);
	
	int insertStockin(Stockin stockin);
	
	Stockin selectStockin(Integer sid);
	
	boolean updateStockin(Stockin stockin);
	
	int  deleteStockin(Integer sid);
}
