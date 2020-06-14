/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service.imp;

import Store.store.dao.CustomerDao;
import Store.store.dao.imp.CustomerDaoImpJdbc;
import Store.store.domain.Customer;
import Store.store.service.CustomerService;
import Store.store.service.ServiceException;

/**
 *
 * @author Administrator
 */
public class CustomerServiceImp implements CustomerService{
    
    CustomerDao customerDao=new CustomerDaoImpJdbc();
    
    @Override
    public boolean login(Customer customer)
    {   Customer dbCustomer=customerDao.findByPk(customer.getId());
        if(dbCustomer!=null && dbCustomer.getPassword().equals(customer.getPassword()))
        {   //把db返回的客户信息返回给表示层
            customer.setName(dbCustomer.getName());
            customer.setBirthday(dbCustomer.getBirthday());
            customer.setAddress(dbCustomer.getAddress());
            customer.setPhone(dbCustomer.getPhone());
            
            return true;
        }
        
        return false;
    }    
    
    @Override
    public void register(Customer customer) throws ServiceException
    {   Customer dbCustomer=customerDao.findByPk(customer.getId());
        if(dbCustomer!=null)           //客户ID已经存在了
        {   throw new ServiceException("客户ID"+customer.getId()+"已经存在！");
        }
        
        //注册开始
        customerDao.create(customer);
    }
    
}

