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

    private final String BOARD_INSERT = "insert into BOARD (title, writer, content, category) values (?,?,?,?)";
    private final String BOARD_UPDATE = "update BOARD set title=?, writer=?, content=?, category=? where seq=?";
    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
    private final String BOARD_GET = "select * from BOARD  where seq=?";
    private final String BOARD_LIST = "select * from BOARD order by seq desc";

    public int insertBoard(BoardVO vo) {
        return jdbcTemplate.update(BOARD_INSERT, new Object[]{vo.getTitle(), vo.getWriter(),vo.getContent(),vo.getCategory()});
    }
    public int deleteBoard(int seq){
        return jdbcTemplate.update(BOARD_DELETE, new Object[]{seq});
    }
    public int updateBoard(BoardVO vo) {
        return jdbcTemplate.update(BOARD_UPDATE, new Object[]{vo.getTitle(), vo.getWriter(),vo.getContent(),vo.getCategory(), vo.getSeq()});

    }

    public class BoardRowMapper implements RowMapper<BoardVO> {

        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setTitle(rs.getString("title"));
            vo.setContent(rs.getString("content"));
            vo.setWriter(rs.getString("writer"));
            vo.setCategory(rs.getString("category"));
            vo.setRegDate(rs.getDate("regDate"));
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
                BoardVO vo = new BoardVO();
                data.setSeq(rs.getInt("seq"));
                data.setTitle(rs.getString("title"));
                data.setWriter(rs.getString("writer"));
                data.setCategory(rs.getString("Category"));
                data.setContent(rs.getString("Content"));
                data.setRegDate(rs.getDate("regDate"));
                return data;
            }
        });

    }
}
