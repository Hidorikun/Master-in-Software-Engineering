% (Zip and UnZip)
% a)
declare
fun {Zip Xs#Ys}
   case Xs of nil then nil
   [] Hx|Tx then
      case Ys of nil then nil
      [] Hy|Ty then
	 Hx#Hy|{Zip Tx#Ty}
      end
    end
end

{Browse {Zip [a b c]#[1 2 3]}}

% b)
fun {UnzipHelper L L1 L2}
   case L of nil then L1#L2
   [] H|T then
      case H of A#B then {UnzipHelper T {List.append L1 [A]} {List.append L2 [B]}}
      end
   end
end

fun {Unzip L}
   {UnzipHelper L nil nil}
end

{Browse {Unzip [a#1 b#2 c#3]}}