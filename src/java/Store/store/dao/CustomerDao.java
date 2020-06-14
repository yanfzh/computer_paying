/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.dao;

import Store.store.domain.Customer;

import java.util.List;
/**
 *
 * @author Administrator
 */
public interface CustomerDao {
    Customer findByPk(String pk);
    
    List<Customer> findAll();
    
    void create(Customer customer);
    
    void modify(Customer customer);
    
    void remove(String pk);
    
}
