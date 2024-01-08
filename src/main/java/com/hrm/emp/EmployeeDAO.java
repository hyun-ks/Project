package com.hrm.emp;

import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    // 가정상의 데이터베이스나 외부 소스에서 사원 목록을 가져오는 메서드
    public List<Employee> getAllEmployees() {
        // 여기서는 간단히 더미 데이터를 반환하는 예시를 보여줍니다.
        List<Employee> employees = new ArrayList<>();

        // 실제 데이터베이스에서 데이터를 가져오거나 다른 소스에서 데이터를 가져와야 합니다.
        // 여기서는 임의의 데이터를 생성해서 목록에 추가합니다.
        employees.add(new Employee(1, "John Doe", "IT"));
        employees.add(new Employee(2, "Jane Smith", "HR"));
        employees.add(new Employee(3, "Bob Johnson", "Finance"));

        return employees;
    }
}
