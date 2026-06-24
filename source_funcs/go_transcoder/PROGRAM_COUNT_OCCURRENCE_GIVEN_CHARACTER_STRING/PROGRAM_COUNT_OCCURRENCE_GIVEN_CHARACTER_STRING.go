package main

func f_gold(s []byte, c int8) int {
	var res int = 0
	for i := int(0); i < int(len(s)); i++ {
		if s[i] == byte(c) {
			res++
		}
	}
	return res
}
