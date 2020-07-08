/* Card
 * Author: george
 * Creation date: 1/4/2020
 */
MACHINE
    Card

SEES
    String
   
USES
    Account
    
SETS
    CARD // the set of all possible card instances
    
VARIABLES
    cards, // the set of all cards currently in the system
    card_number, 
    card_pin,
    card_code, 
    card_account
    
INVARIANT
    cards <: CARD // card is a subset of CARD
    & card_number: cards >-> STR // we cannot have multiple cards with the same number
    & card_code: cards --> NATURAL1 // we cannot have multiple cards with the same code (injective)
    & card_pin: cards --> NATURAL1
    & card_account: cards --> account

    
INITIALISATION
    cards := {}
    || card_number := {}
    || card_code := {}
    || card_pin := {}
    || card_account := {}

    
OPERATIONS
    
    // constructor
    card_value <-- create_card(code_value, number_value) =
    PRE
        code_value : NATURAL1
        & code_value /: ran(card_code)
        & number_value : STR
    THEN
        ANY new_card WHERE 
            new_card : CARD - cards
        THEN
            cards := cards \/ {new_card}
            || card_code(new_card) := code_value
            || card_number(new_card) := number_value
            || card_value := new_card
        END                
    END;
    
    
    // get code
    code_value <-- get_card_code(card_value) =
    PRE
        card_value : cards
    THEN
        code_value := card_code(card_value)
    END;
    
    //get number
    number_value <-- get_card_number(card_value) =
    PRE
        card_value : cards
    THEN
        number_value := card_number(card_value)
    END;
    
    //set number
    set_card_number(card_value, number_value) = 
    PRE
        card_value : cards
        & number_value : STR
    THEN
        card_number(card_value) := number_value
    END;
    
    //get pin
    pin_value <-- get_card_pin(card_value) =
    PRE
        card_value : cards
    THEN
        	pin_value := card_pin(card_value)
    END;
    
    //set pin
    set_card_pin(card_value, pin_value) = 
    PRE
        	card_value : cards
        	& pin_value : NATURAL1
    THEN
    	   card_pin(card_value) := pin_value
    END;
    
    //get account
    account_value <-- get_card_account(card_value) =
    PRE
        card_value : cards
    THEN
        account_value := card_account(card_value)
    END;
            
    //set account
    set_card_account(card_value, account_value) = 
    PRE
        card_value : cards
        & account_value : account
    THEN
        card_account(card_value) := account_value      
    END;
        
    //destroy
    destroy_card(card_value) = 
    PRE
        card_value : cards
    THEN
        cards := cards - {card_value}
        || card_code := {card_value} <<| card_code
        || card_number := {card_value} <<| card_number
        || card_pin := {card_value} <<| card_pin
        || card_account := {card_value} <<| card_account
    END

END