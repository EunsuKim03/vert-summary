package main

//go:export f_gold
func f_gold(s []byte) int {
	var (
		result int = 0
		n      int = int(len(s))
	)
	for i := int(0); i < n; i++ {
		for j := int(i); j < n; j++ {
			if s[i] == s[j] {
				result++
			}
		}
	}
	return result
}
