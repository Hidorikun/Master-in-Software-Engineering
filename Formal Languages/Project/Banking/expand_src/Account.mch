/* Account
 * Author: george
 * Creation date: 1/4/2020
 */
MACHINE
    Account

SEES
    String ,
    Currency

USES
    Bank ,
    Customer

SETS
    ACCOUNT // the set of all possible account instances

ABSTRACT_VARIABLES
    account , // the set of all accounts currently in the system
    account_currency ,
    account_amount ,
    account_id ,
    account_bank ,
    account_customer

INVARIANT
    account <: ACCOUNT // account is a subset of ACCOUNT
    & account_currency : account --> CURRENCY // we can have multiple accounts with the same currency
    & account_id : account >-> NATURAL1 // we cannot have multiple accounts with the same id (injective)
    & account_amount : account --> NATURAL1 // any account can have any amount
    & account_bank : account --> bank
    & account_customer : account --> customer

INITIALISATION
    account := {}
    || account_currency := {}
    || account_id := {}
    || account_amount := {}
    || account_bank := {}
    || account_customer := {}

OPERATIONS

    // constructor
    account_value <-- create_account ( id_value , currency_value , bank_value ) =
    PRE
        id_value : NATURAL1
        & id_value /: ran ( account_id )
        & currency_value : CURRENCY
        & bank_value : bank
    THEN
        ANY new_account WHERE
            new_account : ACCOUNT - account
        THEN
            account := account \/ { new_account }
            || account_id ( new_account ) := id_value
            || account_currency ( new_account ) := currency_value
            || account_bank ( new_account ) := bank_value
            || account_value := new_account

        END
    END ;

    // get id
    id_value <-- get_account_id ( account_value ) =
    PRE
        account_value : account
    THEN
        id_value := account_id ( account_value )
    END ;

    //get currency
    currency_value <-- get_account_currency ( account_value ) =
    PRE
        account_value : account
    THEN
        currency_value := account_currency ( account_value )
    END ;

    //set currency
    set_account_currency ( account_value , currency_value ) =
    PRE
        account_value : account
        & currency_value : CURRENCY
    THEN
        account_currency ( account_value ) := currency_value
    END ;

    //get bank
    bank_value <-- get_account_bank ( account_value ) =
    PRE
        account_value : account
    THEN
        bank_value := account_bank ( account_value )
    END ;


    //get amount
    amount_value <-- get_account_amount ( account_value ) =
    PRE
        account_value : account
    THEN
        amount_value := account_amount ( account_value )
    END ;

    //withdraw amount
    withdraw_account_amount ( account_value , money_value ) =
    PRE
        account_value : account
        & money_value : NATURAL1
        & money_value < account_amount ( account_value )
        & money_value / 10 : NATURAL1
    THEN
        account_amount ( account_value ) := account_amount ( account_value ) - money_value
    END ;

    //get customer
    customer_value <-- get_account_customer ( account_value ) =
    PRE
        account_value : account
    THEN
        customer_value := account_customer ( account_value )
    END ;

    //set customer
    set_account_customer ( account_value , customer_value ) =
    PRE
        account_value : account
        & customer_value : customer
    THEN
        account_customer ( account_value ) := customer_value
    END ;

    //destroy
    destroy_account ( account_value ) =
    PRE
        account_value : account
    THEN
        account := account - { account_value }
        || account_id := { account_value } <<| account_id
        || account_currency := { account_value } <<| account_currency
        || account_amount := { account_value } <<| account_amount
        || account_bank := { account_value } <<| account_bank
        || account_customer := { account_value } <<| account_customer
    END

END
