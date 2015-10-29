/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Group2;

import java.io.Serializable;

public class User implements Serializable {

    private String Firstname;
    private String Lastname;
    private String Phone;
    private String Address;
    private String City;
    private String State;
    private String Zipcode;
    private String Email;
    
    

    public User() {
        Firstname = "";
        Lastname = "";
        Phone = "";
        Address = "";
        City = "";
        State = "";
        Zipcode = "";
        Email = "";
        }

    public User(String Firstname, String Lastname, String Phone, String Address, String City,String State, String Zipcode, String Email) {
    
        this.Firstname = Firstname;
        this.Lastname = Lastname;
        this.Phone = Phone;
        this.Address = Address;
        this.City = City;
        this.State = State;
        this.Zipcode = Zipcode;
        this.Email = Email;}
        

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
        
    }
      public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Lastname = Phone;
        
    }
      public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
        
    }
      public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
        
    }
      public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
        
    }
      public String getZipcode() {
        return Zipcode;
    }

    public void setZipcode(String Zipcode) {
        this.Zipcode = Zipcode;
        
    }
     public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
}

    