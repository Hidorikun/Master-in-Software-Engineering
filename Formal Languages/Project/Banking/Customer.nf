Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Customer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Customer))==(Machine(Customer));
  Level(Machine(Customer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Customer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Customer))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Customer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Customer))==(?);
  List_Includes(Machine(Customer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Customer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Customer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Customer))==(?);
  Context_List_Variables(Machine(Customer))==(?);
  Abstract_List_Variables(Machine(Customer))==(?);
  Local_List_Variables(Machine(Customer))==(customer_id,customer_name,customer);
  List_Variables(Machine(Customer))==(customer_id,customer_name,customer);
  External_List_Variables(Machine(Customer))==(customer_id,customer_name,customer)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Customer))==(?);
  Abstract_List_VisibleVariables(Machine(Customer))==(?);
  External_List_VisibleVariables(Machine(Customer))==(?);
  Expanded_List_VisibleVariables(Machine(Customer))==(?);
  List_VisibleVariables(Machine(Customer))==(?);
  Internal_List_VisibleVariables(Machine(Customer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Customer))==(btrue);
  Gluing_List_Invariant(Machine(Customer))==(btrue);
  Expanded_List_Invariant(Machine(Customer))==(btrue);
  Abstract_List_Invariant(Machine(Customer))==(btrue);
  Context_List_Invariant(Machine(Customer))==(btrue);
  List_Invariant(Machine(Customer))==(customer <: CUSTOMER & customer_name: customer --> STR & customer_id: customer >-> NATURAL1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Customer))==(btrue);
  Abstract_List_Assertions(Machine(Customer))==(btrue);
  Context_List_Assertions(Machine(Customer))==(btrue);
  List_Assertions(Machine(Customer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Customer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Customer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Customer))==(customer,customer_name,customer_id:={},{},{});
  Context_List_Initialisation(Machine(Customer))==(skip);
  List_Initialisation(Machine(Customer))==(customer:={} || customer_name:={} || customer_id:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Customer))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Customer),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Customer))==(btrue);
  List_Constraints(Machine(Customer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Customer))==(create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer);
  List_Operations(Machine(Customer))==(create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer)
END
&
THEORY ListInputX IS
  List_Input(Machine(Customer),create_customer)==(id_value,name_value);
  List_Input(Machine(Customer),get_customer_id)==(customer_value);
  List_Input(Machine(Customer),get_customer_name)==(customer_value);
  List_Input(Machine(Customer),set_customer_name)==(customer_value,name_value);
  List_Input(Machine(Customer),destroy_customer)==(customer_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Customer),create_customer)==(customer_value);
  List_Output(Machine(Customer),get_customer_id)==(id_value);
  List_Output(Machine(Customer),get_customer_name)==(name_value);
  List_Output(Machine(Customer),set_customer_name)==(?);
  List_Output(Machine(Customer),destroy_customer)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Customer),create_customer)==(customer_value <-- create_customer(id_value,name_value));
  List_Header(Machine(Customer),get_customer_id)==(id_value <-- get_customer_id(customer_value));
  List_Header(Machine(Customer),get_customer_name)==(name_value <-- get_customer_name(customer_value));
  List_Header(Machine(Customer),set_customer_name)==(set_customer_name(customer_value,name_value));
  List_Header(Machine(Customer),destroy_customer)==(destroy_customer(customer_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Customer),create_customer)==(id_value: NATURAL1 & id_value/:ran(customer_id) & name_value: STR);
  List_Precondition(Machine(Customer),get_customer_id)==(customer_value: customer);
  List_Precondition(Machine(Customer),get_customer_name)==(customer_value: customer);
  List_Precondition(Machine(Customer),set_customer_name)==(customer_value: customer & name_value: STR);
  List_Precondition(Machine(Customer),destroy_customer)==(customer_value: customer)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Customer),destroy_customer)==(customer_value: customer | customer,customer_id,customer_name:=customer-{customer_value},{customer_value}<<|customer_id,{customer_value}<<|customer_name);
  Expanded_List_Substitution(Machine(Customer),set_customer_name)==(customer_value: customer & name_value: STR | customer_name:=customer_name<+{customer_value|->name_value});
  Expanded_List_Substitution(Machine(Customer),get_customer_name)==(customer_value: customer | name_value:=customer_name(customer_value));
  Expanded_List_Substitution(Machine(Customer),get_customer_id)==(customer_value: customer | id_value:=customer_id(customer_value));
  Expanded_List_Substitution(Machine(Customer),create_customer)==(id_value: NATURAL1 & id_value/:ran(customer_id) & name_value: STR | @new_customer.(new_customer: CUSTOMER-customer ==> customer,customer_id,customer_name,customer_value:=customer\/{new_customer},customer_id<+{new_customer|->id_value},customer_name<+{new_customer|->name_value},new_customer));
  List_Substitution(Machine(Customer),create_customer)==(ANY new_customer WHERE new_customer: CUSTOMER-customer THEN customer:=customer\/{new_customer} || customer_id(new_customer):=id_value || customer_name(new_customer):=name_value || customer_value:=new_customer END);
  List_Substitution(Machine(Customer),get_customer_id)==(id_value:=customer_id(customer_value));
  List_Substitution(Machine(Customer),get_customer_name)==(name_value:=customer_name(customer_value));
  List_Substitution(Machine(Customer),set_customer_name)==(customer_name(customer_value):=name_value);
  List_Substitution(Machine(Customer),destroy_customer)==(customer:=customer-{customer_value} || customer_id:={customer_value}<<|customer_id || customer_name:={customer_value}<<|customer_name)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Customer))==(?);
  Inherited_List_Constants(Machine(Customer))==(?);
  List_Constants(Machine(Customer))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Customer),CUSTOMER)==(?);
  Context_List_Enumerated(Machine(Customer))==(?);
  Context_List_Defered(Machine(Customer))==(STR);
  Context_List_Sets(Machine(Customer))==(STR);
  List_Valuable_Sets(Machine(Customer))==(CUSTOMER);
  Inherited_List_Enumerated(Machine(Customer))==(?);
  Inherited_List_Defered(Machine(Customer))==(?);
  Inherited_List_Sets(Machine(Customer))==(?);
  List_Enumerated(Machine(Customer))==(?);
  List_Defered(Machine(Customer))==(CUSTOMER);
  List_Sets(Machine(Customer))==(CUSTOMER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Customer))==(?);
  Expanded_List_HiddenConstants(Machine(Customer))==(?);
  List_HiddenConstants(Machine(Customer))==(?);
  External_List_HiddenConstants(Machine(Customer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Customer))==(btrue);
  Context_List_Properties(Machine(Customer))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Customer))==(btrue);
  List_Properties(Machine(Customer))==(CUSTOMER: FIN(INTEGER) & not(CUSTOMER = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Customer),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Customer))==(?);
  Seen_Context_List_Invariant(Machine(Customer))==(btrue);
  Seen_Context_List_Assertions(Machine(Customer))==(btrue);
  Seen_Context_List_Properties(Machine(Customer))==(btrue);
  Seen_List_Constraints(Machine(Customer))==(btrue);
  Seen_List_Operations(Machine(Customer),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Customer),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Customer),create_customer)==(Var(new_customer) == atype(CUSTOMER,?,?));
  List_ANY_Var(Machine(Customer),get_customer_id)==(?);
  List_ANY_Var(Machine(Customer),get_customer_name)==(?);
  List_ANY_Var(Machine(Customer),set_customer_name)==(?);
  List_ANY_Var(Machine(Customer),destroy_customer)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Customer)) == (CUSTOMER | ? | customer_id,customer_name,customer | ? | create_customer,get_customer_id,get_customer_name,set_customer_name,destroy_customer | ? | seen(Machine(String)) | ? | Customer);
  List_Of_HiddenCst_Ids(Machine(Customer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Customer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Customer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Customer)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Customer)) == (Type(CUSTOMER) == Cst(SetOf(atype(CUSTOMER,"[CUSTOMER","]CUSTOMER"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Customer)) == (Type(customer_id) == Mvl(SetOf(atype(CUSTOMER,?,?)*btype(INTEGER,?,?)));Type(customer_name) == Mvl(SetOf(atype(CUSTOMER,?,?)*atype(STR,"[STR","]STR")));Type(customer) == Mvl(SetOf(atype(CUSTOMER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Customer)) == (Type(destroy_customer) == Cst(No_type,atype(CUSTOMER,?,?));Type(set_customer_name) == Cst(No_type,atype(CUSTOMER,?,?)*atype(STR,?,?));Type(get_customer_name) == Cst(atype(STR,?,?),atype(CUSTOMER,?,?));Type(get_customer_id) == Cst(btype(INTEGER,?,?),atype(CUSTOMER,?,?));Type(create_customer) == Cst(atype(CUSTOMER,?,?),btype(INTEGER,?,?)*atype(STR,?,?)));
  Observers(Machine(Customer)) == (Type(get_customer_name) == Cst(atype(STR,?,?),atype(CUSTOMER,?,?));Type(get_customer_id) == Cst(btype(INTEGER,?,?),atype(CUSTOMER,?,?)))
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
