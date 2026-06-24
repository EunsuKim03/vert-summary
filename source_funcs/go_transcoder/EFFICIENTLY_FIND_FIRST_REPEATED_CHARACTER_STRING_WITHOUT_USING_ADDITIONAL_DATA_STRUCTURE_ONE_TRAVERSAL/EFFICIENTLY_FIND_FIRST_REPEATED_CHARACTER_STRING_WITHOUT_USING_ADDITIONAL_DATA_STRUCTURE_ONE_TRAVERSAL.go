package main

func f_gold(str []byte) int {
	var checker int = 0
	for i := int(0); i < int(len(str)); i++ {
		var val int = int(str[i] - byte('a'))
		if (checker & (1 << val)) > 0 {
			return i
		}
		checker |= 1 << val
	}
	return -1
}
