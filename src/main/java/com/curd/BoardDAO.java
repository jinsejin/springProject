package com.curd;
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
    private JdbcTemplate jdbcTemplate;

    // SQL 쿼리는 실제 테이블과 컬럼명에 맞게 수정해야 할 수 있다.
    private static final String BOARDSpring_INSERT = "insert into BOARDSpring (title, writer, content) values (?, ?, ?, ?)";
    private static final String BOARDSpring_UPDATE = "update BOARDSpring set title=?, writer=?, content=? where seq=?";
    private static final String BOARDSpring_DELETE = "delete from BOARDSpring where seq=?";
    private static final String BOARDSpring_GET = "select * from BOARDSpring where seq=?";
    private static final String BOARDSpring_LIST = "select * from BOARDSpring order by seq desc";


    public int insertBoard(BoardVO vo) {
        String sql = "insert into BOARDSpring (title, writer, content, category) values ("
                + "'" + vo.getTitle() + "',"
                + "'" + vo.getWriter() + "',"
                + "'" + vo.getContent() + "',"
                + "'" + vo.getCategory() + "')";
        return jdbcTemplate.update(sql);
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        String sql = "delete from BOARDSpring where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update BOARDSpring set title='" + vo.getTitle() + "', "
                + "writer='" + vo.getWriter() + "', "
                + "content='" + vo.getContent() + "', "
                + "category='" + vo.getCategory() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }
    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            try {
                vo.setSeq(rs.getInt("seq"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            vo.setTitle(rs.getString("title"));
            vo.setWriter(rs.getString("writer"));
            vo.setContent(rs.getString("content"));
            vo.setCategory(rs.getString("category"));
            vo.setRegdate(rs.getTimestamp("regdate"));
            return vo;
        }
    }
    public BoardVO getBoard(int seq) {
        String sql = "select * from BOARDSpring where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARDSpring order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }

}