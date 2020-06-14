/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service;

import Store.store.domain.Goods;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface GoodsService {
    List<Goods> queryAll();
    
    List<Goods> queryByStartEnd(int start,int end);
    
    Goods querDetail(long goodsid);
}

