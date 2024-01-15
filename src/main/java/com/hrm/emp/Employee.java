package com.hrm.emp;

import java.sql.Blob;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
    private int userid;
    private String em_name;
    private Date em_birth;
    private Date em_hiredate;
    private String em_gender;
    private String em_phone;
    private String em_address;
    private String em_email;
    private String em_photo;
    private int em_salaly;
    private int auth_set;
    private int vac_no;
    
    
}
