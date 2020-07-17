let twoFer = (input) =>
  switch input {
    | Some(str) => "One for " ++ str ++ ", one for me."
    | None => "One for you, one for me."
  };
