Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(System))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(System))==(Machine(System));
  Level(Machine(System))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(System)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(System))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(System))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(System))==(Customer,Card,Bank,Account,ATM);
  List_Includes(Machine(System))==(ATM,Account,Bank,Card,Customer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(System))==(create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account,create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm,create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank,create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card,create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(System))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(System))==(?);
  Context_List_Variables(Machine(System))==(?);
  Abstract_List_Variables(Machine(System))==(?);
  Local_List_Variables(Machine(System))==(?);
  List_Variables(Machine(System))==(atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm,account_customer,account_bank,account_id,account_amount,account_currency,account,bank_code,bank_name,bank,card_account,card_code,card_pin,card_number,cards,customer_id,customer_name,customer);
  External_List_Variables(Machine(System))==(atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm,account_customer,account_bank,account_id,account_amount,account_currency,account,bank_code,bank_name,bank,card_account,card_code,card_pin,card_number,cards,customer_id,customer_name,customer)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(System))==(?);
  Abstract_List_VisibleVariables(Machine(System))==(?);
  External_List_VisibleVariables(Machine(System))==(?);
  Expanded_List_VisibleVariables(Machine(System))==(?);
  List_VisibleVariables(Machine(System))==(?);
  Internal_List_VisibleVariables(Machine(System))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(System))==(btrue);
  Gluing_List_Invariant(Machine(System))==(btrue);
  Abstract_List_Invariant(Machine(System))==(btrue);
  Expanded_List_Invariant(Machine(System))==(atm <: ATMs & atm_id: atm >-> NATURAL1 & atm_inserted_card_authenticated: atm --> BOOL & account <: ACCOUNT & account_currency: account --> CURRENCY & account_id: account >-> NATURAL1 & account_amount: account --> NATURAL1 & bank <: BANK & bank_name: bank --> STR & bank_code: bank >-> NATURAL1 & cards <: CARD & card_number: cards >-> STR & card_code: cards --> NATURAL1 & card_pin: cards --> NATURAL1 & customer <: CUSTOMER & customer_name: customer --> STR & customer_id: customer >-> NATURAL1);
  Context_List_Invariant(Machine(System))==(btrue);
  List_Invariant(Machine(System))==(atm_bank: atm --> bank & atm_inserted_card: atm >-> cards & account_bank: account --> bank & account_customer: account --> customer & card_account: cards --> account)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(System))==(btrue);
  Expanded_List_Assertions(Machine(System))==(btrue);
  Context_List_Assertions(Machine(System))==(btrue);
  List_Assertions(Machine(System))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(System))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(System))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(System))==(atm,atm_id,atm_bank,atm_inserted_card,atm_inserted_card_authenticated:={},{},{},{},{};account,account_currency,account_id,account_amount,account_bank,account_customer:={},{},{},{},{},{};bank,bank_name,bank_code:={},{},{};cards,card_number,card_code,card_pin,card_account:={},{},{},{},{};customer,customer_name,customer_id:={},{},{});
  Context_List_Initialisation(Machine(System))==(skip);
  List_Initialisation(Machine(System))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(System))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(System),Machine(ATM))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Account))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Bank))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Card))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Customer))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(System),Machine(Customer))==(btrue);
  List_Context_Constraints(Machine(System))==(btrue);
  List_Constraints(Machine(System))==(btrue);
  List_Constraints(Machine(System),Machine(Card))==(btrue);
  List_Constraints(Machine(System),Machine(Bank))==(btrue);
  List_Constraints(Machine(System),Machine(Account))==(btrue);
  List_Constraints(Machine(System),Machine(ATM))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(System))==(create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm,create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account,create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank,create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card,create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer);
  List_Operations(Machine(System))==(create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm,create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account,create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank,create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card,create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer)
END
&
THEORY ListInputX IS
  List_Input(Machine(System),destroy_customer)==(customer_value);
  List_Input(Machine(System),set_customer_name)==(customer_value,name_value);
  List_Input(Machine(System),get_customer_name)==(customer_value);
  List_Input(Machine(System),get_customer_id)==(customer_value);
  List_Input(Machine(System),create_customer)==(id_value,name_value);
  List_Input(Machine(System),destroy_card)==(card_value);
  List_Input(Machine(System),set_card_account)==(card_value,account_value);
  List_Input(Machine(System),get_card_account)==(card_value);
  List_Input(Machine(System),set_card_pin)==(card_value,pin_value);
  List_Input(Machine(System),get_card_pin)==(card_value);
  List_Input(Machine(System),set_card_number)==(card_value,number_value);
  List_Input(Machine(System),get_card_number)==(card_value);
  List_Input(Machine(System),get_card_code)==(card_value);
  List_Input(Machine(System),create_card)==(code_value,number_value);
  List_Input(Machine(System),destroy_bank)==(bank_value);
  List_Input(Machine(System),set_bank_name)==(bank_value,name_value);
  List_Input(Machine(System),get_bank_name)==(bank_value);
  List_Input(Machine(System),get_bank_code)==(bank_value);
  List_Input(Machine(System),create_bank)==(code_value,name_value);
  List_Input(Machine(System),destroy_account)==(account_value);
  List_Input(Machine(System),set_account_customer)==(account_value,customer_value);
  List_Input(Machine(System),get_account_customer)==(account_value);
  List_Input(Machine(System),withdraw_account_amount)==(account_value,money_value);
  List_Input(Machine(System),get_account_amount)==(account_value);
  List_Input(Machine(System),get_account_bank)==(account_value);
  List_Input(Machine(System),set_account_currency)==(account_value,currency_value);
  List_Input(Machine(System),get_account_currency)==(account_value);
  List_Input(Machine(System),get_account_id)==(account_value);
  List_Input(Machine(System),create_account)==(id_value,currency_value,bank_value);
  List_Input(Machine(System),destroy_atm)==(atm_value);
  List_Input(Machine(System),atm_remove_card)==(atm_value);
  List_Input(Machine(System),get_atm_inserted_card)==(atm_value);
  List_Input(Machine(System),atm_insert_card)==(atm_value,card_value);
  List_Input(Machine(System),set_atm_bank)==(atm_value,bank_value);
  List_Input(Machine(System),get_atm_bank)==(atm_value);
  List_Input(Machine(System),get_atm_card_authenticated)==(atm_value);
  List_Input(Machine(System),set_atm_card_authenticated)==(atm_value,auth_value);
  List_Input(Machine(System),get_atm_id)==(atm_value);
  List_Input(Machine(System),create_atm)==(id_value,bank_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(System),destroy_customer)==(?);
  List_Output(Machine(System),set_customer_name)==(?);
  List_Output(Machine(System),get_customer_name)==(name_value);
  List_Output(Machine(System),get_customer_id)==(id_value);
  List_Output(Machine(System),create_customer)==(customer_value);
  List_Output(Machine(System),destroy_card)==(?);
  List_Output(Machine(System),set_card_account)==(?);
  List_Output(Machine(System),get_card_account)==(account_value);
  List_Output(Machine(System),set_card_pin)==(?);
  List_Output(Machine(System),get_card_pin)==(pin_value);
  List_Output(Machine(System),set_card_number)==(?);
  List_Output(Machine(System),get_card_number)==(number_value);
  List_Output(Machine(System),get_card_code)==(code_value);
  List_Output(Machine(System),create_card)==(card_value);
  List_Output(Machine(System),destroy_bank)==(?);
  List_Output(Machine(System),set_bank_name)==(?);
  List_Output(Machine(System),get_bank_name)==(name_value);
  List_Output(Machine(System),get_bank_code)==(code_value);
  List_Output(Machine(System),create_bank)==(bank_value);
  List_Output(Machine(System),destroy_account)==(?);
  List_Output(Machine(System),set_account_customer)==(?);
  List_Output(Machine(System),get_account_customer)==(customer_value);
  List_Output(Machine(System),withdraw_account_amount)==(?);
  List_Output(Machine(System),get_account_amount)==(amount_value);
  List_Output(Machine(System),get_account_bank)==(bank_value);
  List_Output(Machine(System),set_account_currency)==(?);
  List_Output(Machine(System),get_account_currency)==(currency_value);
  List_Output(Machine(System),get_account_id)==(id_value);
  List_Output(Machine(System),create_account)==(account_value);
  List_Output(Machine(System),destroy_atm)==(?);
  List_Output(Machine(System),atm_remove_card)==(?);
  List_Output(Machine(System),get_atm_inserted_card)==(card_value);
  List_Output(Machine(System),atm_insert_card)==(?);
  List_Output(Machine(System),set_atm_bank)==(?);
  List_Output(Machine(System),get_atm_bank)==(bank_value);
  List_Output(Machine(System),get_atm_card_authenticated)==(auth_value);
  List_Output(Machine(System),set_atm_card_authenticated)==(?);
  List_Output(Machine(System),get_atm_id)==(id_value);
  List_Output(Machine(System),create_atm)==(atm_value)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(System),destroy_customer)==(destroy_customer(customer_value));
  List_Header(Machine(System),set_customer_name)==(set_customer_name(customer_value,name_value));
  List_Header(Machine(System),get_customer_name)==(name_value <-- get_customer_name(customer_value));
  List_Header(Machine(System),get_customer_id)==(id_value <-- get_customer_id(customer_value));
  List_Header(Machine(System),create_customer)==(customer_value <-- create_customer(id_value,name_value));
  List_Header(Machine(System),destroy_card)==(destroy_card(card_value));
  List_Header(Machine(System),set_card_account)==(set_card_account(card_value,account_value));
  List_Header(Machine(System),get_card_account)==(account_value <-- get_card_account(card_value));
  List_Header(Machine(System),set_card_pin)==(set_card_pin(card_value,pin_value));
  List_Header(Machine(System),get_card_pin)==(pin_value <-- get_card_pin(card_value));
  List_Header(Machine(System),set_card_number)==(set_card_number(card_value,number_value));
  List_Header(Machine(System),get_card_number)==(number_value <-- get_card_number(card_value));
  List_Header(Machine(System),get_card_code)==(code_value <-- get_card_code(card_value));
  List_Header(Machine(System),create_card)==(card_value <-- create_card(code_value,number_value));
  List_Header(Machine(System),destroy_bank)==(destroy_bank(bank_value));
  List_Header(Machine(System),set_bank_name)==(set_bank_name(bank_value,name_value));
  List_Header(Machine(System),get_bank_name)==(name_value <-- get_bank_name(bank_value));
  List_Header(Machine(System),get_bank_code)==(code_value <-- get_bank_code(bank_value));
  List_Header(Machine(System),create_bank)==(bank_value <-- create_bank(code_value,name_value));
  List_Header(Machine(System),destroy_account)==(destroy_account(account_value));
  List_Header(Machine(System),set_account_customer)==(set_account_customer(account_value,customer_value));
  List_Header(Machine(System),get_account_customer)==(customer_value <-- get_account_customer(account_value));
  List_Header(Machine(System),withdraw_account_amount)==(withdraw_account_amount(account_value,money_value));
  List_Header(Machine(System),get_account_amount)==(amount_value <-- get_account_amount(account_value));
  List_Header(Machine(System),get_account_bank)==(bank_value <-- get_account_bank(account_value));
  List_Header(Machine(System),set_account_currency)==(set_account_currency(account_value,currency_value));
  List_Header(Machine(System),get_account_currency)==(currency_value <-- get_account_currency(account_value));
  List_Header(Machine(System),get_account_id)==(id_value <-- get_account_id(account_value));
  List_Header(Machine(System),create_account)==(account_value <-- create_account(id_value,currency_value,bank_value));
  List_Header(Machine(System),destroy_atm)==(destroy_atm(atm_value));
  List_Header(Machine(System),atm_remove_card)==(atm_remove_card(atm_value));
  List_Header(Machine(System),get_atm_inserted_card)==(card_value <-- get_atm_inserted_card(atm_value));
  List_Header(Machine(System),atm_insert_card)==(atm_insert_card(atm_value,card_value));
  List_Header(Machine(System),set_atm_bank)==(set_atm_bank(atm_value,bank_value));
  List_Header(Machine(System),get_atm_bank)==(bank_value <-- get_atm_bank(atm_value));
  List_Header(Machine(System),get_atm_card_authenticated)==(auth_value <-- get_atm_card_authenticated(atm_value));
  List_Header(Machine(System),set_atm_card_authenticated)==(set_atm_card_authenticated(atm_value,auth_value));
  List_Header(Machine(System),get_atm_id)==(id_value <-- get_atm_id(atm_value));
  List_Header(Machine(System),create_atm)==(atm_value <-- create_atm(id_value,bank_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(System),destroy_customer)==(customer_value: customer);
  List_Precondition(Machine(System),destroy_customer)==(customer_value: customer);
  Own_Precondition(Machine(System),set_customer_name)==(customer_value: customer & name_value: STR);
  List_Precondition(Machine(System),set_customer_name)==(customer_value: customer & name_value: STR);
  Own_Precondition(Machine(System),get_customer_name)==(customer_value: customer);
  List_Precondition(Machine(System),get_customer_name)==(customer_value: customer);
  Own_Precondition(Machine(System),get_customer_id)==(customer_value: customer);
  List_Precondition(Machine(System),get_customer_id)==(customer_value: customer);
  Own_Precondition(Machine(System),create_customer)==(id_value: NATURAL1 & id_value/:ran(customer_id) & name_value: STR);
  List_Precondition(Machine(System),create_customer)==(id_value: NATURAL1 & id_value/:ran(customer_id) & name_value: STR);
  Own_Precondition(Machine(System),destroy_card)==(card_value: cards);
  List_Precondition(Machine(System),destroy_card)==(card_value: cards);
  Own_Precondition(Machine(System),set_card_account)==(card_value: cards & account_value: account);
  List_Precondition(Machine(System),set_card_account)==(card_value: cards & account_value: account);
  Own_Precondition(Machine(System),get_card_account)==(card_value: cards);
  List_Precondition(Machine(System),get_card_account)==(card_value: cards);
  Own_Precondition(Machine(System),set_card_pin)==(card_value: cards & pin_value: NATURAL1);
  List_Precondition(Machine(System),set_card_pin)==(card_value: cards & pin_value: NATURAL1);
  Own_Precondition(Machine(System),get_card_pin)==(card_value: cards);
  List_Precondition(Machine(System),get_card_pin)==(card_value: cards);
  Own_Precondition(Machine(System),set_card_number)==(card_value: cards & number_value: STR);
  List_Precondition(Machine(System),set_card_number)==(card_value: cards & number_value: STR);
  Own_Precondition(Machine(System),get_card_number)==(card_value: cards);
  List_Precondition(Machine(System),get_card_number)==(card_value: cards);
  Own_Precondition(Machine(System),get_card_code)==(card_value: cards);
  List_Precondition(Machine(System),get_card_code)==(card_value: cards);
  Own_Precondition(Machine(System),create_card)==(code_value: NATURAL1 & code_value/:ran(card_code) & number_value: STR);
  List_Precondition(Machine(System),create_card)==(code_value: NATURAL1 & code_value/:ran(card_code) & number_value: STR);
  Own_Precondition(Machine(System),destroy_bank)==(bank_value: bank);
  List_Precondition(Machine(System),destroy_bank)==(bank_value: bank);
  Own_Precondition(Machine(System),set_bank_name)==(bank_value: bank & name_value: STR);
  List_Precondition(Machine(System),set_bank_name)==(bank_value: bank & name_value: STR);
  Own_Precondition(Machine(System),get_bank_name)==(bank_value: bank);
  List_Precondition(Machine(System),get_bank_name)==(bank_value: bank);
  Own_Precondition(Machine(System),get_bank_code)==(bank_value: bank);
  List_Precondition(Machine(System),get_bank_code)==(bank_value: bank);
  Own_Precondition(Machine(System),create_bank)==(code_value: NATURAL1 & code_value/:ran(bank_code) & name_value: STR);
  List_Precondition(Machine(System),create_bank)==(code_value: NATURAL1 & code_value/:ran(bank_code) & name_value: STR);
  Own_Precondition(Machine(System),destroy_account)==(account_value: account);
  List_Precondition(Machine(System),destroy_account)==(account_value: account);
  Own_Precondition(Machine(System),set_account_customer)==(account_value: account & customer_value: customer);
  List_Precondition(Machine(System),set_account_customer)==(account_value: account & customer_value: customer);
  Own_Precondition(Machine(System),get_account_customer)==(account_value: account);
  List_Precondition(Machine(System),get_account_customer)==(account_value: account);
  Own_Precondition(Machine(System),withdraw_account_amount)==(account_value: account & money_value: NATURAL1 & money_value<account_amount(account_value) & money_value/10: NATURAL1);
  List_Precondition(Machine(System),withdraw_account_amount)==(account_value: account & money_value: NATURAL1 & money_value<account_amount(account_value) & money_value/10: NATURAL1);
  Own_Precondition(Machine(System),get_account_amount)==(account_value: account);
  List_Precondition(Machine(System),get_account_amount)==(account_value: account);
  Own_Precondition(Machine(System),get_account_bank)==(account_value: account);
  List_Precondition(Machine(System),get_account_bank)==(account_value: account);
  Own_Precondition(Machine(System),set_account_currency)==(account_value: account & currency_value: CURRENCY);
  List_Precondition(Machine(System),set_account_currency)==(account_value: account & currency_value: CURRENCY);
  Own_Precondition(Machine(System),get_account_currency)==(account_value: account);
  List_Precondition(Machine(System),get_account_currency)==(account_value: account);
  Own_Precondition(Machine(System),get_account_id)==(account_value: account);
  List_Precondition(Machine(System),get_account_id)==(account_value: account);
  Own_Precondition(Machine(System),create_account)==(id_value: NATURAL1 & id_value/:ran(account_id) & currency_value: CURRENCY & bank_value: bank);
  List_Precondition(Machine(System),create_account)==(id_value: NATURAL1 & id_value/:ran(account_id) & currency_value: CURRENCY & bank_value: bank);
  Own_Precondition(Machine(System),destroy_atm)==(atm_value: atm);
  List_Precondition(Machine(System),destroy_atm)==(atm_value: atm);
  Own_Precondition(Machine(System),atm_remove_card)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(System),atm_remove_card)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  Own_Precondition(Machine(System),get_atm_inserted_card)==(atm_value: atm);
  List_Precondition(Machine(System),get_atm_inserted_card)==(atm_value: atm);
  Own_Precondition(Machine(System),atm_insert_card)==(atm_value: atm & card_value: cards);
  List_Precondition(Machine(System),atm_insert_card)==(atm_value: atm & card_value: cards);
  Own_Precondition(Machine(System),set_atm_bank)==(atm_value: atm & bank_value: bank);
  List_Precondition(Machine(System),set_atm_bank)==(atm_value: atm & bank_value: bank);
  Own_Precondition(Machine(System),get_atm_bank)==(atm_value: atm);
  List_Precondition(Machine(System),get_atm_bank)==(atm_value: atm);
  Own_Precondition(Machine(System),get_atm_card_authenticated)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(System),get_atm_card_authenticated)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  Own_Precondition(Machine(System),set_atm_card_authenticated)==(atm_value: atm & auth_value: BOOL & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(System),set_atm_card_authenticated)==(atm_value: atm & auth_value: BOOL & atm_value: dom(atm_inserted_card));
  Own_Precondition(Machine(System),get_atm_id)==(atm_value: atm);
  List_Precondition(Machine(System),get_atm_id)==(atm_value: atm);
  Own_Precondition(Machine(System),create_atm)==(id_value: NATURAL1 & id_value/:ran(atm_id) & bank_value: bank);
  List_Precondition(Machine(System),create_atm)==(id_value: NATURAL1 & id_value/:ran(atm_id) & bank_value: bank)
END
&
THEORY ListSubstitutionX IS
  List_Substitution(Machine(System),destroy_customer)==(customer:=customer-{customer_value} || customer_id:={customer_value}<<|customer_id || customer_name:={customer_value}<<|customer_name);
  Expanded_List_Substitution(Machine(System),destroy_customer)==(customer_value: customer | customer,customer_id,customer_name:=customer-{customer_value},{customer_value}<<|customer_id,{customer_value}<<|customer_name);
  List_Substitution(Machine(System),set_customer_name)==(customer_name(customer_value):=name_value);
  Expanded_List_Substitution(Machine(System),set_customer_name)==(customer_value: customer & name_value: STR | customer_name:=customer_name<+{customer_value|->name_value});
  List_Substitution(Machine(System),get_customer_name)==(name_value:=customer_name(customer_value));
  Expanded_List_Substitution(Machine(System),get_customer_name)==(customer_value: customer | name_value:=customer_name(customer_value));
  List_Substitution(Machine(System),get_customer_id)==(id_value:=customer_id(customer_value));
  Expanded_List_Substitution(Machine(System),get_customer_id)==(customer_value: customer | id_value:=customer_id(customer_value));
  List_Substitution(Machine(System),create_customer)==(ANY new_customer WHERE new_customer: CUSTOMER-customer THEN customer:=customer\/{new_customer} || customer_id(new_customer):=id_value || customer_name(new_customer):=name_value || customer_value:=new_customer END);
  Expanded_List_Substitution(Machine(System),create_customer)==(id_value: NATURAL1 & id_value/:ran(customer_id) & name_value: STR | @new_customer.(new_customer: CUSTOMER-customer ==> customer,customer_id,customer_name,customer_value:=customer\/{new_customer},customer_id<+{new_customer|->id_value},customer_name<+{new_customer|->name_value},new_customer));
  List_Substitution(Machine(System),destroy_card)==(cards:=cards-{card_value} || card_code:={card_value}<<|card_code || card_number:={card_value}<<|card_number || card_pin:={card_value}<<|card_pin || card_account:={card_value}<<|card_account);
  Expanded_List_Substitution(Machine(System),destroy_card)==(card_value: cards | cards,card_code,card_number,card_pin,card_account:=cards-{card_value},{card_value}<<|card_code,{card_value}<<|card_number,{card_value}<<|card_pin,{card_value}<<|card_account);
  List_Substitution(Machine(System),set_card_account)==(card_account(card_value):=account_value);
  Expanded_List_Substitution(Machine(System),set_card_account)==(card_value: cards & account_value: account | card_account:=card_account<+{card_value|->account_value});
  List_Substitution(Machine(System),get_card_account)==(account_value:=card_account(card_value));
  Expanded_List_Substitution(Machine(System),get_card_account)==(card_value: cards | account_value:=card_account(card_value));
  List_Substitution(Machine(System),set_card_pin)==(card_pin(card_value):=pin_value);
  Expanded_List_Substitution(Machine(System),set_card_pin)==(card_value: cards & pin_value: NATURAL1 | card_pin:=card_pin<+{card_value|->pin_value});
  List_Substitution(Machine(System),get_card_pin)==(pin_value:=card_pin(card_value));
  Expanded_List_Substitution(Machine(System),get_card_pin)==(card_value: cards | pin_value:=card_pin(card_value));
  List_Substitution(Machine(System),set_card_number)==(card_number(card_value):=number_value);
  Expanded_List_Substitution(Machine(System),set_card_number)==(card_value: cards & number_value: STR | card_number:=card_number<+{card_value|->number_value});
  List_Substitution(Machine(System),get_card_number)==(number_value:=card_number(card_value));
  Expanded_List_Substitution(Machine(System),get_card_number)==(card_value: cards | number_value:=card_number(card_value));
  List_Substitution(Machine(System),get_card_code)==(code_value:=card_code(card_value));
  Expanded_List_Substitution(Machine(System),get_card_code)==(card_value: cards | code_value:=card_code(card_value));
  List_Substitution(Machine(System),create_card)==(ANY new_card WHERE new_card: CARD-cards THEN cards:=cards\/{new_card} || card_code(new_card):=code_value || card_number(new_card):=number_value || card_value:=new_card END);
  Expanded_List_Substitution(Machine(System),create_card)==(code_value: NATURAL1 & code_value/:ran(card_code) & number_value: STR | @new_card.(new_card: CARD-cards ==> cards,card_code,card_number,card_value:=cards\/{new_card},card_code<+{new_card|->code_value},card_number<+{new_card|->number_value},new_card));
  List_Substitution(Machine(System),destroy_bank)==(bank:=bank-{bank_value} || bank_code:={bank_value}<<|bank_code || bank_name:={bank_value}<<|bank_name);
  Expanded_List_Substitution(Machine(System),destroy_bank)==(bank_value: bank | bank,bank_code,bank_name:=bank-{bank_value},{bank_value}<<|bank_code,{bank_value}<<|bank_name);
  List_Substitution(Machine(System),set_bank_name)==(bank_name(bank_value):=name_value);
  Expanded_List_Substitution(Machine(System),set_bank_name)==(bank_value: bank & name_value: STR | bank_name:=bank_name<+{bank_value|->name_value});
  List_Substitution(Machine(System),get_bank_name)==(name_value:=bank_name(bank_value));
  Expanded_List_Substitution(Machine(System),get_bank_name)==(bank_value: bank | name_value:=bank_name(bank_value));
  List_Substitution(Machine(System),get_bank_code)==(code_value:=bank_code(bank_value));
  Expanded_List_Substitution(Machine(System),get_bank_code)==(bank_value: bank | code_value:=bank_code(bank_value));
  List_Substitution(Machine(System),create_bank)==(ANY new_bank WHERE new_bank: BANK-bank THEN bank:=bank\/{new_bank} || bank_code(new_bank):=code_value || bank_name(new_bank):=name_value || bank_value:=new_bank END);
  Expanded_List_Substitution(Machine(System),create_bank)==(code_value: NATURAL1 & code_value/:ran(bank_code) & name_value: STR | @new_bank.(new_bank: BANK-bank ==> bank,bank_code,bank_name,bank_value:=bank\/{new_bank},bank_code<+{new_bank|->code_value},bank_name<+{new_bank|->name_value},new_bank));
  List_Substitution(Machine(System),destroy_account)==(account:=account-{account_value} || account_id:={account_value}<<|account_id || account_currency:={account_value}<<|account_currency || account_amount:={account_value}<<|account_amount || account_bank:={account_value}<<|account_bank || account_customer:={account_value}<<|account_customer);
  Expanded_List_Substitution(Machine(System),destroy_account)==(account_value: account | account,account_id,account_currency,account_amount,account_bank,account_customer:=account-{account_value},{account_value}<<|account_id,{account_value}<<|account_currency,{account_value}<<|account_amount,{account_value}<<|account_bank,{account_value}<<|account_customer);
  List_Substitution(Machine(System),set_account_customer)==(account_customer(account_value):=customer_value);
  Expanded_List_Substitution(Machine(System),set_account_customer)==(account_value: account & customer_value: customer | account_customer:=account_customer<+{account_value|->customer_value});
  List_Substitution(Machine(System),get_account_customer)==(customer_value:=account_customer(account_value));
  Expanded_List_Substitution(Machine(System),get_account_customer)==(account_value: account | customer_value:=account_customer(account_value));
  List_Substitution(Machine(System),withdraw_account_amount)==(account_amount(account_value):=account_amount(account_value)-money_value);
  Expanded_List_Substitution(Machine(System),withdraw_account_amount)==(account_value: account & money_value: NATURAL1 & money_value<account_amount(account_value) & money_value/10: NATURAL1 | account_amount:=account_amount<+{account_value|->account_amount(account_value)-money_value});
  List_Substitution(Machine(System),get_account_amount)==(amount_value:=account_amount(account_value));
  Expanded_List_Substitution(Machine(System),get_account_amount)==(account_value: account | amount_value:=account_amount(account_value));
  List_Substitution(Machine(System),get_account_bank)==(bank_value:=account_bank(account_value));
  Expanded_List_Substitution(Machine(System),get_account_bank)==(account_value: account | bank_value:=account_bank(account_value));
  List_Substitution(Machine(System),set_account_currency)==(account_currency(account_value):=currency_value);
  Expanded_List_Substitution(Machine(System),set_account_currency)==(account_value: account & currency_value: CURRENCY | account_currency:=account_currency<+{account_value|->currency_value});
  List_Substitution(Machine(System),get_account_currency)==(currency_value:=account_currency(account_value));
  Expanded_List_Substitution(Machine(System),get_account_currency)==(account_value: account | currency_value:=account_currency(account_value));
  List_Substitution(Machine(System),get_account_id)==(id_value:=account_id(account_value));
  Expanded_List_Substitution(Machine(System),get_account_id)==(account_value: account | id_value:=account_id(account_value));
  List_Substitution(Machine(System),create_account)==(ANY new_account WHERE new_account: ACCOUNT-account THEN account:=account\/{new_account} || account_id(new_account):=id_value || account_currency(new_account):=currency_value || account_bank(new_account):=bank_value || account_value:=new_account END);
  Expanded_List_Substitution(Machine(System),create_account)==(id_value: NATURAL1 & id_value/:ran(account_id) & currency_value: CURRENCY & bank_value: bank | @new_account.(new_account: ACCOUNT-account ==> account,account_id,account_currency,account_bank,account_value:=account\/{new_account},account_id<+{new_account|->id_value},account_currency<+{new_account|->currency_value},account_bank<+{new_account|->bank_value},new_account));
  List_Substitution(Machine(System),destroy_atm)==(atm:=atm-{atm_value} || atm_id:={atm_value}<<|atm_id || atm_bank:={atm_value}<<|atm_bank);
  Expanded_List_Substitution(Machine(System),destroy_atm)==(atm_value: atm | atm,atm_id,atm_bank:=atm-{atm_value},{atm_value}<<|atm_id,{atm_value}<<|atm_bank);
  List_Substitution(Machine(System),atm_remove_card)==(atm_inserted_card:={atm_value}<<|atm_inserted_card || atm_inserted_card_authenticated:={atm_value}<<|atm_inserted_card_authenticated);
  Expanded_List_Substitution(Machine(System),atm_remove_card)==(atm_value: atm & atm_value: dom(atm_inserted_card) | atm_inserted_card,atm_inserted_card_authenticated:={atm_value}<<|atm_inserted_card,{atm_value}<<|atm_inserted_card_authenticated);
  List_Substitution(Machine(System),get_atm_inserted_card)==(card_value:=atm_inserted_card(atm_value));
  Expanded_List_Substitution(Machine(System),get_atm_inserted_card)==(atm_value: atm | card_value:=atm_inserted_card(atm_value));
  List_Substitution(Machine(System),atm_insert_card)==(atm_inserted_card(atm_value):=card_value);
  Expanded_List_Substitution(Machine(System),atm_insert_card)==(atm_value: atm & card_value: cards | atm_inserted_card:=atm_inserted_card<+{atm_value|->card_value});
  List_Substitution(Machine(System),set_atm_bank)==(atm_bank(atm_value):=bank_value);
  Expanded_List_Substitution(Machine(System),set_atm_bank)==(atm_value: atm & bank_value: bank | atm_bank:=atm_bank<+{atm_value|->bank_value});
  List_Substitution(Machine(System),get_atm_bank)==(bank_value:=atm_bank(atm_value));
  Expanded_List_Substitution(Machine(System),get_atm_bank)==(atm_value: atm | bank_value:=atm_bank(atm_value));
  List_Substitution(Machine(System),get_atm_card_authenticated)==(auth_value:=atm_inserted_card_authenticated(atm_value));
  Expanded_List_Substitution(Machine(System),get_atm_card_authenticated)==(atm_value: atm & atm_value: dom(atm_inserted_card) | auth_value:=atm_inserted_card_authenticated(atm_value));
  List_Substitution(Machine(System),set_atm_card_authenticated)==(atm_inserted_card_authenticated(atm_value):=auth_value);
  Expanded_List_Substitution(Machine(System),set_atm_card_authenticated)==(atm_value: atm & auth_value: BOOL & atm_value: dom(atm_inserted_card) | atm_inserted_card_authenticated:=atm_inserted_card_authenticated<+{atm_value|->auth_value});
  List_Substitution(Machine(System),get_atm_id)==(id_value:=atm_id(atm_value));
  Expanded_List_Substitution(Machine(System),get_atm_id)==(atm_value: atm | id_value:=atm_id(atm_value));
  List_Substitution(Machine(System),create_atm)==(ANY new_atm WHERE new_atm: ATMs-atm THEN atm:=atm\/{new_atm} || atm_id(new_atm):=id_value || atm_bank(new_atm):=bank_value || atm_value:=new_atm END);
  Expanded_List_Substitution(Machine(System),create_atm)==(id_value: NATURAL1 & id_value/:ran(atm_id) & bank_value: bank | @new_atm.(new_atm: ATMs-atm ==> atm,atm_id,atm_bank,atm_value:=atm\/{new_atm},atm_id<+{new_atm|->id_value},atm_bank<+{new_atm|->bank_value},new_atm))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(System))==(?);
  Inherited_List_Constants(Machine(System))==(?);
  List_Constants(Machine(System))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(System),CUSTOMER)==(?);
  Context_List_Enumerated(Machine(System))==(?);
  Context_List_Defered(Machine(System))==(?);
  Context_List_Sets(Machine(System))==(?);
  List_Valuable_Sets(Machine(System))==(ATMs,ACCOUNT,BANK,CARD,CUSTOMER);
  Inherited_List_Enumerated(Machine(System))==(?);
  Inherited_List_Defered(Machine(System))==(ATMs,ACCOUNT,BANK,CARD,CUSTOMER);
  Inherited_List_Sets(Machine(System))==(ATMs,ACCOUNT,BANK,CARD,CUSTOMER);
  List_Enumerated(Machine(System))==(PIN_STATES);
  List_Defered(Machine(System))==(?);
  List_Sets(Machine(System))==(PIN_STATES);
  Set_Definition(Machine(System),CARD)==(?);
  Set_Definition(Machine(System),BANK)==(?);
  Set_Definition(Machine(System),ACCOUNT)==(?);
  Set_Definition(Machine(System),ATMs)==(?);
  Set_Definition(Machine(System),PIN_STATES)==({CORRECT_PIN,INCORRECT_PIN})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(System))==(?);
  Expanded_List_HiddenConstants(Machine(System))==(?);
  List_HiddenConstants(Machine(System))==(?);
  External_List_HiddenConstants(Machine(System))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(System))==(btrue);
  Context_List_Properties(Machine(System))==(btrue);
  Inherited_List_Properties(Machine(System))==(ATMs: FIN(INTEGER) & not(ATMs = {}) & ACCOUNT: FIN(INTEGER) & not(ACCOUNT = {}) & BANK: FIN(INTEGER) & not(BANK = {}) & CARD: FIN(INTEGER) & not(CARD = {}) & CUSTOMER: FIN(INTEGER) & not(CUSTOMER = {}));
  List_Properties(Machine(System))==(PIN_STATES: FIN(INTEGER) & not(PIN_STATES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(System),destroy_customer)==(?);
  List_ANY_Var(Machine(System),set_customer_name)==(?);
  List_ANY_Var(Machine(System),get_customer_name)==(?);
  List_ANY_Var(Machine(System),get_customer_id)==(?);
  List_ANY_Var(Machine(System),create_customer)==(Var(new_customer) == atype(CUSTOMER,?,?));
  List_ANY_Var(Machine(System),destroy_card)==(?);
  List_ANY_Var(Machine(System),set_card_account)==(?);
  List_ANY_Var(Machine(System),get_card_account)==(?);
  List_ANY_Var(Machine(System),set_card_pin)==(?);
  List_ANY_Var(Machine(System),get_card_pin)==(?);
  List_ANY_Var(Machine(System),set_card_number)==(?);
  List_ANY_Var(Machine(System),get_card_number)==(?);
  List_ANY_Var(Machine(System),get_card_code)==(?);
  List_ANY_Var(Machine(System),create_card)==(Var(new_card) == atype(CARD,?,?));
  List_ANY_Var(Machine(System),destroy_bank)==(?);
  List_ANY_Var(Machine(System),set_bank_name)==(?);
  List_ANY_Var(Machine(System),get_bank_name)==(?);
  List_ANY_Var(Machine(System),get_bank_code)==(?);
  List_ANY_Var(Machine(System),create_bank)==(Var(new_bank) == atype(BANK,?,?));
  List_ANY_Var(Machine(System),destroy_account)==(?);
  List_ANY_Var(Machine(System),set_account_customer)==(?);
  List_ANY_Var(Machine(System),get_account_customer)==(?);
  List_ANY_Var(Machine(System),withdraw_account_amount)==(?);
  List_ANY_Var(Machine(System),get_account_amount)==(?);
  List_ANY_Var(Machine(System),get_account_bank)==(?);
  List_ANY_Var(Machine(System),set_account_currency)==(?);
  List_ANY_Var(Machine(System),get_account_currency)==(?);
  List_ANY_Var(Machine(System),get_account_id)==(?);
  List_ANY_Var(Machine(System),create_account)==(Var(new_account) == atype(ACCOUNT,?,?));
  List_ANY_Var(Machine(System),destroy_atm)==(?);
  List_ANY_Var(Machine(System),atm_remove_card)==(?);
  List_ANY_Var(Machine(System),get_atm_inserted_card)==(?);
  List_ANY_Var(Machine(System),atm_insert_card)==(?);
  List_ANY_Var(Machine(System),set_atm_bank)==(?);
  List_ANY_Var(Machine(System),get_atm_bank)==(?);
  List_ANY_Var(Machine(System),get_atm_card_authenticated)==(?);
  List_ANY_Var(Machine(System),set_atm_card_authenticated)==(?);
  List_ANY_Var(Machine(System),get_atm_id)==(?);
  List_ANY_Var(Machine(System),create_atm)==(Var(new_atm) == atype(ATMs,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(System)) == (PIN_STATES,CORRECT_PIN,INCORRECT_PIN | CUSTOMER,CARD,BANK,ACCOUNT,ATMs | ? | V,customer_id,customer_name,customer,card_account,card_code,card_pin,card_number,cards,bank_code,bank_name,bank,account_customer,account_bank,account_id,account_amount,account_currency,account,atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm | ? | create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account,create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm,create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank,create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card,create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer | included(Machine(ATM)),included(Machine(Account)),included(Machine(Bank)),included(Machine(Card)),included(Machine(Customer)) | ? | System);
  List_Of_HiddenCst_Ids(Machine(System)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(System)) == (?);
  List_Of_VisibleVar_Ids(Machine(System)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(System)) == (seen(Machine(String)): (STR | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(Currency)): (CURRENCY,EUR,LEU,DOLLAR | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Customer)) == (CUSTOMER | ? | customer_id,customer_name,customer | ? | create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer | ? | seen(Machine(String)) | ? | Customer);
  List_Of_HiddenCst_Ids(Machine(Customer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Customer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Customer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Customer)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?);
  List_Of_Ids(Machine(Card)) == (CARD | ? | card_account,card_code,card_pin,card_number,cards | ? | create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card | ? | seen(Machine(String)),used(Machine(Account)) | ? | Card);
  List_Of_HiddenCst_Ids(Machine(Card)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Card)) == (?);
  List_Of_VisibleVar_Ids(Machine(Card)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Card)) == (?: ?);
  List_Of_Ids(Machine(Account)) == (ACCOUNT | ? | account_customer,account_bank,account_id,account_amount,account_currency,account | ? | create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account | ? | seen(Machine(String)),seen(Machine(Currency)),used(Machine(Bank)),used(Machine(Customer)) | ? | Account);
  List_Of_HiddenCst_Ids(Machine(Account)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Account)) == (?);
  List_Of_VisibleVar_Ids(Machine(Account)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Account)) == (?: ?);
  List_Of_Ids(Machine(Bank)) == (BANK | ? | bank_code,bank_name,bank | ? | create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank | ? | seen(Machine(String)) | ? | Bank);
  List_Of_HiddenCst_Ids(Machine(Bank)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bank)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bank)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bank)) == (?: ?);
  List_Of_Ids(Machine(Currency)) == (CURRENCY,EUR,LEU,DOLLAR | ? | ? | ? | ? | ? | ? | ? | Currency);
  List_Of_HiddenCst_Ids(Machine(Currency)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Currency)) == (?);
  List_Of_VisibleVar_Ids(Machine(Currency)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Currency)) == (?: ?);
  List_Of_Ids(Machine(ATM)) == (ATMs | ? | atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm | ? | create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm | ? | seen(Machine(String)),used(Machine(Bank)),used(Machine(Card)) | ? | ATM);
  List_Of_HiddenCst_Ids(Machine(ATM)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ATM)) == (?);
  List_Of_VisibleVar_Ids(Machine(ATM)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ATM)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(System)) == (Type(ATMs) == Cst(SetOf(atype(ATMs,"[ATMs","]ATMs")));Type(ACCOUNT) == Cst(SetOf(atype(ACCOUNT,"[ACCOUNT","]ACCOUNT")));Type(BANK) == Cst(SetOf(atype(BANK,"[BANK","]BANK")));Type(CARD) == Cst(SetOf(atype(CARD,"[CARD","]CARD")));Type(CUSTOMER) == Cst(SetOf(atype(CUSTOMER,"[CUSTOMER","]CUSTOMER")));Type(PIN_STATES) == Cst(SetOf(etype(PIN_STATES,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(System)) == (Type(CORRECT_PIN) == Cst(etype(PIN_STATES,0,1));Type(INCORRECT_PIN) == Cst(etype(PIN_STATES,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(System)) == (Type(atm) == Mvl(SetOf(atype(ATMs,?,?)));Type(atm_id) == Mvl(SetOf(atype(ATMs,?,?)*btype(INTEGER,?,?)));Type(atm_bank) == Mvl(SetOf(atype(ATMs,?,?)*atype(BANK,?,?)));Type(atm_inserted_card) == Mvl(SetOf(atype(ATMs,?,?)*atype(CARD,?,?)));Type(atm_inserted_card_authenticated) == Mvl(SetOf(atype(ATMs,?,?)*btype(BOOL,0,1)));Type(account) == Mvl(SetOf(atype(ACCOUNT,?,?)));Type(account_currency) == Mvl(SetOf(atype(ACCOUNT,?,?)*etype(CURRENCY,0,2)));Type(account_amount) == Mvl(SetOf(atype(ACCOUNT,?,?)*btype(INTEGER,?,?)));Type(account_id) == Mvl(SetOf(atype(ACCOUNT,?,?)*btype(INTEGER,?,?)));Type(account_bank) == Mvl(SetOf(atype(ACCOUNT,?,?)*atype(BANK,?,?)));Type(account_customer) == Mvl(SetOf(atype(ACCOUNT,?,?)*atype(CUSTOMER,?,?)));Type(bank) == Mvl(SetOf(atype(BANK,?,?)));Type(bank_name) == Mvl(SetOf(atype(BANK,?,?)*atype(STR,"[STR","]STR")));Type(bank_code) == Mvl(SetOf(atype(BANK,?,?)*btype(INTEGER,?,?)));Type(cards) == Mvl(SetOf(atype(CARD,?,?)));Type(card_number) == Mvl(SetOf(atype(CARD,?,?)*atype(STR,"[STR","]STR")));Type(card_pin) == Mvl(SetOf(atype(CARD,?,?)*btype(INTEGER,?,?)));Type(card_code) == Mvl(SetOf(atype(CARD,?,?)*btype(INTEGER,?,?)));Type(card_account) == Mvl(SetOf(atype(CARD,?,?)*atype(ACCOUNT,?,?)));Type(customer) == Mvl(SetOf(atype(CUSTOMER,?,?)));Type(customer_name) == Mvl(SetOf(atype(CUSTOMER,?,?)*atype(STR,"[STR","]STR")));Type(customer_id) == Mvl(SetOf(atype(CUSTOMER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(System)) == (Type(create_account) == Cst(atype(ACCOUNT,?,?),btype(INTEGER,?,?)*etype(CURRENCY,?,?)*atype(BANK,?,?));Type(get_account_id) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(get_account_currency) == Cst(etype(CURRENCY,?,?),atype(ACCOUNT,?,?));Type(set_account_currency) == Cst(No_type,atype(ACCOUNT,?,?)*etype(CURRENCY,?,?));Type(get_account_bank) == Cst(atype(BANK,?,?),atype(ACCOUNT,?,?));Type(get_account_amount) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(withdraw_account_amount) == Cst(No_type,atype(ACCOUNT,?,?)*btype(INTEGER,?,?));Type(get_account_customer) == Cst(atype(CUSTOMER,?,?),atype(ACCOUNT,?,?));Type(set_account_customer) == Cst(No_type,atype(ACCOUNT,?,?)*atype(CUSTOMER,?,?));Type(destroy_account) == Cst(No_type,atype(ACCOUNT,?,?));Type(create_atm) == Cst(atype(ATMs,?,?),btype(INTEGER,?,?)*atype(BANK,?,?));Type(get_atm_id) == Cst(btype(INTEGER,?,?),atype(ATMs,?,?));Type(set_atm_card_authenticated) == Cst(No_type,atype(ATMs,?,?)*btype(BOOL,?,?));Type(get_atm_card_authenticated) == Cst(btype(BOOL,?,?),atype(ATMs,?,?));Type(get_atm_bank) == Cst(atype(BANK,?,?),atype(ATMs,?,?));Type(set_atm_bank) == Cst(No_type,atype(ATMs,?,?)*atype(BANK,?,?));Type(atm_insert_card) == Cst(No_type,atype(ATMs,?,?)*atype(CARD,?,?));Type(get_atm_inserted_card) == Cst(atype(CARD,?,?),atype(ATMs,?,?));Type(atm_remove_card) == Cst(No_type,atype(ATMs,?,?));Type(destroy_atm) == Cst(No_type,atype(ATMs,?,?));Type(create_bank) == Cst(atype(BANK,?,?),btype(INTEGER,?,?)*atype(STR,?,?));Type(get_bank_code) == Cst(btype(INTEGER,?,?),atype(BANK,?,?));Type(get_bank_name) == Cst(atype(STR,?,?),atype(BANK,?,?));Type(set_bank_name) == Cst(No_type,atype(BANK,?,?)*atype(STR,?,?));Type(destroy_bank) == Cst(No_type,atype(BANK,?,?));Type(create_card) == Cst(atype(CARD,?,?),btype(INTEGER,?,?)*atype(STR,?,?));Type(get_card_code) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(get_card_number) == Cst(atype(STR,?,?),atype(CARD,?,?));Type(set_card_number) == Cst(No_type,atype(CARD,?,?)*atype(STR,?,?));Type(get_card_pin) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(set_card_pin) == Cst(No_type,atype(CARD,?,?)*btype(INTEGER,?,?));Type(get_card_account) == Cst(atype(ACCOUNT,?,?),atype(CARD,?,?));Type(set_card_account) == Cst(No_type,atype(CARD,?,?)*atype(ACCOUNT,?,?));Type(destroy_card) == Cst(No_type,atype(CARD,?,?));Type(create_customer) == Cst(atype(CUSTOMER,?,?),btype(INTEGER,?,?)*atype(STR,?,?));Type(get_customer_id) == Cst(btype(INTEGER,?,?),atype(CUSTOMER,?,?));Type(get_customer_name) == Cst(atype(STR,?,?),atype(CUSTOMER,?,?));Type(set_customer_name) == Cst(No_type,atype(CUSTOMER,?,?)*atype(STR,?,?));Type(destroy_customer) == Cst(No_type,atype(CUSTOMER,?,?)));
  Observers(Machine(System)) == (Type(get_account_id) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(get_account_currency) == Cst(etype(CURRENCY,?,?),atype(ACCOUNT,?,?));Type(get_account_bank) == Cst(atype(BANK,?,?),atype(ACCOUNT,?,?));Type(get_account_amount) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(get_account_customer) == Cst(atype(CUSTOMER,?,?),atype(ACCOUNT,?,?));Type(get_atm_id) == Cst(btype(INTEGER,?,?),atype(ATMs,?,?));Type(get_atm_card_authenticated) == Cst(btype(BOOL,?,?),atype(ATMs,?,?));Type(get_atm_bank) == Cst(atype(BANK,?,?),atype(ATMs,?,?));Type(get_atm_inserted_card) == Cst(atype(CARD,?,?),atype(ATMs,?,?));Type(get_bank_code) == Cst(btype(INTEGER,?,?),atype(BANK,?,?));Type(get_bank_name) == Cst(atype(STR,?,?),atype(BANK,?,?));Type(get_card_code) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(get_card_number) == Cst(atype(STR,?,?),atype(CARD,?,?));Type(get_card_pin) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(get_card_account) == Cst(atype(ACCOUNT,?,?),atype(CARD,?,?));Type(get_customer_id) == Cst(btype(INTEGER,?,?),atype(CUSTOMER,?,?));Type(get_customer_name) == Cst(atype(STR,?,?),atype(CUSTOMER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
