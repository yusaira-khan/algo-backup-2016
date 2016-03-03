(* HOMEWORK 1 : COMP 302 Fall 2014 
   Model Solution *)

exception NotImplemented
exception Domain

(* ------------------------------------------------------------*)
(* QUESTION 2 : WARM-UP                                        *)
(* ------------------------------------------------------------*)
(* Q2 Computing the square root                                *)

let square_root a =  
  let rec findroot x acc = 
  let next = (a /. x +. x) /. 2.0 in
    if abs_float (x -. next) < acc 
    then next
    else 
      findroot next acc
  in
  findroot 1.0 epsilon_float


(* ------------------------------------------------------------*)
(* QUESTION 3 : House of Cards                                 *)
(* ------------------------------------------------------------*)

type suit = Clubs | Spades | Hearts | Diamonds

type rank =  Six | Seven | Eight | Nine | Ten | 
             Jack | Queen | King | Ace

type card = rank * suit

type hand = Empty | Hand of card * hand

(* dom : suit -> suit -> bool

   dom(s1,s2) = true iff suit s1 beats or is equal to suit s2
                relative to the ordering S > H > D > C         
   Invariants: none
   Effects: none
*)

let dom s1 s2 = match s1, s2 with
  | Spades, _        -> true
  | Hearts, Diamonds -> true
  | Hearts, Clubs    -> true
  | Diamonds, Clubs  -> true
  | s1, s2           -> s1 = s2


let dom_rank r1 r = match r1 with 
  | Ace  -> true
  | King -> not (r = Ace)
  | Queen -> not (r = Ace) && not (r = King)
  | Jack -> not (r = Ace) && not (r = King) && not (r = Queen)
  | Ten -> r = Six || r = Seven || r = Eight || r = Nine || r = Ten
  | Nine -> r = Six || r = Seven || r = Eight || r = Nine 
  | Eight -> r = Six || r = Seven || r = Eight 
  | Seven ->  r = Six || r = Seven 
  | Six -> r = Six

let greater (r1, s1) (r2, s2) = 
  if s1 = s2 then dom_rank r1 r2 else dom s1 s2

let rec insert c h = match h with 
  | Empty -> Hand (c, Empty)
  | Hand (c', h') -> 
     if greater c' c then 
       Hand (c', insert c h')
     else 
       Hand (c, h)

let rec ins_sort h = match h with 
  | Empty -> Empty
  | Hand (c, h) -> insert c (ins_sort h) 

(* --------------------------------------------------------------------*)
(* QUESTION 3 Sparse representation of binary numbers                  *)
(* ------------------------------------------------------------------- *)

type nat = int list (* increasing list of weights, each a power of two *)

(* For example: 

5  = [1,4]
13 = [1,4,8]

*)

(* ------------------------------------------------------------------- *)
(* Q4.1 : Incrementing a binary number (10 points)                     *)
(* ------------------------------------------------------------------- *)

let rec carry w  ws = match ws with 
  | [ ] -> [w]
  | w0 :: rest -> 
     if w < w0 then w :: ws else carry (2*w) rest

let inc ws = carry 1 ws

(* ------------------------------------------------------------------- *)
(* Q4.2 : Decrementing a sparse binary number  (10 points)             *)
(* ------------------------------------------------------------------- *)

let rec borrow w ws = match ws with  
  | w0 :: rest -> 
     if w = w0 then rest else w :: borrow (2*w) ws
  | _ -> raise Domain

let dec ws = borrow 1 ws

(* ------------------------------------------------------------------- *)
(* Q4.3 : Adding sparse binary numbers  (10 points)                    *)
(* ------------------------------------------------------------------- *)

let rec add m n = match m , n with
| ws       , [ ]       -> ws
| [ ]      ,  ws       -> ws
| w1 :: ws1, w2 :: ws2 ->
  if w1 < w2 then w1 :: (add ws1 n)
  else if w2 < w1 then w2 :: (add m ws2)
  else    carry (2*w1) (add ws1 ws2)

(* ------------------------------------------------------------------- *)
(* Q4.3 : Converting to integer - tail recursively  (10 points)        *)
(* ------------------------------------------------------------------- *)
let sbinToInt n =   
  let rec toInt n acc = match n with 
    | [] -> acc
    | x::xs -> toInt xs (x + acc)
  in 
    toInt n 0
    
(* --------------------------------------------------------------------*)
(* QUESTION 5 Negation Normal Form                                     *)
(* ------------------------------------------------------------------- *)

type prop = 
  | Atom of string
  | Neg of prop
  | Conj of prop * prop
  | Disj of prop * prop
  | Impl of prop * prop


let rec nnf p = match p with 
  | Atom a -> Atom a
  | Neg (Atom a) -> Neg (Atom a)
  | Neg (Neg p) -> nnf p
  | Neg (Conj (p,q)) -> nnf (Disj (Neg p, Neg q))
  | Neg (Disj (p,q)) -> nnf (Conj (Neg p, Neg q))
  | Neg (Impl (p,q)) -> nnf (Neg (Disj (Neg p, q)))
  | Conj (p,q) -> Conj (nnf p, nnf q)
  | Disj (p,q) -> Disj (nnf p, nnf q)
  | Impl (p,q) -> nnf (Disj (Neg p, q))

let f1 = Neg (Conj (Atom "p", Disj (Atom "q", Atom "r")))
let f2 = Neg (Conj (Neg (Atom "p"), Disj (Atom "q", Atom "r")))
