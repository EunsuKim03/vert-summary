package main

import "sort"

func f_gold(a []int, n int) int {
	sort.Ints(a)
	var num1 int = 0
	var num2 int = 0
	for i := int(0); i < n; i++ {
		if i%2 == 0 {
			num1 = num1*10 + a[i]
		} else {
			num2 = num2*10 + a[i]
		}
	}
	return num2 + num1
}
