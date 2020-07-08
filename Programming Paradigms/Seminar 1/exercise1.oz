/*
(Absolute Value) Write a function Abs that computes the absolute value of 
a number. This should work for both integers and real numbers.
*/

declare A
fun {Abs1 X}
   if {Int.is X} then A = {Int.toFloat X} else A = X end
   if A < 0.0 then ~A else A end
end
{Browse {Abs1 ~1.01}}

fun {Abs2 X}
   {Number.abs X}
end
{Browse {Abs2 ~1.01}}