package main

//go:export f_gold
func f_gold(s []byte, c int8) bool {
	var (
		oneSeen bool = false
		i       int  = 0
		n       int  = int(len(s))
	)
	for i < n {
		if s[i] == byte(c) {
			if oneSeen {
				return false
			}
			for i < n && s[i] == byte(c) {
				i++
			}
			oneSeen = true
		} else {
			i++
		}
	}
	return true
}
