/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.dao;

import Store.store.domain.Goods;

import java.util.List;

/**
 *
 * @author Administrator
 */
public interface GoodsDao {

    Goods findByPk(long pk);

    List<Goods> findAll();

    /**
     * 提供分页查询
     * @param start 开始索引 索引从0开始
     * @param end 结束索引  索引从0开始
     * @return 商品列表
     */
    List<Goods> findStartEnd(int start, int end);
    //List<Goods> subList(int start, int end);
    void create(Goods goods);

    void modify(Goods goods);

    void remove(long pk);
}
