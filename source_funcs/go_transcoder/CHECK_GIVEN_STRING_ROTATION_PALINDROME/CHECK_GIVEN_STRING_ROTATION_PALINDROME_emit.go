package main

//go:export f_gold
func f_gold(str []byte) bool {
	var (
		l int = 0
		h int = int(len(str) - 1)
	)
	for h > l {
		if str[func() int {
			p := &l
			x := *p
			*p++
			return x
		}()] != str[func() int {
			p := &h
			x := *p
			*p--
			return x
		}()] {
			return false
		}
	}
	return true
}
