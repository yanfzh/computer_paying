/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.dao.imp;

import Store.db.core.JdbcTemplate;
import Store.store.dao.GoodsDao;
import Store.store.domain.Goods;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class GoodsDaoImpJdbc implements GoodsDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    @Override
    public Goods findByPk(long pk) {

        List<Goods> list = new ArrayList<Goods>();

        String sql = "select id,name,price,description,brand,cpu_brand,cpu_type,memory_capacity,hd_capacity,card_model,displaysize,image from Goods where id=?";
        jdbcTemplate.query(conn -> {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setLong(1, pk);
            return ps;
        }, rs -> {
            populate(list, rs);

        });

        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<Goods> findAll() {

        List<Goods> list = new ArrayList<Goods>();

        String sql = "select id,name,price,description,brand,cpu_brand,cpu_type,memory_capacity,hd_capacity,card_model,displaysize,image from Goods";
        jdbcTemplate.query(conn -> {
            PreparedStatement ps = conn.prepareStatement(sql);
            return ps;
        }, rs -> {
            populate(list, rs);
        });

        return list;
    }

    @Override
    public List<Goods> findStartEnd(int start, int end) {

        List<Goods> list = new ArrayList<Goods>();
        StringBuffer sql =  new StringBuffer("select id,name,price,description,brand,cpu_brand,cpu_type,memory_capacity,hd_capacity,card_model,displaysize,image from Goods");
        //StringBuffer sql = new StringBuffer("select top ");
      sql.append(" LIMIT ").append(end - start);//Mysql查询
//      sql.append(end).append(" id,name,price,description,brand,cpu_brand,cpu_type,memory_capacity,hd_capacity,card_model,displaysize,image from Goods");
//      sql.append(" where id not in (select top ").append(start).append(" id from 表名)");
       sql.append(" OFFSET ").append(start);
       //select top 20 * from 表名 where id not in (select top 10 id from 表名)
       
        jdbcTemplate.query(conn -> {
            PreparedStatement ps = conn.prepareStatement(sql.toString());
            return ps;
        }, rs -> {
            populate(list, rs);

        });

        return list;
    }

    private void populate(List<Goods> list, ResultSet rs) throws SQLException {
        Goods goods = new Goods();
        goods.setId(rs.getLong("id"));
        goods.setName(rs.getString("name"));
        goods.setPrice(rs.getDouble("price"));
        goods.setDescription(rs.getString("description"));
        goods.setBrand(rs.getString("brand"));
        goods.setCpuBrand(rs.getString("cpu_brand"));
        goods.setCpuType(rs.getString("cpu_type"));
        goods.setMemoryCapacity(rs.getString("memory_capacity"));
        goods.setHdCapacity(rs.getString("hd_capacity"));
        goods.setCardModel(rs.getString("card_model"));
        goods.setDisplaysize(rs.getString("displaysize"));
        goods.setImage(rs.getString("image"));

        list.add(goods);
    }

    @Override
    public void create(Goods goods) {

        String sql = "insert into Goods (id,name,price,description,brand,cpu_brand,cpu_type,memory_capacity,hd_capacity,card_model,displaysize,image)" +
                " values (?,?,?,?,?,?,?,?,?,?,?,?)";

        jdbcTemplate.update(conn -> {

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setLong(1, goods.getId());
            ps.setString(2, goods.getName());
            ps.setDouble(3, goods.getPrice());
            ps.setString(4, goods.getDescription());
            ps.setString(5, goods.getBrand());
            ps.setString(6, goods.getCpuBrand());
            ps.setString(7, goods.getCpuType());
            ps.setString(8, goods.getMemoryCapacity());
            ps.setString(9, goods.getHdCapacity());
            ps.setString(10, goods.getCardModel());
            ps.setString(11, goods.getDisplaysize());
            ps.setString(12, goods.getImage());

            return ps;
        });

    }

    @Override
    public void modify(Goods goods) {
        String sql = "update Goods set name=?,price=?,description=?,brand=?,cpu_brand=?,cpu_type=?,memory_capacity=?,hd_capacity=?,card_model=?,displaysize=?,image=? where id=?";

        jdbcTemplate.update(conn -> {

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, goods.getName());
            ps.setDouble(2, goods.getPrice());
            ps.setString(3, goods.getDescription());
            ps.setString(4, goods.getBrand());
            ps.setString(5, goods.getCpuBrand());
            ps.setString(6, goods.getCpuType());
            ps.setString(7, goods.getMemoryCapacity());
            ps.setString(8, goods.getHdCapacity());
            ps.setString(9, goods.getCardModel());
            ps.setString(10, goods.getDisplaysize());
            ps.setString(11, goods.getImage());
            ps.setLong(12, goods.getId());

            return ps;
        });
    }

    @Override
    public void remove(long pk) {
        String sql = "delete from Goods where id=?";

        jdbcTemplate.update(conn -> {

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setLong(1, pk);

            return ps;
        });
    }
}

