package christianalderite;

import java.io.Serializable;
import static java.lang.System.out;
import java.util.Date;

public class rentable implements Serializable{
    private String name;
    private String date_created;
    private String description;
    private double price;
    private int id;
    private String type;
    
    public rentable(int id){}
   
    public void setDateCreated (Date date){
        this.date_created = date.toString();
    }
    public void setName(String name){
        this.name=name;
    }
    public void setDescription(String description){
        this.description = description;
    }
    public void setPrice(double price){
        this.price = price;
    }
    public String getName(){
        return name;
    }
    public String getDescription(){
        return description;
    }
    public double getPrice(){
        return price;
    }
    public String getDateCreated(){
        return date_created;
    }
    public String getType(){
        return type;
    }
    public int getId(){
        return id;
    }
    public String display(){
        String display_text = "<br>Successfully created new "+ this.getType() +": "+ this.getName() +
        "<br>Description: " + this.getDescription() +
        "<br>Date Added: "+ this.getDateCreated() +
        "<br>Price: "+ this.getPrice();
        return display_text;
    }
}
