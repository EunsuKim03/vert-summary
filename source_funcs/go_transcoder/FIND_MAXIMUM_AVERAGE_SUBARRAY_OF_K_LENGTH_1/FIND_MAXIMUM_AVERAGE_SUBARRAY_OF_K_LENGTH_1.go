package main

func f_gold(arr []int, n int, k int) int {
	if k > n {
		return -1
	}
	var sum int = arr[0]
	for i := int(1); i < k; i++ {
		sum += arr[i]
	}
	var max_sum int = sum
	var max_end int = k - 1
	for i := int(k); i < n; i++ {
		var sum int = sum + arr[i] - arr[i-k]
		if sum > max_sum {
			max_sum = sum
			max_end = i
		}
	}
	return max_end - k + 1
}
