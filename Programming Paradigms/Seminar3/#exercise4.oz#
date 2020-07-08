%Exercise 4. (Finding the Position of an Element in a List)
%version 1
declare
fun {Position Xs Y}
   case Xs of nil then 0
   [] H|T then if H==Y then 1
	       else 1+{Position T Y}
	       end
   end
end
{Browse {Position [a b c b] b }}



%version 2
declare
fun {Position2 Xs Y Acc}
   case Xs of nil then 0
   [] H|T then if H==Y then Acc
		  else {Position2 T Y (Acc+1)}
	       end
   end
end
{Browse {Position2 [a b c b] b 1}}