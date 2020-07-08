declare x0 x1 x2 x3
thread x1 = 1 + x0 end
thread x3 = x1 + x2 end
{Browse [x0 x1 x2 x3]}

declare
fun {Double Xs}
   case Xs of
      nil then nil
   [] X|Xr then 2*X|{Double Xr}
   end
end
Ys = {Double [1 2 3]}
{Browse Ys}

thread
   for I in 1..100 do {Browse 1} end
end
thread
   for I in 1..100 do {Browse 2} end
end

declare X
{Browse X}
local Y in
   thread {Delay 1000} Y = 10*10 end
   X = Y + 100*100
end

declare F
fun {CMap Xs F}
   case Xs
   of nil then nil
   [] X|Xr then
      thread {F X} end | {CMap Xr F}
   end
end
{Browse {CMap [1 2 3 4] F}}
F = fun {$ X} X+1 end

declare
fun {Fib X}
   case X of
      0 then 0
   [] 1 then 1
   [] X then thread {Fib X-1} end + {Fib X-2}
   end
end
{Browse {Fib 6}}