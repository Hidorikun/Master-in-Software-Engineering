/* Bank
 * Author: george
 * Creation date: 1/4/2020
 */
MACHINE
    Bank

SEES
    String

SETS
    BANK // the set of all possible bank instances

ABSTRACT_VARIABLES
    bank , // the set of all banks currently in the system
    bank_name ,
    bank_code

INVARIANT
    bank <: BANK // bank is a subset of BANK
    & bank_name : bank --> STR // we can have multiple banks with the same name
    & bank_code : bank >-> NATURAL1 // we cannot have multiple banks with the same code (injective)

INITIALISATION
    bank := {}
    || bank_name := {}
    || bank_code := {}

OPERATIONS

    // constructor
    bank_value <-- create_bank ( code_value , name_value ) =
    PRE
        code_value : NATURAL1
        & code_value /: ran ( bank_code )
        & name_value : STR
    THEN
        ANY new_bank WHERE
            new_bank : BANK - bank
        THEN
            bank := bank \/ { new_bank }
            || bank_code ( new_bank ) := code_value
            || bank_name ( new_bank ) := name_value
            || bank_value := new_bank
        END
    END ;


    // get code
    code_value <-- get_bank_code ( bank_value ) =
    PRE
        bank_value : bank
    THEN
        code_value := bank_code ( bank_value )
    END ;

    //get name
    name_value <-- get_bank_name ( bank_value ) =
    PRE
        bank_value : bank
    THEN
        name_value := bank_name ( bank_value )
    END ;

    //set name
    set_bank_name ( bank_value , name_value ) =
    PRE
        bank_value : bank
        & name_value : STR
    THEN
        bank_name ( bank_value ) := name_value
    END ;


    //destroy
    destroy_bank ( bank_value ) =
    PRE
        bank_value : bank
    THEN
        bank := bank - { bank_value }
        || bank_code := { bank_value } <<| bank_code
        || bank_name := { bank_value } <<| bank_name
    END

END
