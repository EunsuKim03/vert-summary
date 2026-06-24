package main

//go:export f_gold
func f_gold(N int) int {
	if N == 1 {
		return 4
	}
	var countB int = 1
	var countS int = 1
	var prev_countB int
	var prev_countS int
	for i := int(2); i <= N; i++ {
		prev_countB = countB
		prev_countS = countS
		countS = prev_countB + prev_countS
		countB = prev_countS
	}
	var result int = countS + countB
	return result * result
}
