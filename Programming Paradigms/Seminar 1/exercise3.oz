/*
(Maximum Recursively) Compute the maximum of two natural
numbers, knowing that the only allowed test with a conditional is the test
whether a number is zero (that is, if N==0 then бн else бн end).
*/
declare
fun {Max N M}
   if N == 0 then M else 
      if M == 0 then N else 1 + {Max (N - 1) (M - 1)} end
   end
end
{Browse {Max 10 50}}