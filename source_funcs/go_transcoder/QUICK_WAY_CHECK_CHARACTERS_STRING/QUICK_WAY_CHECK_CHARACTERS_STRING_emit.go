package main

//go:export f_gold
func f_gold(s []byte) bool {
	var n int = int(len(s))
	for i := int(1); i < n; i++ {
		if s[i] != s[0] {
			return false
		}
	}
	return true
}
