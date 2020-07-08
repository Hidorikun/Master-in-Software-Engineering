/* ATM
 * Author: george
 * Creation date: 1/4/2020
 */
MACHINE
    ATM

SEES 
    String
    
USES
    Bank,
    Card
    
SETS
    ATMs // the set of all possible ATM instances
    
VARIABLES
    atm, // the set of all accounts currently in the system   
    atm_id,
    atm_bank,
    atm_inserted_card,
    atm_inserted_card_authenticated
    
INVARIANT
    atm <: ATMs // account is a subset of ACCOUNT
    & atm_id : atm >-> NATURAL1
    & atm_bank : atm --> bank
    & atm_inserted_card : atm >-> cards // one card cannot be inserted into multiple atm machines
    & atm_inserted_card_authenticated : atm --> BOOL

INITIALISATION
    atm := {}
    || atm_id := {}
    || atm_bank := {}
    || atm_inserted_card := {}
    || atm_inserted_card_authenticated := {}

OPERATIONS
      
    // constructor
    atm_value <-- create_atm(id_value, bank_value) =
    PRE
        id_value : NATURAL1
        & id_value /: ran(atm_id)
        & bank_value : bank
    THEN
        ANY new_atm WHERE 
            new_atm : ATMs - atm
        THEN
            atm := atm \/ {new_atm}
            || atm_id(new_atm) := id_value
            || atm_bank(new_atm) := bank_value
            || atm_value := new_atm
        END                
    END;
    
    // get id
    id_value <-- get_atm_id(atm_value) =
    PRE
        atm_value : atm
    THEN
        id_value := atm_id(atm_value)
    END;
    
    // set card authenticated
    set_atm_card_authenticated(atm_value, auth_value) = 
    PRE
        atm_value : atm
        & auth_value: BOOL 
        & atm_value : dom(atm_inserted_card)
    THEN
        atm_inserted_card_authenticated(atm_value) := auth_value
    END;
    
    // get card authenticated
    auth_value <-- get_atm_card_authenticated(atm_value) =
    PRE 
        atm_value : atm
        & atm_value : dom(atm_inserted_card)
    THEN
        auth_value := atm_inserted_card_authenticated(atm_value)
    END;
                
    
    //get bank
    bank_value <-- get_atm_bank(atm_value) =
    PRE
        atm_value : atm
    THEN
        bank_value := atm_bank(atm_value)
    END;
    
    //set bank
    set_atm_bank(atm_value, bank_value) = 
    PRE
        atm_value : atm
        & bank_value : bank
    THEN
        atm_bank(atm_value) := bank_value
    END;
    
    //insert card
    atm_insert_card(atm_value, card_value) = 
    PRE
        atm_value : atm
        & card_value : cards
    THEN
        atm_inserted_card(atm_value) := card_value
    END;
    
    //get inserted card
    card_value <-- get_atm_inserted_card(atm_value) =
    PRE
        atm_value : atm
    THEN
        card_value := atm_inserted_card(atm_value)
    END;
    
    //remove card 
    atm_remove_card(atm_value) =
    PRE
        atm_value : atm
        & atm_value : dom(atm_inserted_card)
    THEN
        atm_inserted_card := {atm_value} <<| atm_inserted_card
        || atm_inserted_card_authenticated := {atm_value} <<| atm_inserted_card_authenticated
    END;
        
    //destroy
    destroy_atm(atm_value) = 
    PRE
        atm_value : atm
    THEN
        atm := atm - {atm_value}
        || atm_id := {atm_value} <<| atm_id
        || atm_bank := {atm_value} <<| atm_bank
    END
END
