package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(a []int, size int) int {
	var (
		max_so_far int = a[0]
		curr_max   int = a[0]
	)
	for i := int(1); i < size; i++ {
		curr_max = max(a[i], curr_max+a[i])
		max_so_far = max(max_so_far, curr_max)
	}
	return max_so_far
}
