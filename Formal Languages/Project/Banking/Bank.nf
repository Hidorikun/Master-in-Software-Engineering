Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bank))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bank))==(Machine(Bank));
  Level(Machine(Bank))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bank)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bank))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bank))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bank))==(?);
  List_Includes(Machine(Bank))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bank))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bank))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bank))==(?);
  Context_List_Variables(Machine(Bank))==(?);
  Abstract_List_Variables(Machine(Bank))==(?);
  Local_List_Variables(Machine(Bank))==(bank_code,bank_name,bank);
  List_Variables(Machine(Bank))==(bank_code,bank_name,bank);
  External_List_Variables(Machine(Bank))==(bank_code,bank_name,bank)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bank))==(?);
  Abstract_List_VisibleVariables(Machine(Bank))==(?);
  External_List_VisibleVariables(Machine(Bank))==(?);
  Expanded_List_VisibleVariables(Machine(Bank))==(?);
  List_VisibleVariables(Machine(Bank))==(?);
  Internal_List_VisibleVariables(Machine(Bank))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bank))==(btrue);
  Gluing_List_Invariant(Machine(Bank))==(btrue);
  Expanded_List_Invariant(Machine(Bank))==(btrue);
  Abstract_List_Invariant(Machine(Bank))==(btrue);
  Context_List_Invariant(Machine(Bank))==(btrue);
  List_Invariant(Machine(Bank))==(bank <: BANK & bank_name: bank --> STR & bank_code: bank >-> NATURAL1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bank))==(btrue);
  Abstract_List_Assertions(Machine(Bank))==(btrue);
  Context_List_Assertions(Machine(Bank))==(btrue);
  List_Assertions(Machine(Bank))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bank))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bank))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bank))==(bank,bank_name,bank_code:={},{},{});
  Context_List_Initialisation(Machine(Bank))==(skip);
  List_Initialisation(Machine(Bank))==(bank:={} || bank_name:={} || bank_code:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bank))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Bank),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bank))==(btrue);
  List_Constraints(Machine(Bank))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bank))==(create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank);
  List_Operations(Machine(Bank))==(create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bank),create_bank)==(code_value,name_value);
  List_Input(Machine(Bank),get_bank_code)==(bank_value);
  List_Input(Machine(Bank),get_bank_name)==(bank_value);
  List_Input(Machine(Bank),set_bank_name)==(bank_value,name_value);
  List_Input(Machine(Bank),destroy_bank)==(bank_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bank),create_bank)==(bank_value);
  List_Output(Machine(Bank),get_bank_code)==(code_value);
  List_Output(Machine(Bank),get_bank_name)==(name_value);
  List_Output(Machine(Bank),set_bank_name)==(?);
  List_Output(Machine(Bank),destroy_bank)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bank),create_bank)==(bank_value <-- create_bank(code_value,name_value));
  List_Header(Machine(Bank),get_bank_code)==(code_value <-- get_bank_code(bank_value));
  List_Header(Machine(Bank),get_bank_name)==(name_value <-- get_bank_name(bank_value));
  List_Header(Machine(Bank),set_bank_name)==(set_bank_name(bank_value,name_value));
  List_Header(Machine(Bank),destroy_bank)==(destroy_bank(bank_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bank),create_bank)==(code_value: NATURAL1 & code_value/:ran(bank_code) & name_value: STR);
  List_Precondition(Machine(Bank),get_bank_code)==(bank_value: bank);
  List_Precondition(Machine(Bank),get_bank_name)==(bank_value: bank);
  List_Precondition(Machine(Bank),set_bank_name)==(bank_value: bank & name_value: STR);
  List_Precondition(Machine(Bank),destroy_bank)==(bank_value: bank)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bank),destroy_bank)==(bank_value: bank | bank,bank_code,bank_name:=bank-{bank_value},{bank_value}<<|bank_code,{bank_value}<<|bank_name);
  Expanded_List_Substitution(Machine(Bank),set_bank_name)==(bank_value: bank & name_value: STR | bank_name:=bank_name<+{bank_value|->name_value});
  Expanded_List_Substitution(Machine(Bank),get_bank_name)==(bank_value: bank | name_value:=bank_name(bank_value));
  Expanded_List_Substitution(Machine(Bank),get_bank_code)==(bank_value: bank | code_value:=bank_code(bank_value));
  Expanded_List_Substitution(Machine(Bank),create_bank)==(code_value: NATURAL1 & code_value/:ran(bank_code) & name_value: STR | @new_bank.(new_bank: BANK-bank ==> bank,bank_code,bank_name,bank_value:=bank\/{new_bank},bank_code<+{new_bank|->code_value},bank_name<+{new_bank|->name_value},new_bank));
  List_Substitution(Machine(Bank),create_bank)==(ANY new_bank WHERE new_bank: BANK-bank THEN bank:=bank\/{new_bank} || bank_code(new_bank):=code_value || bank_name(new_bank):=name_value || bank_value:=new_bank END);
  List_Substitution(Machine(Bank),get_bank_code)==(code_value:=bank_code(bank_value));
  List_Substitution(Machine(Bank),get_bank_name)==(name_value:=bank_name(bank_value));
  List_Substitution(Machine(Bank),set_bank_name)==(bank_name(bank_value):=name_value);
  List_Substitution(Machine(Bank),destroy_bank)==(bank:=bank-{bank_value} || bank_code:={bank_value}<<|bank_code || bank_name:={bank_value}<<|bank_name)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bank))==(?);
  Inherited_List_Constants(Machine(Bank))==(?);
  List_Constants(Machine(Bank))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bank),BANK)==(?);
  Context_List_Enumerated(Machine(Bank))==(?);
  Context_List_Defered(Machine(Bank))==(STR);
  Context_List_Sets(Machine(Bank))==(STR);
  List_Valuable_Sets(Machine(Bank))==(BANK);
  Inherited_List_Enumerated(Machine(Bank))==(?);
  Inherited_List_Defered(Machine(Bank))==(?);
  Inherited_List_Sets(Machine(Bank))==(?);
  List_Enumerated(Machine(Bank))==(?);
  List_Defered(Machine(Bank))==(BANK);
  List_Sets(Machine(Bank))==(BANK)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bank))==(?);
  Expanded_List_HiddenConstants(Machine(Bank))==(?);
  List_HiddenConstants(Machine(Bank))==(?);
  External_List_HiddenConstants(Machine(Bank))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bank))==(btrue);
  Context_List_Properties(Machine(Bank))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Bank))==(btrue);
  List_Properties(Machine(Bank))==(BANK: FIN(INTEGER) & not(BANK = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Bank),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Bank))==(?);
  Seen_Context_List_Invariant(Machine(Bank))==(btrue);
  Seen_Context_List_Assertions(Machine(Bank))==(btrue);
  Seen_Context_List_Properties(Machine(Bank))==(btrue);
  Seen_List_Constraints(Machine(Bank))==(btrue);
  Seen_List_Operations(Machine(Bank),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Bank),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bank),create_bank)==(Var(new_bank) == atype(BANK,?,?));
  List_ANY_Var(Machine(Bank),get_bank_code)==(?);
  List_ANY_Var(Machine(Bank),get_bank_name)==(?);
  List_ANY_Var(Machine(Bank),set_bank_name)==(?);
  List_ANY_Var(Machine(Bank),destroy_bank)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bank)) == (BANK | ? | bank_code,bank_name,bank | ? | create_bank,get_bank_code,get_bank_name,set_bank_name,destroy_bank | ? | seen(Machine(String)) | ? | Bank);
  List_Of_HiddenCst_Ids(Machine(Bank)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bank)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bank)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bank)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bank)) == (Type(BANK) == Cst(SetOf(atype(BANK,"[BANK","]BANK"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bank)) == (Type(bank_code) == Mvl(SetOf(atype(BANK,?,?)*btype(INTEGER,?,?)));Type(bank_name) == Mvl(SetOf(atype(BANK,?,?)*atype(STR,"[STR","]STR")));Type(bank) == Mvl(SetOf(atype(BANK,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bank)) == (Type(destroy_bank) == Cst(No_type,atype(BANK,?,?));Type(set_bank_name) == Cst(No_type,atype(BANK,?,?)*atype(STR,?,?));Type(get_bank_name) == Cst(atype(STR,?,?),atype(BANK,?,?));Type(get_bank_code) == Cst(btype(INTEGER,?,?),atype(BANK,?,?));Type(create_bank) == Cst(atype(BANK,?,?),btype(INTEGER,?,?)*atype(STR,?,?)));
  Observers(Machine(Bank)) == (Type(get_bank_name) == Cst(atype(STR,?,?),atype(BANK,?,?));Type(get_bank_code) == Cst(btype(INTEGER,?,?),atype(BANK,?,?)))
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
