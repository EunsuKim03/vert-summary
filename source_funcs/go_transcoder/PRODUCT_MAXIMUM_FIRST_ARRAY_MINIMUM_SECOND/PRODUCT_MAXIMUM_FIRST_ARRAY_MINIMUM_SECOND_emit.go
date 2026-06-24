package main

import "sort"

//go:export f_gold
func f_gold(arr1 []int, arr2 []int, n1 int, n2 int) int {
	sort.Ints(arr1)
	sort.Ints(arr2)
	return arr1[n1-1] * arr2[0]
}
