/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service;

/**
 *
 * @author Administrator
 */
public class ServiceException extends Exception{
    public ServiceException(String message)
    {   super(message);
    }

    public ServiceException(String message,Throwable ex)
    {   super(message,ex);
    }    
    
}

