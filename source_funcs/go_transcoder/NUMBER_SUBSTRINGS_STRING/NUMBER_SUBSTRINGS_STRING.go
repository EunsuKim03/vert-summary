package main

func f_gold(str []byte) int {
	var n int = int(len(str))
	return n * (n + 1) / 2
}
