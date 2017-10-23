package christianalderite;

import java.io.Serializable;

public class loginmodel implements Serializable{
    private String email;
    private String password;
    private String fname;
    private String lname;
    
    public void setEmail(String email){
        this.email = email;
    }
    public void setFirstName(String fname){
        this.fname = fname;
    }
    public void setLastName(String lname){
        this.lname = lname;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getEmail(){
        return email;
    }
    public String getPassword(){
        return password;
    }
     public String getFirstName(){
        return fname;
    }
    public String getLastName(){
        return lname;
    }
}
