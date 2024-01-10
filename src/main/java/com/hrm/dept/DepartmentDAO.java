package com.hrm.dept;

import java.util.ArrayList;
import java.util.List;

public class DepartmentDAO {
    // 실제로는 데이터베이스에서 부서 목록을 가져오는 코드가 있어야 합니다.
    public List<Department> getAllDepartments() {
        // 여기서는 더미 데이터를 반환하는 예시를 보여줍니다.
        List<Department> departments = new ArrayList<>();

        // 실제 데이터베이스에서 데이터를 가져오거나 다른 소스에서 데이터를 가져와야 합니다.
        // 여기서는 임의의 데이터를 생성해서 목록에 추가합니다.
        departments.add(new Department(1, "IT", "New York"));
        departments.add(new Department(2, "HR", "San Francisco"));
        departments.add(new Department(3, "Finance", "Los Angeles"));

        return departments;
    }
}
