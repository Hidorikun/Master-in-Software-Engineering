MACHINE
    Employee
SEES 
    String
USES
    Company
SETS
    EMPLOYEE;
    STUDIES = {elementary, secondary, higher}
CONSTANTS
    max_salary
PROPERTIES
    max_salary : STUDIES --> NATURAL  &
    max_salary = {(elementary |-> 10), (secondary |-> 20), (higher |-> 50)}
VARIABLES
    employee, identifier, employee_name, employer, studies, salary
INVARIANT
    employee <: EMPLOYEE &
    identifier : employee >-> NATURAL1 &
    employee_name : employee --> STR &
    studies : employee --> STUDIES &
    salary : employee --> NATURAL &
    employer : employee --> company &
    ! emp . (emp : employee => salary(emp) <= max_salary(studies(emp)))
   
INITIALISATION
    employee := {} || identifier := {} || employee_name := {} || 
    employer := {} || studies := {} || salary := {}
OPERATIONS
   
    employee_value <-- create_employee(id_value, name_value, company_value, studies_value,
                       salary_value) =
    PRE
         name_value : STR &
         id_value : NATURAL1 &
         id_value /: ran(identifier) &
         company_value : company &
         studies_value : STUDIES &
         salary_value : NATURAL &
         salary_value <= max_salary(studies_value)
     THEN
         ANY emp
         WHERE emp : EMPLOYEE - employee
         THEN
              employee := employee \/ {emp} ||
              employee_name(emp) := name_value ||
              identifier(emp) := id_value ||
              employer(emp) := company_value ||
              studies(emp) := studies_value ||
              salary(emp) := salary_value ||
              employee_value := emp
         END      
     END;
     
     id_value <-- get_employee_id(employee_value) = 
     PRE
         employee_value : employee
     THEN
         id_value := identifier(employee_value)
     END;
     
     name_value <-- get_employee_name(employee_value) = 
     PRE
         employee_value : employee
     THEN
         name_value := employee_name(employee_value)
     END;
     
     company_value <-- get_employee_employer(employee_value) = 
     PRE
         employee_value : employee
     THEN
         company_value := employer(employee_value)
     END;
     
     studies_value <-- get_employee_studies(employee_value) = 
     PRE
         employee_value : employee
     THEN
         studies_value := studies(employee_value)
     END;
     
     salary_value <-- get_employee_salary(employee_value) = 
     PRE
         employee_value : employee
     THEN
         salary_value := salary(employee_value)
     END;
     
     set_employee_id(employee_value, id_value) = 
     PRE
         employee_value : employee &
         id_value : NATURAL1 &
         id_value /: ran(identifier)
     THEN
         identifier(employee_value) := id_value
     END;
     
     set_employee_name(employee_value, name_value) = 
     PRE
         employee_value : employee &
         name_value : STR
     THEN
         employee_name(employee_value) := name_value
     END;
     
     set_employee_employer(employee_value, company_value) = 
     PRE
         employee_value : employee &
         company_value : company
     THEN
         employer(employee_value) := company_value
     END;
     
     set_employee_studies(employee_value, studies_value) = 
     PRE
         employee_value : employee &
         studies_value : STUDIES &
         salary(employee_value) <= max_salary(studies_value)
     THEN
         studies(employee_value) := studies_value
     END;
     
     set_employee_salary(employee_value, salary_value) = 
     PRE
         employee_value : employee &
         salary_value : NATURAL &
         salary_value <= max_salary(studies(employee_value))
     THEN
         salary(employee_value) := salary_value
     END;
     
     destroy_employee(employee_value) =
     PRE
         employee_value : employee
     THEN
         employee := employee - {employee_value} ||
         identifier := {employee_value} <<| identifier ||
         employee_name := {employee_value} <<| employee_name ||
         employer := {employee_value} <<| employer ||
         studies := {employee_value} <<| studies ||
         salary := {employee_value} <<| salary 
     END;

    delete_all_employees_from_company(company_value) =
    PRE
        company_value : company
    THEN
        employee := employee - employer~[{company_value}] ||
        identifier := employer~[{company_value}] <<| identifier ||
        employee_name := employer~[{company_value}] <<| employee_name ||
        studies := employer~[{company_value}] <<| studies ||
        salary := employer~[{company_value}] <<| salary ||
        employer := employer |>> {company_value}
     END
     
END
