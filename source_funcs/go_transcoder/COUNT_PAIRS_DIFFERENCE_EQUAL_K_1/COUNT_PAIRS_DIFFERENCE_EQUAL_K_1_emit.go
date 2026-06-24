package main

import "sort"

//go:export f_gold
func f_gold(arr []int, n int, k int) int {
	var count int = 0
	sort.Ints(arr)
	var l int = 0
	var r int = 0
	for r < n {
		if arr[r]-arr[l] == k {
			count++
			l++
			r++
		} else if arr[r]-arr[l] > k {
			l++
		} else {
			r++
		}
	}
	return count
}
