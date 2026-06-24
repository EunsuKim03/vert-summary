package main

func f_gold(arr []int, n int, x int) int {
	var (
		curr_sum int = 0
		min_len  int = n + 1
		start    int = 0
		end      int = 0
	)
	for end < n {
		for curr_sum <= x && end < n {
			if curr_sum <= 0 && x > 0 {
				start = end
				curr_sum = 0
			}
			curr_sum += arr[func() int {
				p := &end
				x := *p
				*p++
				return x
			}()]
		}
		for curr_sum > x && start < n {
			if end-start < min_len {
				min_len = end - start
			}
			curr_sum -= arr[func() int {
				p := &start
				x := *p
				*p++
				return x
			}()]
		}
	}
	return min_len
}
