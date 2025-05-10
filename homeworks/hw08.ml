(* Guideline
 

Do not submit a pdf file. Fill in all the  'failwith "Not Implemented"' parts of this file, and then submit it on Brightspace.  


Special grading criteria:

- If your code does not compile, you will receive 0, even if you might argue your code is almost right. 

So, it is essential to check your code with Ocaml. 

*) 

(* 
   


You will write an evaluator for simple arithmetic expressions.

Use the following type declaration that represents arithmetic expressions.
*)

    type exp =
      | Int of int
      | Add of exp * exp
      | Mul of exp * exp
      

(* Exercise 1 (Points = 25)

Encode the following arithmetic expressions as `exp`s:

1.  10 + 5
2.  (2 + 3) * 5
3.  3 * 0 * 3 * 5

*)

let expression1 = failwith "Not Implemented"

let expression2 = failwith "Not Implemented"

let expression3 = failwith "Not Implemented"


(* Exercise 2 (Points = 25)
Write the function eval: exp -> int, which reduces expressions to integer values:
*)

let rec eval (e:exp):int= failwith "Not Implemented"

(* Exercise 3 (Points = 25)
Write the function print : exp -> string , which returns a string representing `e`. The string should print arithmetic operators using infix notation and properly parenthesize expressions. Your solution may be similar to the following examples.

print (Add (Int 10, Int 5)) produces "(10 + 5)"
print (Mul (Add (Int 2, Int 3), Int 5)) produces "((2 + 3) * 5)"
print (Mul ((Mul (Int 3, Int 0)), Mul (Int 3, Int 5))) produces "((3 * 0) * (3 * 5))"
*)

let rec print (e:exp):string = failwith "Not Implemented"



(* 
Exercise 4 (Points = 25)
Write the function is_sorted: int list -> bool to determine if the integers in an int lst are in sorted in ascending order.

*)

let rec is_sorted (lst:int list): bool = failwith "Not Implemented"

