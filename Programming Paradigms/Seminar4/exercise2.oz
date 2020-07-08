declare
fun {IsMember Env Id}
   case Env of
      nil then false
      [] A#B|T then if Id==A then true else {IsMember T Id} end
   end
end

{Browse {IsMember [a#e1 b#y c#e3] c}}
{Browse {IsMember [a#e1 b#y c#e3] y}}

fun {Fetch Env Id}
   case Env of
      nil then Id
   []  A#B|T then if Id==A then B else {Fetch T Id} end
   end
end

{Browse {Fetch [a#e1 b#y c#e3] c}}
{Browse {Fetch [a#e1 b#y c#e3] d}}

fun {AdjoinHelper Env Expr}
   case Env of
      nil then nil
   [] A#B|T then
      case Expr of
	 X#Y then if A==X then {AdjoinHelper T Expr}
		  else (A#B)|{AdjoinHelper T Expr} end
      end	 
   end
end

fun {Adjoin Env Expr}
   Expr | {AdjoinHelper Env Expr}
end

{Browse {Adjoin [a#e1 b#y c#e3] c#e4}}
{Browse {Adjoin [a#e1 b#y c#e3] d#e4}}