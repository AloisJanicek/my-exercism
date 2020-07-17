fun name (input: string option) =
    case input of
        SOME input => "One for " ^ input ^ ", one for me."
      | NONE => "One for you, one for me."
