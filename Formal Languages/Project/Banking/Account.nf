Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Account))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Account))==(Machine(Account));
  Level(Machine(Account))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Account)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Account))==(String,Currency)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Account))==(Bank,Customer)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Account))==(?);
  List_Includes(Machine(Account))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Account))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Account))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Account))==(bank_code,bank_name,bank,customer_id,customer_name,customer);
  Context_List_Variables(Machine(Account))==(bank_code,bank_name,bank,customer_id,customer_name,customer);
  Abstract_List_Variables(Machine(Account))==(?);
  Local_List_Variables(Machine(Account))==(account_customer,account_bank,account_id,account_amount,account_currency,account);
  List_Variables(Machine(Account))==(account_customer,account_bank,account_id,account_amount,account_currency,account);
  External_List_Variables(Machine(Account))==(account_customer,account_bank,account_id,account_amount,account_currency,account)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Account))==(?);
  Abstract_List_VisibleVariables(Machine(Account))==(?);
  External_List_VisibleVariables(Machine(Account))==(?);
  Expanded_List_VisibleVariables(Machine(Account))==(?);
  List_VisibleVariables(Machine(Account))==(?);
  Internal_List_VisibleVariables(Machine(Account))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Account))==(btrue);
  Gluing_List_Invariant(Machine(Account))==(account_bank: account --> bank & account_customer: account --> customer);
  Expanded_List_Invariant(Machine(Account))==(btrue);
  Abstract_List_Invariant(Machine(Account))==(btrue);
  Context_List_Invariant(Machine(Account))==(bank <: BANK & bank_name: bank --> STR & bank_code: bank >-> NATURAL1 & customer <: CUSTOMER & customer_name: customer --> STR & customer_id: customer >-> NATURAL1);
  List_Invariant(Machine(Account))==(account <: ACCOUNT & account_currency: account --> CURRENCY & account_id: account >-> NATURAL1 & account_amount: account --> NATURAL1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Account))==(btrue);
  Abstract_List_Assertions(Machine(Account))==(btrue);
  Context_List_Assertions(Machine(Account))==(btrue);
  List_Assertions(Machine(Account))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Account))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Account))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Account))==(account,account_currency,account_id,account_amount,account_bank,account_customer:={},{},{},{},{},{});
  Context_List_Initialisation(Machine(Account))==(bank,bank_name,bank_code:={},{},{};customer,customer_name,customer_id:={},{},{});
  List_Initialisation(Machine(Account))==(account:={} || account_currency:={} || account_id:={} || account_amount:={} || account_bank:={} || account_customer:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Account))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Account),Machine(Bank))==(?);
  List_Instanciated_Parameters(Machine(Account),Machine(Customer))==(?);
  List_Instanciated_Parameters(Machine(Account),Machine(String))==(?);
  List_Instanciated_Parameters(Machine(Account),Machine(Currency))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Account))==(btrue);
  List_Constraints(Machine(Account))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Account))==(create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account);
  List_Operations(Machine(Account))==(create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account)
END
&
THEORY ListInputX IS
  List_Input(Machine(Account),create_account)==(id_value,currency_value,bank_value);
  List_Input(Machine(Account),get_account_id)==(account_value);
  List_Input(Machine(Account),get_account_currency)==(account_value);
  List_Input(Machine(Account),set_account_currency)==(account_value,currency_value);
  List_Input(Machine(Account),get_account_bank)==(account_value);
  List_Input(Machine(Account),get_account_amount)==(account_value);
  List_Input(Machine(Account),withdraw_account_amount)==(account_value,money_value);
  List_Input(Machine(Account),get_account_customer)==(account_value);
  List_Input(Machine(Account),set_account_customer)==(account_value,customer_value);
  List_Input(Machine(Account),destroy_account)==(account_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Account),create_account)==(account_value);
  List_Output(Machine(Account),get_account_id)==(id_value);
  List_Output(Machine(Account),get_account_currency)==(currency_value);
  List_Output(Machine(Account),set_account_currency)==(?);
  List_Output(Machine(Account),get_account_bank)==(bank_value);
  List_Output(Machine(Account),get_account_amount)==(amount_value);
  List_Output(Machine(Account),withdraw_account_amount)==(?);
  List_Output(Machine(Account),get_account_customer)==(customer_value);
  List_Output(Machine(Account),set_account_customer)==(?);
  List_Output(Machine(Account),destroy_account)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Account),create_account)==(account_value <-- create_account(id_value,currency_value,bank_value));
  List_Header(Machine(Account),get_account_id)==(id_value <-- get_account_id(account_value));
  List_Header(Machine(Account),get_account_currency)==(currency_value <-- get_account_currency(account_value));
  List_Header(Machine(Account),set_account_currency)==(set_account_currency(account_value,currency_value));
  List_Header(Machine(Account),get_account_bank)==(bank_value <-- get_account_bank(account_value));
  List_Header(Machine(Account),get_account_amount)==(amount_value <-- get_account_amount(account_value));
  List_Header(Machine(Account),withdraw_account_amount)==(withdraw_account_amount(account_value,money_value));
  List_Header(Machine(Account),get_account_customer)==(customer_value <-- get_account_customer(account_value));
  List_Header(Machine(Account),set_account_customer)==(set_account_customer(account_value,customer_value));
  List_Header(Machine(Account),destroy_account)==(destroy_account(account_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Account),create_account)==(id_value: NATURAL1 & id_value/:ran(account_id) & currency_value: CURRENCY & bank_value: bank);
  List_Precondition(Machine(Account),get_account_id)==(account_value: account);
  List_Precondition(Machine(Account),get_account_currency)==(account_value: account);
  List_Precondition(Machine(Account),set_account_currency)==(account_value: account & currency_value: CURRENCY);
  List_Precondition(Machine(Account),get_account_bank)==(account_value: account);
  List_Precondition(Machine(Account),get_account_amount)==(account_value: account);
  List_Precondition(Machine(Account),withdraw_account_amount)==(account_value: account & money_value: NATURAL1 & money_value<account_amount(account_value) & money_value/10: NATURAL1);
  List_Precondition(Machine(Account),get_account_customer)==(account_value: account);
  List_Precondition(Machine(Account),set_account_customer)==(account_value: account & customer_value: customer);
  List_Precondition(Machine(Account),destroy_account)==(account_value: account)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Account),destroy_account)==(account_value: account | account,account_id,account_currency,account_amount,account_bank,account_customer:=account-{account_value},{account_value}<<|account_id,{account_value}<<|account_currency,{account_value}<<|account_amount,{account_value}<<|account_bank,{account_value}<<|account_customer);
  Expanded_List_Substitution(Machine(Account),set_account_customer)==(account_value: account & customer_value: customer | account_customer:=account_customer<+{account_value|->customer_value});
  Expanded_List_Substitution(Machine(Account),get_account_customer)==(account_value: account | customer_value:=account_customer(account_value));
  Expanded_List_Substitution(Machine(Account),withdraw_account_amount)==(account_value: account & money_value: NATURAL1 & money_value<account_amount(account_value) & money_value/10: NATURAL1 | account_amount:=account_amount<+{account_value|->account_amount(account_value)-money_value});
  Expanded_List_Substitution(Machine(Account),get_account_amount)==(account_value: account | amount_value:=account_amount(account_value));
  Expanded_List_Substitution(Machine(Account),get_account_bank)==(account_value: account | bank_value:=account_bank(account_value));
  Expanded_List_Substitution(Machine(Account),set_account_currency)==(account_value: account & currency_value: CURRENCY | account_currency:=account_currency<+{account_value|->currency_value});
  Expanded_List_Substitution(Machine(Account),get_account_currency)==(account_value: account | currency_value:=account_currency(account_value));
  Expanded_List_Substitution(Machine(Account),get_account_id)==(account_value: account | id_value:=account_id(account_value));
  Expanded_List_Substitution(Machine(Account),create_account)==(id_value: NATURAL1 & id_value/:ran(account_id) & currency_value: CURRENCY & bank_value: bank | @new_account.(new_account: ACCOUNT-account ==> account,account_id,account_currency,account_bank,account_value:=account\/{new_account},account_id<+{new_account|->id_value},account_currency<+{new_account|->currency_value},account_bank<+{new_account|->bank_value},new_account));
  List_Substitution(Machine(Account),create_account)==(ANY new_account WHERE new_account: ACCOUNT-account THEN account:=account\/{new_account} || account_id(new_account):=id_value || account_currency(new_account):=currency_value || account_bank(new_account):=bank_value || account_value:=new_account END);
  List_Substitution(Machine(Account),get_account_id)==(id_value:=account_id(account_value));
  List_Substitution(Machine(Account),get_account_currency)==(currency_value:=account_currency(account_value));
  List_Substitution(Machine(Account),set_account_currency)==(account_currency(account_value):=currency_value);
  List_Substitution(Machine(Account),get_account_bank)==(bank_value:=account_bank(account_value));
  List_Substitution(Machine(Account),get_account_amount)==(amount_value:=account_amount(account_value));
  List_Substitution(Machine(Account),withdraw_account_amount)==(account_amount(account_value):=account_amount(account_value)-money_value);
  List_Substitution(Machine(Account),get_account_customer)==(customer_value:=account_customer(account_value));
  List_Substitution(Machine(Account),set_account_customer)==(account_customer(account_value):=customer_value);
  List_Substitution(Machine(Account),destroy_account)==(account:=account-{account_value} || account_id:={account_value}<<|account_id || account_currency:={account_value}<<|account_currency || account_amount:={account_value}<<|account_amount || account_bank:={account_value}<<|account_bank || account_customer:={account_value}<<|account_customer)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Account))==(?);
  Inherited_List_Constants(Machine(Account))==(?);
  List_Constants(Machine(Account))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Account),CURRENCY)==({EUR,LEU,DOLLAR});
  Context_List_Enumerated(Machine(Account))==(CURRENCY);
  Context_List_Defered(Machine(Account))==(STR,BANK,CUSTOMER);
  Context_List_Sets(Machine(Account))==(STR,CURRENCY,BANK,CUSTOMER);
  List_Valuable_Sets(Machine(Account))==(ACCOUNT);
  Inherited_List_Enumerated(Machine(Account))==(?);
  Inherited_List_Defered(Machine(Account))==(?);
  Inherited_List_Sets(Machine(Account))==(?);
  List_Enumerated(Machine(Account))==(?);
  List_Defered(Machine(Account))==(ACCOUNT);
  List_Sets(Machine(Account))==(ACCOUNT);
  Set_Definition(Machine(Account),ACCOUNT)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Account))==(?);
  Expanded_List_HiddenConstants(Machine(Account))==(?);
  List_HiddenConstants(Machine(Account))==(?);
  External_List_HiddenConstants(Machine(Account))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Account))==(btrue);
  Context_List_Properties(Machine(Account))==(STR: FIN(INTEGER) & not(STR = {}) & CURRENCY: FIN(INTEGER) & not(CURRENCY = {}) & BANK: FIN(INTEGER) & not(BANK = {}) & CUSTOMER: FIN(INTEGER) & not(CUSTOMER = {}));
  Inherited_List_Properties(Machine(Account))==(btrue);
  List_Properties(Machine(Account))==(ACCOUNT: FIN(INTEGER) & not(ACCOUNT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Account),Machine(Currency))==(?);
  Seen_Context_List_Enumerated(Machine(Account))==(?);
  Seen_Context_List_Invariant(Machine(Account))==(btrue);
  Seen_Context_List_Assertions(Machine(Account))==(btrue);
  Seen_Context_List_Properties(Machine(Account))==(btrue);
  Seen_List_Constraints(Machine(Account))==(btrue);
  Seen_List_Operations(Machine(Account),Machine(Currency))==(?);
  Seen_Expanded_List_Invariant(Machine(Account),Machine(Currency))==(btrue);
  Seen_Internal_List_Operations(Machine(Account),Machine(String))==(?);
  Seen_List_Operations(Machine(Account),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Account),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Account),create_account)==(Var(new_account) == atype(ACCOUNT,?,?));
  List_ANY_Var(Machine(Account),get_account_id)==(?);
  List_ANY_Var(Machine(Account),get_account_currency)==(?);
  List_ANY_Var(Machine(Account),set_account_currency)==(?);
  List_ANY_Var(Machine(Account),get_account_bank)==(?);
  List_ANY_Var(Machine(Account),get_account_amount)==(?);
  List_ANY_Var(Machine(Account),withdraw_account_amount)==(?);
  List_ANY_Var(Machine(Account),get_account_customer)==(?);
  List_ANY_Var(Machine(Account),set_account_customer)==(?);
  List_ANY_Var(Machine(Account),destroy_account)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Account)) == (ACCOUNT | ? | account_customer,account_bank,account_id,account_amount,account_currency,account | ? | create_account,get_account_id,get_account_currency,set_account_currency,get_account_bank,get_account_amount,withdraw_account_amount,get_account_customer,set_account_customer,destroy_account | ? | seen(Machine(String)),seen(Machine(Currency)),used(Machine(Bank)),used(Machine(Customer)) | ? | Account);
  List_Of_HiddenCst_Ids(Machine(Account)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Account)) == (?);
  List_Of_VisibleVar_Ids(Machine(Account)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Account)) == (?: ?);
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
  List_Of_Ids(Machine(Bank)) == (BANK | ? | bank_code,bank_name,bank | ? | create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank | ? | seen(Machine(String)) | ? | Bank);
  List_Of_HiddenCst_Ids(Machine(Bank)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bank)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bank)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bank)) == (?: ?);
  List_Of_Ids(Machine(Currency)) == (CURRENCY,EUR,LEU,DOLLAR | ? | ? | ? | ? | ? | ? | ? | Currency);
  List_Of_HiddenCst_Ids(Machine(Currency)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Currency)) == (?);
  List_Of_VisibleVar_Ids(Machine(Currency)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Currency)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Account)) == (Type(ACCOUNT) == Cst(SetOf(atype(ACCOUNT,"[ACCOUNT","]ACCOUNT"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Account)) == (Type(account_customer) == Mvl(SetOf(atype(ACCOUNT,?,?)*atype(CUSTOMER,?,?)));Type(account_bank) == Mvl(SetOf(atype(ACCOUNT,?,?)*atype(BANK,?,?)));Type(account_id) == Mvl(SetOf(atype(ACCOUNT,?,?)*btype(INTEGER,?,?)));Type(account_amount) == Mvl(SetOf(atype(ACCOUNT,?,?)*btype(INTEGER,?,?)));Type(account_currency) == Mvl(SetOf(atype(ACCOUNT,?,?)*etype(CURRENCY,0,2)));Type(account) == Mvl(SetOf(atype(ACCOUNT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Account)) == (Type(destroy_account) == Cst(No_type,atype(ACCOUNT,?,?));Type(set_account_customer) == Cst(No_type,atype(ACCOUNT,?,?)*atype(CUSTOMER,?,?));Type(get_account_customer) == Cst(atype(CUSTOMER,?,?),atype(ACCOUNT,?,?));Type(withdraw_account_amount) == Cst(No_type,atype(ACCOUNT,?,?)*btype(INTEGER,?,?));Type(get_account_amount) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(get_account_bank) == Cst(atype(BANK,?,?),atype(ACCOUNT,?,?));Type(set_account_currency) == Cst(No_type,atype(ACCOUNT,?,?)*etype(CURRENCY,?,?));Type(get_account_currency) == Cst(etype(CURRENCY,?,?),atype(ACCOUNT,?,?));Type(get_account_id) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(create_account) == Cst(atype(ACCOUNT,?,?),btype(INTEGER,?,?)*etype(CURRENCY,?,?)*atype(BANK,?,?)));
  Observers(Machine(Account)) == (Type(get_account_customer) == Cst(atype(CUSTOMER,?,?),atype(ACCOUNT,?,?));Type(get_account_amount) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?));Type(get_account_bank) == Cst(atype(BANK,?,?),atype(ACCOUNT,?,?));Type(get_account_currency) == Cst(etype(CURRENCY,?,?),atype(ACCOUNT,?,?));Type(get_account_id) == Cst(btype(INTEGER,?,?),atype(ACCOUNT,?,?)))
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
