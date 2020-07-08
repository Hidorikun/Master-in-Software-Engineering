MACHINE
    System
    
INCLUDES 
    Employee,
    Company

PROMOTES
    create_company, 
    get_company_name,
    set_company_name,
    create_employee,
    destroy_employee, 
    get_employee_id, 
    get_employee_name,
    get_employee_employer,
    get_employee_studies,
    get_employee_salary,
    set_employee_id, 
    set_employee_name, 
    set_employee_employer, 
    set_employee_studies,
    set_employee_salary
    
OPERATIONS
    destroy_company(company_value) =
    PRE
        company_value : company
    THEN
        delete_company(company_value)
        || delete_all_employees_from_company(company_value)
    END
    
END
