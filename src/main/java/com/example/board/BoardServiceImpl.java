package com.example.board;

import com.example.board.BoardDAO;
import com.example.board.BoardService;
import com.example.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertBoard(BoardVO vo) {
        return boardDAO.insertBoard(vo);
    }
    @Override
    public int deleteBoard(int itemID){
        return boardDAO.deleteBoard(itemID);
    }
    @Override
    public int updateBoard(BoardVO vo){
        return boardDAO.updateBoard(vo);
    }
    @Override
    public BoardVO getBoard(int itemID){
        return boardDAO.getBoard(itemID);
    }
    @Override
    public List<BoardVO> getBoardList(){
        return boardDAO.getBoardList();
    }
}
