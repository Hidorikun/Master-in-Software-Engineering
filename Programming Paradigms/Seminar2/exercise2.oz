%exercise 2(Reverse)
declare

fun {Reverse L Acc}
   case L of nil then Acc
   [] H|T then {Reverse T H|Acc}
   end
end

{Browse {Reverse ['I' 'want' 2 go 'there'] nil }}