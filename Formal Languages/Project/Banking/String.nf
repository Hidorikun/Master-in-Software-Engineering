Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(String))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(String))==(Machine(String));
  Level(Machine(String))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(String)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(String))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(String))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(String))==(?);
  List_Includes(Machine(String))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(String))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(String))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(String))==(?);
  Context_List_Variables(Machine(String))==(?);
  Abstract_List_Variables(Machine(String))==(?);
  Local_List_Variables(Machine(String))==(?);
  List_Variables(Machine(String))==(?);
  External_List_Variables(Machine(String))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(String))==(?);
  Abstract_List_VisibleVariables(Machine(String))==(?);
  External_List_VisibleVariables(Machine(String))==(?);
  Expanded_List_VisibleVariables(Machine(String))==(?);
  List_VisibleVariables(Machine(String))==(?);
  Internal_List_VisibleVariables(Machine(String))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(String))==(btrue);
  Gluing_List_Invariant(Machine(String))==(btrue);
  Expanded_List_Invariant(Machine(String))==(btrue);
  Abstract_List_Invariant(Machine(String))==(btrue);
  Context_List_Invariant(Machine(String))==(btrue);
  List_Invariant(Machine(String))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(String))==(btrue);
  Abstract_List_Assertions(Machine(String))==(btrue);
  Context_List_Assertions(Machine(String))==(btrue);
  List_Assertions(Machine(String))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(String))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(String))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(String))==(skip);
  Context_List_Initialisation(Machine(String))==(skip);
  List_Initialisation(Machine(String))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(String))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(String))==(btrue);
  List_Constraints(Machine(String))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(String))==(?);
  List_Operations(Machine(String))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(String))==(?);
  Inherited_List_Constants(Machine(String))==(?);
  List_Constants(Machine(String))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(String),STR)==(?);
  Context_List_Enumerated(Machine(String))==(?);
  Context_List_Defered(Machine(String))==(?);
  Context_List_Sets(Machine(String))==(?);
  List_Valuable_Sets(Machine(String))==(STR);
  Inherited_List_Enumerated(Machine(String))==(?);
  Inherited_List_Defered(Machine(String))==(?);
  Inherited_List_Sets(Machine(String))==(?);
  List_Enumerated(Machine(String))==(?);
  List_Defered(Machine(String))==(STR);
  List_Sets(Machine(String))==(STR)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(String))==(?);
  Expanded_List_HiddenConstants(Machine(String))==(?);
  List_HiddenConstants(Machine(String))==(?);
  External_List_HiddenConstants(Machine(String))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(String))==(btrue);
  Context_List_Properties(Machine(String))==(btrue);
  Inherited_List_Properties(Machine(String))==(btrue);
  List_Properties(Machine(String))==(STR: FIN(INTEGER) & not(STR = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(String)) == (Type(STR) == Cst(SetOf(atype(STR,"[STR","]STR"))))
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
