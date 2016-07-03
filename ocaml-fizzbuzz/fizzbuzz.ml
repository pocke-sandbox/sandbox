let rec fizzbuzz n = 
  if n = 0 then []
  else
    let res = match (n mod 3, n mod 5) with
      | (0, 0) -> "fizzbuzz"
      | (0, _) -> "fizz"
      | (_, 0) -> "buzz"
      | (_, _) -> string_of_int n in 
    fizzbuzz(n-1) @ [res]

let fizzbuzz_string n =
  let f = fizzbuzz n in
  String.concat " " f

let () = 
  let n = read_int () in
  print_string (fizzbuzz_string n);
  print_newline()
