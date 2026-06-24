package main

//go:export f_gold
func f_gold(a []int, n int, l int, r int) int {
	var count int = 0
	for i := int(l); i < r; i++ {
		if a[i] == a[i+1] {
			count += 1
		}
	}
	return count
}
