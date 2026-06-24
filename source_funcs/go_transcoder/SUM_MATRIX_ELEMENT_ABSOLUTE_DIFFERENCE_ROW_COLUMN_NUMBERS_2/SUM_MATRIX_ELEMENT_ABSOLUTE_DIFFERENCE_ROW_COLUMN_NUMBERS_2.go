package main

func f_gold(n int) int {
	n--
	var sum int = 0
	sum += (n * (n + 1)) / 2
	sum += (n * (n + 1) * (n*2 + 1)) / 6
	return sum
}
