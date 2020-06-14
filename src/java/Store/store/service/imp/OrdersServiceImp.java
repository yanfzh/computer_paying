/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service.imp;

import Store.store.dao.GoodsDao;
import Store.store.dao.OrderDao;
import Store.store.dao.OrderLineItemDao;
import Store.store.dao.imp.GoodsDaoImpJdbc;
import Store.store.dao.imp.OrderDaoImpJdbc;
import Store.store.dao.imp.OrderLineItemDaoImpJdbc;
import Store.store.domain.Goods;
import Store.store.domain.OrderLineItem;
import Store.store.domain.Orders;
import Store.store.service.OrdersService;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class OrdersServiceImp implements OrdersService{
    GoodsDao goodsDao=new GoodsDaoImpJdbc();
    OrderDao orderDao=new OrderDaoImpJdbc();
    OrderLineItemDao orderLineItemDao=new OrderLineItemDaoImpJdbc();
    
    @Override
    public String submitOrders(List<Map<String,Object>> car)
    {   Orders orders=new Orders();
        Date date=new Date();
        //Timestamp timestamp = new Timestamp(date.getTime());
        //订单ID
        String ordersid=String.valueOf(date.getTime())+String.valueOf((int)(Math.random()*100));
        orders.setId(ordersid);
        orders.setOrderDate(date);
        orders.setStatus(1);
        orders.setTotal(0.0f);
        //将订单信息插入到数据库中
        orderDao.create(orders);
        //商品总金额
        double total=0.0;
        
        for(Map item: car)
        {   //item结构[商品id,数量]
            Long goodsid=(Long)item.get("goodsid");
            Integer quantity=(Integer)item.get("quantity");
            Goods goods=goodsDao.findByPk(goodsid);
            //小计金额
            double subtotal=quantity*goods.getPrice();
            total+=subtotal;
            
            OrderLineItem lineItem=new OrderLineItem();
            lineItem.setQuantity(quantity);
            lineItem.setGoods(goods);
            lineItem.setOrders(orders);
            lineItem.setSubTotal(subtotal);
            
            //将订单详细插入到数据库
            orderLineItemDao.create(lineItem);
        }
        
        orders.setTotal(total);
        //更新订单数据库
        orderDao.modify(orders);
        
        return ordersid;
    }
}

