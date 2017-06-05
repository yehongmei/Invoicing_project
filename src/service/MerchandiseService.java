package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import mapper.MerchandiseMapper;

import vo.Merchandise;

@Service
public class MerchandiseService {
	@Autowired
	private MerchandiseMapper merchandiseMapper;
	public boolean register(Merchandise  merchandise){
		return merchandiseMapper.addMerchandise(merchandise)>0;
	}
	public boolean update(Merchandise  merchandise){
		return merchandiseMapper.updateMerchandise( merchandise)>0;
		
	}
	public boolean delete(Merchandise  merchandise){
		return merchandiseMapper.deleteMerchandise( merchandise)>0;
		
	}
	public List<Merchandise> selectAll(){
		return merchandiseMapper.selectAllMerchandise();
	}
	public Merchandise select(Merchandise  merchandise){
		return merchandiseMapper.selectMerchandise(merchandise);
	}
}
