Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Currency))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Currency))==(Machine(Currency));
  Level(Machine(Currency))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Currency)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Currency))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Currency))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Currency))==(?);
  List_Includes(Machine(Currency))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Currency))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Currency))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Currency))==(?);
  Context_List_Variables(Machine(Currency))==(?);
  Abstract_List_Variables(Machine(Currency))==(?);
  Local_List_Variables(Machine(Currency))==(?);
  List_Variables(Machine(Currency))==(?);
  External_List_Variables(Machine(Currency))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Currency))==(?);
  Abstract_List_VisibleVariables(Machine(Currency))==(?);
  External_List_VisibleVariables(Machine(Currency))==(?);
  Expanded_List_VisibleVariables(Machine(Currency))==(?);
  List_VisibleVariables(Machine(Currency))==(?);
  Internal_List_VisibleVariables(Machine(Currency))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Currency))==(btrue);
  Gluing_List_Invariant(Machine(Currency))==(btrue);
  Expanded_List_Invariant(Machine(Currency))==(btrue);
  Abstract_List_Invariant(Machine(Currency))==(btrue);
  Context_List_Invariant(Machine(Currency))==(btrue);
  List_Invariant(Machine(Currency))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Currency))==(btrue);
  Abstract_List_Assertions(Machine(Currency))==(btrue);
  Context_List_Assertions(Machine(Currency))==(btrue);
  List_Assertions(Machine(Currency))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Currency))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Currency))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Currency))==(skip);
  Context_List_Initialisation(Machine(Currency))==(skip);
  List_Initialisation(Machine(Currency))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Currency))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Currency))==(btrue);
  List_Constraints(Machine(Currency))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Currency))==(?);
  List_Operations(Machine(Currency))==(?)
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
  List_Valuable_Constants(Machine(Currency))==(?);
  Inherited_List_Constants(Machine(Currency))==(?);
  List_Constants(Machine(Currency))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Currency),CURRENCY)==({EUR,LEU,DOLLAR});
  Context_List_Enumerated(Machine(Currency))==(?);
  Context_List_Defered(Machine(Currency))==(?);
  Context_List_Sets(Machine(Currency))==(?);
  List_Valuable_Sets(Machine(Currency))==(?);
  Inherited_List_Enumerated(Machine(Currency))==(?);
  Inherited_List_Defered(Machine(Currency))==(?);
  Inherited_List_Sets(Machine(Currency))==(?);
  List_Enumerated(Machine(Currency))==(CURRENCY);
  List_Defered(Machine(Currency))==(?);
  List_Sets(Machine(Currency))==(CURRENCY)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Currency))==(?);
  Expanded_List_HiddenConstants(Machine(Currency))==(?);
  List_HiddenConstants(Machine(Currency))==(?);
  External_List_HiddenConstants(Machine(Currency))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Currency))==(btrue);
  Context_List_Properties(Machine(Currency))==(btrue);
  Inherited_List_Properties(Machine(Currency))==(btrue);
  List_Properties(Machine(Currency))==(CURRENCY: FIN(INTEGER) & not(CURRENCY = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Currency)) == (CURRENCY,EUR,LEU,DOLLAR | ? | ? | ? | ? | ? | ? | ? | Currency);
  List_Of_HiddenCst_Ids(Machine(Currency)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Currency)) == (?);
  List_Of_VisibleVar_Ids(Machine(Currency)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Currency)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Currency)) == (Type(CURRENCY) == Cst(SetOf(etype(CURRENCY,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Currency)) == (Type(EUR) == Cst(etype(CURRENCY,0,2));Type(LEU) == Cst(etype(CURRENCY,0,2));Type(DOLLAR) == Cst(etype(CURRENCY,0,2)))
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
