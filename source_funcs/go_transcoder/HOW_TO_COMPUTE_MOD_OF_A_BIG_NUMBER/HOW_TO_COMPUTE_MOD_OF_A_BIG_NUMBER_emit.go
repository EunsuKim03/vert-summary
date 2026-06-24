package main

//go:export f_gold
func f_gold(num []byte, a int) int {
	var res int = 0
	for i := int(0); i < int(len(num)); i++ {
		res = (res*10 + int(num[i]) - int('0')) % a
	}
	return res
}
