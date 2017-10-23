package christianalderite;

import java.io.Serializable;

public class facility extends rentable implements Serializable{
    private String address;
    protected final String type;

    public facility(int id) {
        super(id);
        this.type="facility";
    }
    
    public void setAddress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    @Override
    public String getType(){
        return type;
    }
    @Override
    public String display(){
        String display_text = "<br>Successfully created new "+ this.getType() +": "+ this.getName() +
        "<br>Address: " + this.getAddress() +
        "<br>Description: " + this.getDescription() +
        "<br>Date Added: "+ this.getDateCreated() +
        "<br>Price: "+ this.getPrice();
        return display_text;
    }
    
}