package main

//go:export f_gold
func f_gold(weight []int, n int, c int) int {
	var (
		res     int = 0
		bin_rem int = c
	)
	for i := int(0); i < n; i++ {
		if weight[i] > bin_rem {
			res++
			bin_rem = c - weight[i]
		} else {
			bin_rem -= weight[i]
		}
	}
	return res
}
