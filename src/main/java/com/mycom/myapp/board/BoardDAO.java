package com.mycom.myapp.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insertBoard",vo);
        return result;
    }

    public int updateBoard(BoardVO vo){
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }
    private final String BOARD_INSERT = "insert into restaurant (writer, category, restName, foodRank, star, location, callNumber, opinion) values (?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update restaurant set writer=?, category=?, restName=?, foodRank=?, star=?, location=?, callNumber=?, opinion=? where id=?";
    private final String BOARD_DELETE = "delete from restaurant  where id=?";
    private final String BOARD_GET = "select * from restaurant  where id=?";
    private final String BOARD_LIST = "select * from restaurant order by id desc";

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

    public int deleteBoard(int seq) {
        int delete = sqlSession.delete("Board.deleteBoard", seq);
        return delete;
    }
}
