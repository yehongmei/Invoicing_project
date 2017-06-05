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

}
