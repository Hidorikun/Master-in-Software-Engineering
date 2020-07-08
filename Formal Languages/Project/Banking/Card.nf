Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Card))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Card))==(Machine(Card));
  Level(Machine(Card))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Card)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Card))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Card))==(Account)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Card))==(?);
  List_Includes(Machine(Card))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Card))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Card))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Card))==(account_customer,account_bank,account_id,account_amount,account_currency,account);
  Context_List_Variables(Machine(Card))==(account_customer,account_bank,account_id,account_amount,account_currency,account);
  Abstract_List_Variables(Machine(Card))==(?);
  Local_List_Variables(Machine(Card))==(card_account,card_code,card_pin,card_number,cards);
  List_Variables(Machine(Card))==(card_account,card_code,card_pin,card_number,cards);
  External_List_Variables(Machine(Card))==(card_account,card_code,card_pin,card_number,cards)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Card))==(?);
  Abstract_List_VisibleVariables(Machine(Card))==(?);
  External_List_VisibleVariables(Machine(Card))==(?);
  Expanded_List_VisibleVariables(Machine(Card))==(?);
  List_VisibleVariables(Machine(Card))==(?);
  Internal_List_VisibleVariables(Machine(Card))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Card))==(btrue);
  Gluing_List_Invariant(Machine(Card))==(card_account: cards --> account);
  Expanded_List_Invariant(Machine(Card))==(btrue);
  Abstract_List_Invariant(Machine(Card))==(btrue);
  Context_List_Invariant(Machine(Card))==(account <: ACCOUNT & account_currency: account --> CURRENCY & account_id: account >-> NATURAL1 & account_amount: account --> NATURAL1);
  List_Invariant(Machine(Card))==(cards <: CARD & card_number: cards >-> STR & card_code: cards --> NATURAL1 & card_pin: cards --> NATURAL1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Card))==(btrue);
  Abstract_List_Assertions(Machine(Card))==(btrue);
  Context_List_Assertions(Machine(Card))==(btrue);
  List_Assertions(Machine(Card))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Card))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Card))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Card))==(cards,card_number,card_code,card_pin,card_account:={},{},{},{},{});
  Context_List_Initialisation(Machine(Card))==(account,account_currency,account_id,account_amount,account_bank,account_customer:={},{},{},{},{},{});
  List_Initialisation(Machine(Card))==(cards:={} || card_number:={} || card_code:={} || card_pin:={} || card_account:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Card))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Card),Machine(Account))==(?);
  List_Instanciated_Parameters(Machine(Card),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Card))==(btrue);
  List_Constraints(Machine(Card))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Card))==(create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card);
  List_Operations(Machine(Card))==(create_card,get_card_code,get_card_number,set_card_number,get_card_pin,set_card_pin,get_card_account,set_card_account,destroy_card)
END
&
THEORY ListInputX IS
  List_Input(Machine(Card),create_card)==(code_value,number_value);
  List_Input(Machine(Card),get_card_code)==(card_value);
  List_Input(Machine(Card),get_card_number)==(card_value);
  List_Input(Machine(Card),set_card_number)==(card_value,number_value);
  List_Input(Machine(Card),get_card_pin)==(card_value);
  List_Input(Machine(Card),set_card_pin)==(card_value,pin_value);
  List_Input(Machine(Card),get_card_account)==(card_value);
  List_Input(Machine(Card),set_card_account)==(card_value,account_value);
  List_Input(Machine(Card),destroy_card)==(card_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Card),create_card)==(card_value);
  List_Output(Machine(Card),get_card_code)==(code_value);
  List_Output(Machine(Card),get_card_number)==(number_value);
  List_Output(Machine(Card),set_card_number)==(?);
  List_Output(Machine(Card),get_card_pin)==(pin_value);
  List_Output(Machine(Card),set_card_pin)==(?);
  List_Output(Machine(Card),get_card_account)==(account_value);
  List_Output(Machine(Card),set_card_account)==(?);
  List_Output(Machine(Card),destroy_card)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Card),create_card)==(card_value <-- create_card(code_value,number_value));
  List_Header(Machine(Card),get_card_code)==(code_value <-- get_card_code(card_value));
  List_Header(Machine(Card),get_card_number)==(number_value <-- get_card_number(card_value));
  List_Header(Machine(Card),set_card_number)==(set_card_number(card_value,number_value));
  List_Header(Machine(Card),get_card_pin)==(pin_value <-- get_card_pin(card_value));
  List_Header(Machine(Card),set_card_pin)==(set_card_pin(card_value,pin_value));
  List_Header(Machine(Card),get_card_account)==(account_value <-- get_card_account(card_value));
  List_Header(Machine(Card),set_card_account)==(set_card_account(card_value,account_value));
  List_Header(Machine(Card),destroy_card)==(destroy_card(card_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Card),create_card)==(code_value: NATURAL1 & code_value/:ran(card_code) & number_value: STR);
  List_Precondition(Machine(Card),get_card_code)==(card_value: cards);
  List_Precondition(Machine(Card),get_card_number)==(card_value: cards);
  List_Precondition(Machine(Card),set_card_number)==(card_value: cards & number_value: STR);
  List_Precondition(Machine(Card),get_card_pin)==(card_value: cards);
  List_Precondition(Machine(Card),set_card_pin)==(card_value: cards & pin_value: NATURAL1);
  List_Precondition(Machine(Card),get_card_account)==(card_value: cards);
  List_Precondition(Machine(Card),set_card_account)==(card_value: cards & account_value: account);
  List_Precondition(Machine(Card),destroy_card)==(card_value: cards)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Card),destroy_card)==(card_value: cards | cards,card_code,card_number,card_pin,card_account:=cards-{card_value},{card_value}<<|card_code,{card_value}<<|card_number,{card_value}<<|card_pin,{card_value}<<|card_account);
  Expanded_List_Substitution(Machine(Card),set_card_account)==(card_value: cards & account_value: account | card_account:=card_account<+{card_value|->account_value});
  Expanded_List_Substitution(Machine(Card),get_card_account)==(card_value: cards | account_value:=card_account(card_value));
  Expanded_List_Substitution(Machine(Card),set_card_pin)==(card_value: cards & pin_value: NATURAL1 | card_pin:=card_pin<+{card_value|->pin_value});
  Expanded_List_Substitution(Machine(Card),get_card_pin)==(card_value: cards | pin_value:=card_pin(card_value));
  Expanded_List_Substitution(Machine(Card),set_card_number)==(card_value: cards & number_value: STR | card_number:=card_number<+{card_value|->number_value});
  Expanded_List_Substitution(Machine(Card),get_card_number)==(card_value: cards | number_value:=card_number(card_value));
  Expanded_List_Substitution(Machine(Card),get_card_code)==(card_value: cards | code_value:=card_code(card_value));
  Expanded_List_Substitution(Machine(Card),create_card)==(code_value: NATURAL1 & code_value/:ran(card_code) & number_value: STR | @new_card.(new_card: CARD-cards ==> cards,card_code,card_number,card_value:=cards\/{new_card},card_code<+{new_card|->code_value},card_number<+{new_card|->number_value},new_card));
  List_Substitution(Machine(Card),create_card)==(ANY new_card WHERE new_card: CARD-cards THEN cards:=cards\/{new_card} || card_code(new_card):=code_value || card_number(new_card):=number_value || card_value:=new_card END);
  List_Substitution(Machine(Card),get_card_code)==(code_value:=card_code(card_value));
  List_Substitution(Machine(Card),get_card_number)==(number_value:=card_number(card_value));
  List_Substitution(Machine(Card),set_card_number)==(card_number(card_value):=number_value);
  List_Substitution(Machine(Card),get_card_pin)==(pin_value:=card_pin(card_value));
  List_Substitution(Machine(Card),set_card_pin)==(card_pin(card_value):=pin_value);
  List_Substitution(Machine(Card),get_card_account)==(account_value:=card_account(card_value));
  List_Substitution(Machine(Card),set_card_account)==(card_account(card_value):=account_value);
  List_Substitution(Machine(Card),destroy_card)==(cards:=cards-{card_value} || card_code:={card_value}<<|card_code || card_number:={card_value}<<|card_number || card_pin:={card_value}<<|card_pin || card_account:={card_value}<<|card_account)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Card))==(?);
  Inherited_List_Constants(Machine(Card))==(?);
  List_Constants(Machine(Card))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Card),CARD)==(?);
  Context_List_Enumerated(Machine(Card))==(?);
  Context_List_Defered(Machine(Card))==(STR,ACCOUNT);
  Context_List_Sets(Machine(Card))==(STR,ACCOUNT);
  List_Valuable_Sets(Machine(Card))==(CARD);
  Inherited_List_Enumerated(Machine(Card))==(?);
  Inherited_List_Defered(Machine(Card))==(?);
  Inherited_List_Sets(Machine(Card))==(?);
  List_Enumerated(Machine(Card))==(?);
  List_Defered(Machine(Card))==(CARD);
  List_Sets(Machine(Card))==(CARD)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Card))==(?);
  Expanded_List_HiddenConstants(Machine(Card))==(?);
  List_HiddenConstants(Machine(Card))==(?);
  External_List_HiddenConstants(Machine(Card))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Card))==(btrue);
  Context_List_Properties(Machine(Card))==(STR: FIN(INTEGER) & not(STR = {}) & ACCOUNT: FIN(INTEGER) & not(ACCOUNT = {}));
  Inherited_List_Properties(Machine(Card))==(btrue);
  List_Properties(Machine(Card))==(CARD: FIN(INTEGER) & not(CARD = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Card),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Card))==(?);
  Seen_Context_List_Invariant(Machine(Card))==(btrue);
  Seen_Context_List_Assertions(Machine(Card))==(btrue);
  Seen_Context_List_Properties(Machine(Card))==(btrue);
  Seen_List_Constraints(Machine(Card))==(btrue);
  Seen_List_Operations(Machine(Card),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Card),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Card),create_card)==(Var(new_card) == atype(CARD,?,?));
  List_ANY_Var(Machine(Card),get_card_code)==(?);
  List_ANY_Var(Machine(Card),get_card_number)==(?);
  List_ANY_Var(Machine(Card),set_card_number)==(?);
  List_ANY_Var(Machine(Card),get_card_pin)==(?);
  List_ANY_Var(Machine(Card),set_card_pin)==(?);
  List_ANY_Var(Machine(Card),get_card_account)==(?);
  List_ANY_Var(Machine(Card),set_card_account)==(?);
  List_ANY_Var(Machine(Card),destroy_card)==(?)
END
&
THEORY ListOfIdsX IS
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
  Sets(Machine(Card)) == (Type(CARD) == Cst(SetOf(atype(CARD,"[CARD","]CARD"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Card)) == (Type(card_account) == Mvl(SetOf(atype(CARD,?,?)*atype(ACCOUNT,?,?)));Type(card_code) == Mvl(SetOf(atype(CARD,?,?)*btype(INTEGER,?,?)));Type(card_pin) == Mvl(SetOf(atype(CARD,?,?)*btype(INTEGER,?,?)));Type(card_number) == Mvl(SetOf(atype(CARD,?,?)*atype(STR,"[STR","]STR")));Type(cards) == Mvl(SetOf(atype(CARD,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Card)) == (Type(destroy_card) == Cst(No_type,atype(CARD,?,?));Type(set_card_account) == Cst(No_type,atype(CARD,?,?)*atype(ACCOUNT,?,?));Type(get_card_account) == Cst(atype(ACCOUNT,?,?),atype(CARD,?,?));Type(set_card_pin) == Cst(No_type,atype(CARD,?,?)*btype(INTEGER,?,?));Type(get_card_pin) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(set_card_number) == Cst(No_type,atype(CARD,?,?)*atype(STR,?,?));Type(get_card_number) == Cst(atype(STR,?,?),atype(CARD,?,?));Type(get_card_code) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(create_card) == Cst(atype(CARD,?,?),btype(INTEGER,?,?)*atype(STR,?,?)));
  Observers(Machine(Card)) == (Type(get_card_account) == Cst(atype(ACCOUNT,?,?),atype(CARD,?,?));Type(get_card_pin) == Cst(btype(INTEGER,?,?),atype(CARD,?,?));Type(get_card_number) == Cst(atype(STR,?,?),atype(CARD,?,?));Type(get_card_code) == Cst(btype(INTEGER,?,?),atype(CARD,?,?)))
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
