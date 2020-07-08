MACHINE
    Company
SEES
    String
SETS
    COMPANY // the set of all possible company instances
VARIABLES
    company, // the set of company instances currently instantiated in the system
    company_name //B variable for the "name" attribute of a company
INVARIANT
    company <: COMPANY &
    company_name : company --> STR //attributes and references are modelled as relations/functions
                                   //the type of function (partial/total, injective, surjective, 
                                   //bijective) depends on multiplicities
INITIALISATION
    company := {} || company_name := {}
    
OPERATIONS
   
    company_value <-- create_company(name_value) =
    PRE
        name_value : STR
    THEN
        ANY comp
        WHERE comp : COMPANY - company
        THEN company := company \/ {comp} ||
             company_name(comp) := name_value ||
             company_value := comp
         END
    END;
     
    delete_company(company_value) =
    PRE
        company_value : company
    THEN
        company := company - {company_value} ||
        company_name := {company_value} <<| company_name
    END;
     
    name_value <-- get_company_name(company_value) =
    PRE
        company_value : company
    THEN
        name_value := company_name(company_value)
    END;
    
    set_company_name(company_value, name_value) =
    PRE
        company_value : company &
        name_value : STR
    THEN
        company_name(company_value) := name_value
    END

END
