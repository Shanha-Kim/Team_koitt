package com.musicolor.www.dao;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.musicolor.www.vo.FileVO;

public class FileDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public int profilePicture(FileVO fVO) {
		System.out.println(fVO.getSname());
		System.out.println(fVO.getOname());
		System.out.println(fVO.getDir());
		System.out.println(fVO.getLen());
		System.out.println(fVO.getNo());
		return sqlSession.update("fSQL.addpic", fVO);
		// 성공하면 1 실패하면 0 리턴
	}

	public int albumPicture(FileVO fVO) {
		if (fVO.getCheck() == 1) {
			return sqlSession.update("fSQL.updateAlbumPic", fVO);
		}
		return sqlSession.insert("fSQL.addAlbumPic", fVO);
	}
}