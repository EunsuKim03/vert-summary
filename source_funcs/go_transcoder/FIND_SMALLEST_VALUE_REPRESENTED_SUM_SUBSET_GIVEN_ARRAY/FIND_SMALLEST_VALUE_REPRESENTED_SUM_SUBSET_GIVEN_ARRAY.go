package main

func f_gold(arr []int, n int) int {
	var res int = 1
	for i := int(0); i < n && arr[i] <= res; i++ {
		res = res + arr[i]
	}
	return res
}
