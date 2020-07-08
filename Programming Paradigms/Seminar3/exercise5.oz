/*
Exercise 5. (Arithmetic Expressions Evaluation)
*/
declare
fun {Eval Expr}
   case Expr of int(N) then N
   [] add(X Y) then {Eval X}+{Eval Y}
   [] mul(X Y) then {Eval X}*{Eval Y}
   end
end
{Browse {Eval add(int(1) mul(int(3) int(4)))}}
   