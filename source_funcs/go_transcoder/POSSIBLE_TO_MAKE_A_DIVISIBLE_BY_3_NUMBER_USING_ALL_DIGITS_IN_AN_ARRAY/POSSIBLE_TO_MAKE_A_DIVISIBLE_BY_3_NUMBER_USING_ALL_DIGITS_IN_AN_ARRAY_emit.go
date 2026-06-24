package main

//go:export f_gold
func f_gold(arr []int, n int) bool {
	var remainder int = 0
	for i := int(0); i < n; i++ {
		remainder = (remainder + arr[i]) % 3
	}
	return remainder == 0
}
