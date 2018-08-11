package bean;

import java.io.Serializable;

public class Student implements Serializable {
    
    private int stdId;
    private String stdName;
    private String stdAddress;
    private int age;
    
    public Student(){
    }
    
    public Student(int stdId, String stdName, String stdAddress, int age){
        this.stdId = stdId;
        this.stdName = stdName;
        this.stdAddress = stdAddress;
        this.age = age;
    }
    
    public int getStdId(){
        return stdId;
    }
    
    public void setStdId(int stdId){
        this.stdId = stdId;
    }
    
    public String getStdName(){
        return stdName;
    }
    
    public void setStdName(String stdName){
        this.stdName = stdName;
    }
    
    public String getStdAddress(){
        return stdAddress;
    }
    
    public void setStdAddress(String stdAddress){
        this.stdAddress = stdAddress;
    }
    
    public int getAge(){
        return age;
    }
    
    public void setAge(int age){
        this.age = age;
    }

    
}
