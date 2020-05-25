module HelloWorld where

import Prelude ((<>))
import Data.Maybe

helloWorld :: Maybe String -> String
helloWorld user = case user of
  Just string -> "Hello, " <> string <> "!"
  Nothing -> "Hello, World!"
