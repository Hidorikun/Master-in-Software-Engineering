Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ATM))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ATM))==(Machine(ATM));
  Level(Machine(ATM))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ATM)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ATM))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ATM))==(Bank,Card)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ATM))==(?);
  List_Includes(Machine(ATM))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ATM))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ATM))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ATM))==(bank_code,bank_name,bank,card_account,card_code,card_pin,card_number,cards);
  Context_List_Variables(Machine(ATM))==(bank_code,bank_name,bank,card_account,card_code,card_pin,card_number,cards);
  Abstract_List_Variables(Machine(ATM))==(?);
  Local_List_Variables(Machine(ATM))==(atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm);
  List_Variables(Machine(ATM))==(atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm);
  External_List_Variables(Machine(ATM))==(atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ATM))==(?);
  Abstract_List_VisibleVariables(Machine(ATM))==(?);
  External_List_VisibleVariables(Machine(ATM))==(?);
  Expanded_List_VisibleVariables(Machine(ATM))==(?);
  List_VisibleVariables(Machine(ATM))==(?);
  Internal_List_VisibleVariables(Machine(ATM))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ATM))==(btrue);
  Gluing_List_Invariant(Machine(ATM))==(atm_bank: atm --> bank & atm_inserted_card: atm >-> cards);
  Expanded_List_Invariant(Machine(ATM))==(btrue);
  Abstract_List_Invariant(Machine(ATM))==(btrue);
  Context_List_Invariant(Machine(ATM))==(bank <: BANK & bank_name: bank --> STR & bank_code: bank >-> NATURAL1 & cards <: CARD & card_number: cards >-> STR & card_code: cards --> NATURAL1 & card_pin: cards --> NATURAL1);
  List_Invariant(Machine(ATM))==(atm <: ATMs & atm_id: atm >-> NATURAL1 & atm_inserted_card_authenticated: atm --> BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ATM))==(btrue);
  Abstract_List_Assertions(Machine(ATM))==(btrue);
  Context_List_Assertions(Machine(ATM))==(btrue);
  List_Assertions(Machine(ATM))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ATM))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ATM))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ATM))==(atm,atm_id,atm_bank,atm_inserted_card,atm_inserted_card_authenticated:={},{},{},{},{});
  Context_List_Initialisation(Machine(ATM))==(bank,bank_name,bank_code:={},{},{};cards,card_number,card_code,card_pin,card_account:={},{},{},{},{});
  List_Initialisation(Machine(ATM))==(atm:={} || atm_id:={} || atm_bank:={} || atm_inserted_card:={} || atm_inserted_card_authenticated:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ATM))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ATM),Machine(Bank))==(?);
  List_Instanciated_Parameters(Machine(ATM),Machine(Card))==(?);
  List_Instanciated_Parameters(Machine(ATM),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ATM))==(btrue);
  List_Constraints(Machine(ATM))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ATM))==(create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm);
  List_Operations(Machine(ATM))==(create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm)
END
&
THEORY ListInputX IS
  List_Input(Machine(ATM),create_atm)==(id_value,bank_value);
  List_Input(Machine(ATM),get_atm_id)==(atm_value);
  List_Input(Machine(ATM),set_atm_card_authenticated)==(atm_value,auth_value);
  List_Input(Machine(ATM),get_atm_card_authenticated)==(atm_value);
  List_Input(Machine(ATM),get_atm_bank)==(atm_value);
  List_Input(Machine(ATM),set_atm_bank)==(atm_value,bank_value);
  List_Input(Machine(ATM),atm_insert_card)==(atm_value,card_value);
  List_Input(Machine(ATM),get_atm_inserted_card)==(atm_value);
  List_Input(Machine(ATM),atm_remove_card)==(atm_value);
  List_Input(Machine(ATM),destroy_atm)==(atm_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ATM),create_atm)==(atm_value);
  List_Output(Machine(ATM),get_atm_id)==(id_value);
  List_Output(Machine(ATM),set_atm_card_authenticated)==(?);
  List_Output(Machine(ATM),get_atm_card_authenticated)==(auth_value);
  List_Output(Machine(ATM),get_atm_bank)==(bank_value);
  List_Output(Machine(ATM),set_atm_bank)==(?);
  List_Output(Machine(ATM),atm_insert_card)==(?);
  List_Output(Machine(ATM),get_atm_inserted_card)==(card_value);
  List_Output(Machine(ATM),atm_remove_card)==(?);
  List_Output(Machine(ATM),destroy_atm)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ATM),create_atm)==(atm_value <-- create_atm(id_value,bank_value));
  List_Header(Machine(ATM),get_atm_id)==(id_value <-- get_atm_id(atm_value));
  List_Header(Machine(ATM),set_atm_card_authenticated)==(set_atm_card_authenticated(atm_value,auth_value));
  List_Header(Machine(ATM),get_atm_card_authenticated)==(auth_value <-- get_atm_card_authenticated(atm_value));
  List_Header(Machine(ATM),get_atm_bank)==(bank_value <-- get_atm_bank(atm_value));
  List_Header(Machine(ATM),set_atm_bank)==(set_atm_bank(atm_value,bank_value));
  List_Header(Machine(ATM),atm_insert_card)==(atm_insert_card(atm_value,card_value));
  List_Header(Machine(ATM),get_atm_inserted_card)==(card_value <-- get_atm_inserted_card(atm_value));
  List_Header(Machine(ATM),atm_remove_card)==(atm_remove_card(atm_value));
  List_Header(Machine(ATM),destroy_atm)==(destroy_atm(atm_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ATM),create_atm)==(id_value: NATURAL1 & id_value/:ran(atm_id) & bank_value: bank);
  List_Precondition(Machine(ATM),get_atm_id)==(atm_value: atm);
  List_Precondition(Machine(ATM),set_atm_card_authenticated)==(atm_value: atm & auth_value: BOOL & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(ATM),get_atm_card_authenticated)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(ATM),get_atm_bank)==(atm_value: atm);
  List_Precondition(Machine(ATM),set_atm_bank)==(atm_value: atm & bank_value: bank);
  List_Precondition(Machine(ATM),atm_insert_card)==(atm_value: atm & card_value: cards);
  List_Precondition(Machine(ATM),get_atm_inserted_card)==(atm_value: atm);
  List_Precondition(Machine(ATM),atm_remove_card)==(atm_value: atm & atm_value: dom(atm_inserted_card));
  List_Precondition(Machine(ATM),destroy_atm)==(atm_value: atm)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ATM),destroy_atm)==(atm_value: atm | atm,atm_id,atm_bank:=atm-{atm_value},{atm_value}<<|atm_id,{atm_value}<<|atm_bank);
  Expanded_List_Substitution(Machine(ATM),atm_remove_card)==(atm_value: atm & atm_value: dom(atm_inserted_card) | atm_inserted_card,atm_inserted_card_authenticated:={atm_value}<<|atm_inserted_card,{atm_value}<<|atm_inserted_card_authenticated);
  Expanded_List_Substitution(Machine(ATM),get_atm_inserted_card)==(atm_value: atm | card_value:=atm_inserted_card(atm_value));
  Expanded_List_Substitution(Machine(ATM),atm_insert_card)==(atm_value: atm & card_value: cards | atm_inserted_card:=atm_inserted_card<+{atm_value|->card_value});
  Expanded_List_Substitution(Machine(ATM),set_atm_bank)==(atm_value: atm & bank_value: bank | atm_bank:=atm_bank<+{atm_value|->bank_value});
  Expanded_List_Substitution(Machine(ATM),get_atm_bank)==(atm_value: atm | bank_value:=atm_bank(atm_value));
  Expanded_List_Substitution(Machine(ATM),get_atm_card_authenticated)==(atm_value: atm & atm_value: dom(atm_inserted_card) | auth_value:=atm_inserted_card_authenticated(atm_value));
  Expanded_List_Substitution(Machine(ATM),set_atm_card_authenticated)==(atm_value: atm & auth_value: BOOL & atm_value: dom(atm_inserted_card) | atm_inserted_card_authenticated:=atm_inserted_card_authenticated<+{atm_value|->auth_value});
  Expanded_List_Substitution(Machine(ATM),get_atm_id)==(atm_value: atm | id_value:=atm_id(atm_value));
  Expanded_List_Substitution(Machine(ATM),create_atm)==(id_value: NATURAL1 & id_value/:ran(atm_id) & bank_value: bank | @new_atm.(new_atm: ATMs-atm ==> atm,atm_id,atm_bank,atm_value:=atm\/{new_atm},atm_id<+{new_atm|->id_value},atm_bank<+{new_atm|->bank_value},new_atm));
  List_Substitution(Machine(ATM),create_atm)==(ANY new_atm WHERE new_atm: ATMs-atm THEN atm:=atm\/{new_atm} || atm_id(new_atm):=id_value || atm_bank(new_atm):=bank_value || atm_value:=new_atm END);
  List_Substitution(Machine(ATM),get_atm_id)==(id_value:=atm_id(atm_value));
  List_Substitution(Machine(ATM),set_atm_card_authenticated)==(atm_inserted_card_authenticated(atm_value):=auth_value);
  List_Substitution(Machine(ATM),get_atm_card_authenticated)==(auth_value:=atm_inserted_card_authenticated(atm_value));
  List_Substitution(Machine(ATM),get_atm_bank)==(bank_value:=atm_bank(atm_value));
  List_Substitution(Machine(ATM),set_atm_bank)==(atm_bank(atm_value):=bank_value);
  List_Substitution(Machine(ATM),atm_insert_card)==(atm_inserted_card(atm_value):=card_value);
  List_Substitution(Machine(ATM),get_atm_inserted_card)==(card_value:=atm_inserted_card(atm_value));
  List_Substitution(Machine(ATM),atm_remove_card)==(atm_inserted_card:={atm_value}<<|atm_inserted_card || atm_inserted_card_authenticated:={atm_value}<<|atm_inserted_card_authenticated);
  List_Substitution(Machine(ATM),destroy_atm)==(atm:=atm-{atm_value} || atm_id:={atm_value}<<|atm_id || atm_bank:={atm_value}<<|atm_bank)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ATM))==(?);
  Inherited_List_Constants(Machine(ATM))==(?);
  List_Constants(Machine(ATM))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ATM),ATMs)==(?);
  Context_List_Enumerated(Machine(ATM))==(?);
  Context_List_Defered(Machine(ATM))==(STR,BANK,CARD);
  Context_List_Sets(Machine(ATM))==(STR,BANK,CARD);
  List_Valuable_Sets(Machine(ATM))==(ATMs);
  Inherited_List_Enumerated(Machine(ATM))==(?);
  Inherited_List_Defered(Machine(ATM))==(?);
  Inherited_List_Sets(Machine(ATM))==(?);
  List_Enumerated(Machine(ATM))==(?);
  List_Defered(Machine(ATM))==(ATMs);
  List_Sets(Machine(ATM))==(ATMs)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ATM))==(?);
  Expanded_List_HiddenConstants(Machine(ATM))==(?);
  List_HiddenConstants(Machine(ATM))==(?);
  External_List_HiddenConstants(Machine(ATM))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ATM))==(btrue);
  Context_List_Properties(Machine(ATM))==(STR: FIN(INTEGER) & not(STR = {}) & BANK: FIN(INTEGER) & not(BANK = {}) & CARD: FIN(INTEGER) & not(CARD = {}));
  Inherited_List_Properties(Machine(ATM))==(btrue);
  List_Properties(Machine(ATM))==(ATMs: FIN(INTEGER) & not(ATMs = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ATM),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(ATM))==(?);
  Seen_Context_List_Invariant(Machine(ATM))==(btrue);
  Seen_Context_List_Assertions(Machine(ATM))==(btrue);
  Seen_Context_List_Properties(Machine(ATM))==(btrue);
  Seen_List_Constraints(Machine(ATM))==(btrue);
  Seen_List_Operations(Machine(ATM),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(ATM),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ATM),create_atm)==(Var(new_atm) == atype(ATMs,?,?));
  List_ANY_Var(Machine(ATM),get_atm_id)==(?);
  List_ANY_Var(Machine(ATM),set_atm_card_authenticated)==(?);
  List_ANY_Var(Machine(ATM),get_atm_card_authenticated)==(?);
  List_ANY_Var(Machine(ATM),get_atm_bank)==(?);
  List_ANY_Var(Machine(ATM),set_atm_bank)==(?);
  List_ANY_Var(Machine(ATM),atm_insert_card)==(?);
  List_ANY_Var(Machine(ATM),get_atm_inserted_card)==(?);
  List_ANY_Var(Machine(ATM),atm_remove_card)==(?);
  List_ANY_Var(Machine(ATM),destroy_atm)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ATM)) == (ATMs | ? | atm_inserted_card_authenticated,atm_inserted_card,atm_bank,atm_id,atm | ? | create_atm,get_atm_id,set_atm_card_authenticated,get_atm_card_authenticated,get_atm_bank,set_atm_bank,atm_insert_card,get_atm_inserted_card,atm_remove_card,destroy_atm | ? | seen(Machine(String)),used(Machine(Bank)),used(Machine(Card)) | ? | ATM);
  List_Of_HiddenCst_Ids(Machine(ATM)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ATM)) == (?);
  List_Of_VisibleVar_Ids(Machine(ATM)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ATM)) == (?: ?);
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
  Sets(Machine(ATM)) == (Type(ATMs) == Cst(SetOf(atype(ATMs,"[ATMs","]ATMs"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(ATM)) == (Type(atm_inserted_card_authenticated) == Mvl(SetOf(atype(ATMs,?,?)*btype(BOOL,0,1)));Type(atm_inserted_card) == Mvl(SetOf(atype(ATMs,?,?)*atype(CARD,?,?)));Type(atm_bank) == Mvl(SetOf(atype(ATMs,?,?)*atype(BANK,?,?)));Type(atm_id) == Mvl(SetOf(atype(ATMs,?,?)*btype(INTEGER,?,?)));Type(atm) == Mvl(SetOf(atype(ATMs,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ATM)) == (Type(destroy_atm) == Cst(No_type,atype(ATMs,?,?));Type(atm_remove_card) == Cst(No_type,atype(ATMs,?,?));Type(get_atm_inserted_card) == Cst(atype(CARD,?,?),atype(ATMs,?,?));Type(atm_insert_card) == Cst(No_type,atype(ATMs,?,?)*atype(CARD,?,?));Type(set_atm_bank) == Cst(No_type,atype(ATMs,?,?)*atype(BANK,?,?));Type(get_atm_bank) == Cst(atype(BANK,?,?),atype(ATMs,?,?));Type(get_atm_card_authenticated) == Cst(btype(BOOL,?,?),atype(ATMs,?,?));Type(set_atm_card_authenticated) == Cst(No_type,atype(ATMs,?,?)*btype(BOOL,?,?));Type(get_atm_id) == Cst(btype(INTEGER,?,?),atype(ATMs,?,?));Type(create_atm) == Cst(atype(ATMs,?,?),btype(INTEGER,?,?)*atype(BANK,?,?)));
  Observers(Machine(ATM)) == (Type(get_atm_inserted_card) == Cst(atype(CARD,?,?),atype(ATMs,?,?));Type(get_atm_bank) == Cst(atype(BANK,?,?),atype(ATMs,?,?));Type(get_atm_card_authenticated) == Cst(btype(BOOL,?,?),atype(ATMs,?,?));Type(get_atm_id) == Cst(btype(INTEGER,?,?),atype(ATMs,?,?)))
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
