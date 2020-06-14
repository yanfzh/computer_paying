/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service.imp;

import Store.store.dao.GoodsDao;
import Store.store.dao.imp.GoodsDaoImpJdbc;
import Store.store.domain.Goods;
import Store.store.service.GoodsService;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class GoodsServiceImp implements GoodsService{
    GoodsDao goodsDao=new GoodsDaoImpJdbc();
    
    @Override
    public List<Goods> queryAll()
    {   return goodsDao.findAll();
    }    
    
    @Override
    public List<Goods> queryByStartEnd(int start,int end)
    {   
       return goodsDao.findStartEnd(start, end);
    }    
    
    @Override
    public Goods querDetail(long goodsid)
    {   return goodsDao.findByPk(goodsid);
    }    
    
}
