/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service;

import Store.store.domain.Customer;

/**
 *
 * @author Administrator
 */
public interface CustomerService {
    /**
     * 处理客户登录
     * @param customer
     * @return 登录成功返回true,登录失败返回false
     */
    boolean login(Customer customer);
    
    /**
     * 处理客户注册
     * @param customer
     * @throws ServiceException 注册失败抛出异常
     */
    void register(Customer customer) throws ServiceException;
}

