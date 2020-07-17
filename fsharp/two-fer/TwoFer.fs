module TwoFer

let twoFer (name: string option): string =
    match name with
        | Some name -> "One for " + name + ", one for me."
        | None -> "One for you, one for me."
