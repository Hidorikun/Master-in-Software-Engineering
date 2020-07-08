declare
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

{Browse {FreeSet apply(x let(x#y x))}}
{Browse {FreeSet apply(y apply(let(x#x x) y))}}