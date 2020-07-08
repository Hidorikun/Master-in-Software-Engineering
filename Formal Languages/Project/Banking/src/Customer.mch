/* Customer
 * Author: george
 * Creation date: 1/4/2020
 */
MACHINE
    Customer

SEES
    String

SETS
    CUSTOMER // the set of all possible customer instances

ABSTRACT_VARIABLES
    customer , // the set of all customers currently in the system
    customer_name ,
    customer_id

INVARIANT
    customer <: CUSTOMER // customer is a subset of CUSTOMER
    & customer_name : customer --> STR // we can have multiple customers with the same name
    & customer_id : customer >-> NATURAL1 // we cannot have multiple customers with the same id (injective)

INITIALISATION
    customer := {}
    || customer_name := {}
    || customer_id := {}

OPERATIONS

    // constructor
    customer_value <-- create_customer ( id_value , name_value ) =
    PRE
        id_value : NATURAL1
        & id_value /: ran ( customer_id )
        & name_value : STR
    THEN
        ANY new_customer WHERE
            new_customer : CUSTOMER - customer
        THEN
            customer := customer \/ { new_customer }
            || customer_id ( new_customer ) := id_value
            || customer_name ( new_customer ) := name_value
            || customer_value := new_customer
        END
    END ;


    // get id
    id_value <-- get_customer_id ( customer_value ) =
    PRE
        customer_value : customer
    THEN
        id_value := customer_id ( customer_value )
    END ;

    //get name
    name_value <-- get_customer_name ( customer_value ) =
    PRE
        customer_value : customer
    THEN
        name_value := customer_name ( customer_value )
    END ;

    //set name
    set_customer_name ( customer_value , name_value ) =
    PRE
        customer_value : customer
        & name_value : STR
    THEN
        customer_name ( customer_value ) := name_value
    END ;


    //destroy
    destroy_customer ( customer_value ) =
    PRE
        customer_value : customer
    THEN
        customer := customer - { customer_value }
        || customer_id := { customer_value } <<| customer_id
        || customer_name := { customer_value } <<| customer_name
    END

END
