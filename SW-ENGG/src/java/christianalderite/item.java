package christianalderite;

import java.io.Serializable;

public class item extends rentable implements Serializable{
    private int quantity;
    protected final String type;
    
    public item(int id) {
        super(id);
        this.type="item";
    }

    public void setInitQuantity(int init_quantity){
        this.quantity=init_quantity;
    }
    public void addQuantity(int addedQuantity){
        //for future adding of quantity
        this.quantity+=addedQuantity;
    }
    public void forceQuantity(int forcedQuantity){
        //for future forcing of a quantity due to physical item count mismatch
        this.quantity=forcedQuantity;
    }
    public int getQuantity(){
        return quantity;
    }
    @Override
    public String getType(){
        return type;
    }
    @Override
    public String display(){
        String display_text = "<br>Successfully created new "+ this.getType() +": "+ this.getName() +
        "<br>Description: " + this.getDescription() +
        "<br>Date Added: "+ this.getDateCreated() +
        "<br>Quantity: " + this.getQuantity() +
        "<br>Price: "+ this.getPrice();
        return display_text;
    }
   
}