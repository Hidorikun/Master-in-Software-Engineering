declare
Cnt={NewCell 0}
fun {NewId}
   Cnt:=@Cnt+1
   {String.toAtom {Append "id<" {Append {Int.toString @Cnt} ">"}}}
end

fun {Append L1 L2}
   case L1 of
      nil then L2
   [] H|T then H|{Append T L2}
   end
end

fun {Member Xs Y}
    case Xs of nil then false
    [] H|T then if H==Y then true else {Member T Y} end
    end
end

fun {FreeSetHelper Expr B}
   case Expr of
      apply(Expr1 Expr2) then 
      {Append {FreeSetHelper Expr1 B} {FreeSetHelper Expr2 B}}
    [] lam(ID Expr1) then {FreeSetHelper Expr1 ID|B}
    [] let(ID#Expr1 Expr2) then {Append {FreeSetHelper Expr1 ID|B} {FreeSetHelper Expr2 ID|B}}
    [] ID then
       if {Member B ID} then nil else [ID] end
    end
end

fun {FreeSet Expr}
    {FreeSetHelper Expr nil}
end

fun {IsMember L ID}
    case L of nil then false
    [] (A#B)|T then 
        if A==ID then true else {IsMember T ID}end
    end
end

fun {Fetch Env Id}
   case Env of
      nil then Id
   []  A#B|T then if Id==A then B else {Fetch T Id} end
   end
end

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

fun {DeleteElement L E}
    case L of nil then nil
    [] H|T then
        if H==E then {DeleteElement T E} else H|{DeleteElement T E} end
    end
end

fun {RenameHelper E Env}
   if {IsAtom E} then if {IsMember Env E} then {Fetch Env E} else E end
   else
   case E of
    nil then nil
   [] apply(E1 E2) then apply({RenameHelper E1 Env} {RenameHelper E2 Env})
   [] lam(Id Ex) then
      if {IsMember Env Id} then lam({Fetch Env Id} {RenameHelper Ex Env})
      else
    local Envs in
       Envs = {Adjoin Env Id#{NewId}}
       lam({Fetch Envs Id} {RenameHelper Ex Envs})
       end
      end  
   [] let(Id#E1 E2) then
       if {IsMember Env Id} then
    let({Fetch Env Id}#{RenameHelper E1 Env} {RenameHelper E2 Env})
      else
     local Envs in
        Envs = {Adjoin Env Id#{NewId}}
       let({Fetch Envs Id}#{RenameHelper E1 Envs} {RenameHelper E2 Envs})
       end
      end  
   end
   end
end

fun {Rename E}
   {RenameHelper E nil}
end

{Browse {Rename lam(z lam(x z))}}
{Browse {Rename let(id#lam(z z) apply(id y))}}