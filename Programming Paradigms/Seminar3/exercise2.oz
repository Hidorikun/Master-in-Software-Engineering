/*
Exercise 2. (Taking and Dropping Elements)
*/
declare
fun {Take Xs N}
   case Xs of nil then nil
   [] H|T then if N>0 then H|{Take T (N-1)}
	       else nil
	       end
   end
end
{Browse {Take [1 4 3 6 2] 3}}

declare
fun {Drop Xs N}
   case Xs of nil then nil
   [] H|T then if N>0 then {Drop T (N-1)}
	       else H|{Drop T N}
	       end
   end
end
{Browse {Drop [1 4 3 6 2] 3}}

