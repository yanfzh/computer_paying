/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.dao;

import Store.store.domain.Orders;

import java.util.List;

/**
 *
 * @author Administrator
 */
public interface OrderDao {
    Orders findByPk(String pk);
    
    List<Orders> findAll();
    
    void create(Orders orders);
    
    void modify(Orders orders);
    
    void remove(String pk);
    
}

