package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(arr []int, n int) int {
	var cum_sum int = 0
	for i := int(0); i < n; i++ {
		cum_sum += arr[i]
	}
	var curr_val int = 0
	for i := int(0); i < n; i++ {
		curr_val += i * arr[i]
	}
	var res int = curr_val
	for i := int(1); i < n; i++ {
		var next_val int = curr_val - (cum_sum - arr[i-1]) + arr[i-1]*(n-1)
		curr_val = next_val
		res = max(res, next_val)
	}
	return res
}
