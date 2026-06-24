package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	var max_len int = 0
	for i := int(0); i < n; i++ {
		var curr_sum int = 0
		for j := int(i); j < n; j++ {
			curr_sum += arr[j]
			if curr_sum == 0 {
				max_len = max(max_len, j-i+1)
			}
		}
	}
	return max_len
}
