package main

//go:export f_gold
func f_gold(a []int, n int) int {
	var (
		zero int = 0
		two  int = 0
	)
	for i := int(0); i < n; i++ {
		if a[i] == 0 {
			zero++
		}
		if a[i] == 2 {
			two++
		}
	}
	var cnt int = (zero*(zero-1))/2 + (two*(two-1))/2
	return cnt
}
