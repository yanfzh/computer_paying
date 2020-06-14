/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.service;

import java.util.List;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public interface OrdersService {
    String submitOrders(List<Map<String,Object>> car);
}
