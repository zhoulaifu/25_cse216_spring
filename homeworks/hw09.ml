

(* Exercise 1 (25 points) *)
(* Write a function take : int -> 'a list -> 'a list such that take n lst returns the first n elements of lst. *)
(* If lst has fewer than n elements, return the entire list. Here, n can be any integer including negative numbers. *)
(* For example:
   - take 2 [1; 2; 3; 4] should return [1; 2]
   - take 5 [1; 2; 3] should return [1; 2; 3] (since the list has fewer than 5 elements)
   - take 0 [1; 2; 3] should return []
   - take (-2) [1; 2; 3] should return []
   - take 3 [] should return [] *)
let rec take n lst = 
  (* Your implementation here *)
  []

(* Test cases for take *)
let test_take () =
  assert (take 2 [1; 2; 3; 4] = [1; 2]);
  assert (take 3 [1; 2; 3] = [1; 2; 3]);
  assert (take 5 [1; 2; 3] = [1; 2; 3]);
  assert (take 0 [1; 2; 3] = []);
  assert (take (-2) [1; 2; 3] = []);
  assert (take 3 [] = []);
  Printf.printf "All tests for take passed!\n"

(* Exercise 2 (25 points) *)
(* Suppose a weighted undirected graph is represented as a list of edges. Each edge is a triple of the type *)
(* string * string * int, where the two nodes are represented by strings, and the weight is an integer. *)

(* Define types for edge and graph *)
type edge = string * string * int
type graph = edge list

(* Write an OCaml function of type graph -> edge option to identify the minimum weight edge in this graph. *)
(* Solve this problem using recursion and pattern matching. *)
let min_edge (g : graph) : edge option = 
  (* Your implementation here *)
  None

(* Test cases for min_edge *)
(* The test cases assume a unique minimum edge. If there are multiple edges with the same minimum weight (e.g., [("A", "B", 1); ("B", "C", 1)]), your function might return either edge.*)
let test_min_edge () =
  let g1 : graph = [("A", "B", 3); ("B", "C", 2); ("A", "C", 5)] in
  let g2 : graph = [("X", "Y", 10); ("Y", "Z", 1); ("X", "Z", 7)] in
  let g3 : graph = [] in
  assert (min_edge g1 = Some ("B", "C", 2));
  assert (min_edge g2 = Some ("Y", "Z", 1));
  assert (min_edge g3 = None);
  Printf.printf "All tests for min_edge passed!\n"

(* Exercise 3 (25 points) *)
(* Binary trees can be defined as follows: *)
type btree = 
  | Empty
  | Node of int * btree * btree

(* Write a function mirror: btree -> btree that exchanges the left and right subtrees all the way down. *)
let rec mirror (t : btree) : btree = 
  (* Your implementation here *)
  Empty

(* Test cases for mirror *)
let test_mirror () =
  let t1 = Node (1, Empty, Empty) in
  let t2 = Node (1, Node (2, Empty, Empty), Node (3, Empty, Empty)) in
  let t3 = Node (4, Node (5, Empty, Node (6, Empty, Empty)), Empty) in
  assert (mirror t1 = Node (1, Empty, Empty));
  assert (mirror t2 = Node (1, Node (3, Empty, Empty), Node (2, Empty, Empty)));
  assert (mirror t3 = Node (4, Empty, Node (5, Node (6, Empty, Empty), Empty)));
  Printf.printf "All tests for mirror passed!\n"

  
(* Exercise 4 (25 points) *)
(* Natural numbers can be defined as follows: *)
type nat = 
  | ZERO 
  | SUCC of nat

(* Write three functions that add, multiply, and exponentiate natural numbers: *)
(* natadd : nat -> nat -> nat *)
let rec natadd (n1 : nat) (n2 : nat) : nat = 
  (* Your implementation here *)
  ZERO

(* natmul : nat -> nat -> nat *)
let rec natmul (n1 : nat) (n2 : nat) : nat = 
  (* Your implementation here *)
  ZERO

(* natexp : nat -> nat -> nat *)
(* Note: For natexp, treat ZERO raised to ZERO as SUCC ZERO (i.e., 1). *)
let rec natexp (n1 : nat) (n2 : nat) : nat = 
  (* Your implementation here *)
  ZERO

(* Helper functions to convert int to nat and nat to int for testing *)
let rec int_to_nat n =
  if n = 0 then ZERO else SUCC (int_to_nat (n - 1))

let rec nat_to_int n =
  match n with
  | ZERO -> 0
  | SUCC n' -> 1 + nat_to_int n'

(* Test cases for natadd, natmul, natexp *)
let test_nat_operations () =
  let two = SUCC (SUCC ZERO) in
  let three = SUCC (SUCC (SUCC ZERO)) in
  assert (nat_to_int (natadd two three) = 5);
  assert (nat_to_int (natadd two ZERO) = 2);  (* Added test for ZERO *)
  assert (nat_to_int (natmul two three) = 6);
  assert (nat_to_int (natmul ZERO three) = 0);  (* Added test for ZERO *)
  assert (nat_to_int (natexp two three) = 8);
  assert (nat_to_int (natexp three ZERO) = 1);  (* Added test for exponent ZERO *)
  assert (nat_to_int (natexp ZERO ZERO) = 1);  (* Added test for ZERO^ZERO *)
  Printf.printf "All tests for natadd, natmul, and natexp passed!\n"

(* Run all test cases *)
let () =
  test_take ();
  test_min_edge ();
  test_mirror ();
  test_nat_operations ()
