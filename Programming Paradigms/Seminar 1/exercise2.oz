/*
(Power) Compute n^m where n is an integer and m is a natural number
*/

declare
fun {Pow N M}
   case M of
      0 then 1
   [] A then N * {Pow N (A-1)}
   end
end
{Browse {Pow 2 5}}

fun {Pow1 N M}
   if M == 0 then 1 else N * {Pow N (M-1)}
   end
end
{Browse {Pow1 2 5}}