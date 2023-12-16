package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setCategory(rs.getString("category"));
            vo.setTitle(rs.getString("title"));
            vo.setWriter(rs.getString("writer"));
            vo.setContent(rs.getString("content"));
            vo.setRegdate(rs.getDate("regdate"));
            vo.setEditdate(rs.getDate("editdate"));
            vo.setCnt(rs.getInt("cnt"));
            return vo;
        }
    }

    public int insertBoard(BoardVO vo) {
        System.out.println("insertBoard");
        int result = sqlSession.insert("BoardDAO.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        System.out.println("deleteBoard");
        int result = sqlSession.delete("BoardDAO.deleteBoard", seq);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        System.out.println("updateBoard");
        int result = sqlSession.update("BoardDAO.updateBoard", vo);
        return result;
    }

    public BoardVO getBoard(int seq) {
        System.out.println("getBoard");
        BoardVO boardVO = sqlSession.selectOne("BoardDAO.getBoard", seq);
        return boardVO;
    }

    public List<BoardVO> getBoardList() {
        System.out.println("getBoardList");
        List<BoardVO> list = sqlSession.selectList("BoardDAO.getBoardList");
        return list;
    }
}
