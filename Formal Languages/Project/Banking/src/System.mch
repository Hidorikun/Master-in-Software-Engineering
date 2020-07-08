/* System
 * Author: george
 * Creation date: 1/7/2020
 */
MACHINE
    System

SETS
    PIN_STATES = { CORRECT_PIN , INCORRECT_PIN }

INCLUDES
    ATM ,
    Account ,
    Bank ,
    Card ,
    Customer

PROMOTES
    create_account ,
    get_account_id ,
    get_account_currency ,
    set_account_currency ,
    get_account_bank ,
    get_account_amount ,
    withdraw_account_amount ,
    get_account_customer ,
    set_account_customer ,
    destroy_account ,
    create_atm ,
    get_atm_id ,
    set_atm_card_authenticated ,
    get_atm_card_authenticated ,
    get_atm_bank ,
    set_atm_bank ,
    atm_insert_card ,
    get_atm_inserted_card ,
    atm_remove_card ,
    destroy_atm ,
    create_bank ,
    get_bank_code ,
    get_bank_name ,
    set_bank_name ,
    destroy_bank ,
    create_card ,
    get_card_code ,
    get_card_number ,
    set_card_number ,
    get_card_pin ,
    set_card_pin ,
    get_card_account ,
    set_card_account ,
    destroy_card ,
    create_customer ,
    get_customer_id ,
    get_customer_name ,
    set_customer_name ,
    destroy_customer

//OPERATIONS
//    
//
//    //get card amount
//    card_amount_value <-- atm_get_card_amount(atm_value) = 
//    PRE
//        atm_value : atm
//    THEN        
//        card_amount_value <-- get_account_amount(get_card_account(get_atm_inserted_card(atm_value)))
//    END;
//  
//    // insert card pin
//    message <-- atm_input_card_pin(atm_value, attempted_pin_value) = 
//    PRE
//        atm_value : atm
//        & attempted_pin_value : NATURAL1
//        & atm_value : dom(atm_inserted_card)
//    THEN
//        IF attempted_pin_value = get_card_pin(atm_inserted_card(atm_value))
//        THEN
//            message := CORRECT_PIN
//            || set_atm_card_authenticated(atm_value, TRUE)
//        ELSE
//            message := INCORRECT_PIN
//        END
//    END;
//  
//    //withdraw amount
//    atm_withdraw_amount(atm_value, money_value) = 
//    PRE
//        atm_value : atm
//        & money_value : NATURAL1
//        & get_atm_card_authenticated(atm_value) = TRUE
//    THEN
//        IF get_atm_bank(atm_value) = get_account_bank(get_card_account(get_atm_inserted_card(atm_value)))
//        THEN
//            withdraw_account_amount(get_card_account(get_atm_inserted_card(atm_value)), money_value)
//        ELSE
//            withdraw_account_amount(get_card_account(get_atm_inserted_card(atm_value)), money_value + (5 / 100) * money_value)
//        END        
//    END;
//    
//    //change pin
//    change_pin(atm_value, pin_value) =
//    PRE
//        atm_value : atm 
//        & pin_value : NATURAL1
//        & get_atm_card_authenticated(atm_value) = TRUE
//    THEN
//        set_card_pin(get_atm_inserted_card(atm_value), pin_value)
//    END
END
