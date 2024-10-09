type word = char list
let string_of_charlist (lst : string) : word = lst |> String.to_seq |> List.of_seq

let lang1 : word -> bool = failwith ""

let rec lang1 (w : char list) : bool = match w with
	| [] -> false
	| '0' :: ls -> lang1 ls
	| '1' :: ls -> lang1 ls
	| _ -> false

let lang2 : word -> bool = failwith ""

let lang3 : word -> bool = failwith ""

let lang4 : word -> bool = failwith ""

let lang5 : word -> bool = failwith ""
    
let recognizers = [lang1;lang2;lang3;lang4;lang5]

let belongsTo w = List.map (fun f -> f w) recognizers
  
