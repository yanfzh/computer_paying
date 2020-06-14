/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store.store.domain;

/**
 *
 * @author Administrator
 */
public class Goods {
     private long id;
    private String name;
    private double price;             //单价
    private String description;       //产品描述
    private String brand;             //电脑品牌
    private String cpuBrand;          //CPU品牌
    private String cpuType;           //CPU型号
    private String memoryCapacity;    //内存容量
    private String hdCapacity;        //硬盘容量
    private String cardModel;         //显卡型号
    private String displaysize;       //显示器尺寸
    private String image;             //电脑图片

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCpuBrand() {
        return cpuBrand;
    }

    public void setCpuBrand(String cpuBrand) {
        this.cpuBrand = cpuBrand;
    }

    public String getCpuType() {
        return cpuType;
    }

    public void setCpuType(String cpuType) {
        this.cpuType = cpuType;
    }

    public String getMemoryCapacity() {
        return memoryCapacity;
    }

    public void setMemoryCapacity(String memoryCapacity) {
        this.memoryCapacity = memoryCapacity;
    }

    public String getHdCapacity() {
        return hdCapacity;
    }

    public void setHdCapacity(String hdCapacity) {
        this.hdCapacity = hdCapacity;
    }

    public String getCardModel() {
        return cardModel;
    }

    public void setCardModel(String cardModel) {
        this.cardModel = cardModel;
    }

    public String getDisplaysize() {
        return displaysize;
    }

    public void setDisplaysize(String displaysize) {
        this.displaysize = displaysize;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
}
