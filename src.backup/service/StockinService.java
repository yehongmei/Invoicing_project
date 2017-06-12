package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.StockinMapper;

import vo.Stockin;

@Service
public class StockinService {
	@Autowired
	private StockinMapper stockinMapper;

	public List<Stockin> selectAllStockin(Stockin stockin) {
		return stockinMapper.selectAllStockin(stockin);
	}
	
	public boolean insertStockin(Stockin stockin){
		return stockinMapper.insertStockin(stockin)>0;
	}
	
	public Stockin selectStockin(Integer sid){
		return stockinMapper.selectStockin(sid);
	}
	
	public boolean updateStockin(Stockin stockin){
		return stockinMapper.updateStockin(stockin);
	}
	
	public boolean deleteStockin(Integer sid){
		return stockinMapper.deleteStockin(sid)>0;
	}
}
