package main

func f_gold(a []int, n int) int {
	var (
		i     int
		total int = 1
	)
	for i = 2; i <= (n + 1); i++ {
		total += i
		total -= a[i-2]
	}
	return total
}
