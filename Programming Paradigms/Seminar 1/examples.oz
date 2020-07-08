declare A B
fun {Minus X}
~X
end
A = 16
B = A + {Minus 15}
{Browse B}

declare
fun {Max X Y}
if X>Y
then X else Y end
end

declare
X = {Max 22 18}
Y = {Max X 43}
{Browse Y}

fun {Fact N}
if N == 0 then 1
else N * {Fact N-1}
end
end
{Browse {Fact 5}}

declare
fun {FiboTwo N A1 A2}
case N of
1 then A1
[] 2 then A2
[] M then {FiboTwo (M-1) A2 (A1+A2)}
end
end
{Browse {FiboTwo 100 1 1}}