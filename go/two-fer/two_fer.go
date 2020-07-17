package twofer

import "fmt"

func ShareWith(name string) string {
	if name != "" {
		return fmt.Sprintf("One for %s, one for me.", name)
	} else {
		return "One for you, one for me."
	}
}
