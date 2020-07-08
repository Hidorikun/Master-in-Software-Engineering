/*
Exercise 1. (Combinations)
*/

%a)
declare
fun {Numerator N CopyN K}
   if N<CopyN-K+1 then 1
   else N*{Numerator N-1 CopyN K}
   end
end


declare
fun {Denominator K}
   if K==1 then 1
   else K*{Denominator K-1}
   end
end

declare
fun {Comb N K}
   if K==0 then 1
   else
      {Numerator N N K} div {Denominator K}
   end
end

{Browse {Denominator 5}}
{Browse {Numerator 6 6 3}}
{Browse {Comb 10 3}}

%b)
declare
fun {CombHelper N K Inc}
   if K==0 then 1.0
   else if Inc==K then (N-K+1.0) / K
	else ((N-Inc+1.0) / Inc) * {CombHelper N K (Inc+1.0)}
	end
   end
end

fun {Combinations N K}
   {CombHelper {Int.toFloat N} {Int.toFloat K} 1.0}
end

{Browse {Combinations 10 3}}
