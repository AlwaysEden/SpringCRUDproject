package com.mycom.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    Connection conn = null;
    PreparedStatement stmt = null; //이건 무슨 역할을 하는 친구지?
    ResultSet rs = null;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private final String BOARD_INSERT = "insert into restaurant (writer, category, restName, foodRank, star, location, callNumber, opinion) values (?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update restaurant set category=?, restName=?, foodRank=?, star=?, location=?, callNumber=?, opinion=? where id=?";
    private final String BOARD_DELETE = "delete from restaurant  where id=?";
    private final String BOARD_GET = "select * from restaurant  where id=?";
    private final String BOARD_LIST = "select * from restaurant order by id desc";

    public int insertBoard(BoardVO vo) {
        return jdbcTemplate.update(BOARD_INSERT, new Object[]{vo.getCategory(), vo.getWriter(),vo.getRestName(),vo.getFoodRank(), vo.getStar(), vo.getLocation(), vo.getCallNumber(), vo.getOpinion()});
    }
    public int deleteBoard(int id){
        return jdbcTemplate.update(BOARD_DELETE, new Object[]{id});
    }
    public int updateBoard(BoardVO vo) {
        return jdbcTemplate.update(BOARD_UPDATE, new Object[]{vo.getCategory(), vo.getRestName(), vo.getFoodRank(), vo.getStar(), vo.getLocation(), vo.getCallNumber(), vo.getOpinion()});

    }

    public class BoardRowMapper implements RowMapper<BoardVO> {

        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setId(rs.getInt("id"));
            vo.setWriter(rs.getString("writer"));
            vo.setCategory(rs.getString("category"));
            vo.setRestName(rs.getString("restName"));
            vo.setFoodRank(rs.getString("foodRank"));
            vo.setStar(rs.getInt("star"));
            vo.setLocation(rs.getString("location"));
            vo.setCallNumber(rs.getString("callNumber"));
            vo.setOpinion(rs.getString("opinion"));
            return vo;
        }
    }
    public BoardVO getBoard(int seq){
        return jdbcTemplate.queryForObject(BOARD_GET,new Object[]{seq}, new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
    }
    public List<BoardVO> getBoardList(){
        return jdbcTemplate.query(BOARD_LIST, new RowMapper<BoardVO>() {

            @Override
            public BoardVO mapRow (ResultSet rs, int rowNum)throws SQLException{
                BoardVO data = new BoardVO();
                data.setId(rs.getInt("id"));
                data.setWriter(rs.getString("writer"));
                data.setCategory(rs.getString("category"));
                data.setRestName(rs.getString("restName"));
                data.setFoodRank(rs.getString("foodRank"));
                data.setStar(rs.getInt("star"));
                data.setLocation(rs.getString("location"));
                data.setCallNumber(rs.getString("callNumber"));
                data.setOpinion(rs.getString("opinion"));
                return data;
            }
        });

    }
}
