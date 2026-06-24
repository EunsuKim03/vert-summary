package main

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		sum     int = 0
		leftsum int = 0
	)
	for i := int(0); i < n; i++ {
		sum += arr[i]
	}
	for i := int(0); i < n; i++ {
		sum -= arr[i]
		if leftsum == sum {
			return i
		}
		leftsum += arr[i]
	}
	return -1
}
