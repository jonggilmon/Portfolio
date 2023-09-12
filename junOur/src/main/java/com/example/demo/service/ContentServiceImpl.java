package com.example.demo.service;

import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.ContentMapper;
import com.example.demo.mapper.ReserveInfoMapper;
import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReserveInfoVo;

@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentMapper mapper;
    @Autowired
    private ReserveInfoMapper reserveInfoMapper;

    @Override
    public ContentVo getContentByNo(int no) {
        return mapper.getContentByNo(no);
    }

    @Override
    public List<ContentVo> getAllReserve() {
       
        return mapper.getAllReserve();
    }
    
    @Override
    public void increaseReadNum(int no) {
        mapper.increaseReadNum(no);
    }
  
    
   
	@Override
    public List<ContentVo> getReservesByJongmokId(int jongmokId) {
        return mapper.getReservesByJongmokId(jongmokId);
    }
	

	 @Override
	    public List<ContentVo> resung() {
	        return mapper.resung(); 
	    }
	
	 
	

	@Override
	public boolean scanPassword(MemberVo user, String inputPassword) {
		  String password = user.getPwd();
		  System.out.println("Stored Password: " + password);
		    System.out.println("Input Password: " + inputPassword);
		    if(password == null || inputPassword == null) {
		        return false;
		    }
		    return password.equals(inputPassword); 
	}
	
	   @Override
	    public int insertAndGenerateReserveInfo(ReserveInfoVo reserveInfo) {
	        Random random = new Random();
	        int reserveId;
	        do {
	            reserveId = 10000000 + random.nextInt(90000000);
	            reserveInfo.setReserve_id(reserveId);
	        } while (reserveInfoMapper.getReserveById(reserveId) != null);
	        return reserveInfoMapper.insertReserveInfo(reserveInfo);
	    }
	
	
	
}