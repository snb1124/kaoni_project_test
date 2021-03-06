package com.kaoni.common.chabun.DAO;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kaoni.Member.VO.MemberVO;
import com.kaoni.main.VO.MainVO;
import com.kaoni.pcr.VO.PcrVO;

@Repository
public class ChabunDAOImpl implements ChabunDAO {
	private Logger logger = Logger.getLogger(ChabunDAOImpl.class);

	@Autowired(required=false)
	private SqlSessionTemplate sqlSession;

	@Override
	public MemberVO getMemberChabun() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getMemberChabun");
	}

	@Override
	public MainVO getMainChabun() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getMainChabun");
	}

	@Override
	public PcrVO getPcrChabun() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getPcrChabun");
	}
	


}
