package main

//go:export f_gold
func f_gold(arr []int, n int) int {
	var res int = 0
	for i := int(0); i < n-1; i++ {
		res = res ^ (i + 1) ^ arr[i]
	}
	res = res ^ arr[n-1]
	return res
}
