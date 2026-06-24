package main

//go:export f_gold
func f_gold(arr []int, n int, x int) int {
	var i int
	for i = 0; i < n-1; i++ {
		if arr[i] > arr[i+1] {
			break
		}
	}
	var l int = (i + 1) % n
	var r int = i
	var cnt int = 0
	for l != r {
		if arr[l]+arr[r] == x {
			cnt++
			if l == (r-1+n)%n {
				return cnt
			}
			l = (l + 1) % n
			r = (r - 1 + n) % n
		} else if arr[l]+arr[r] < x {
			l = (l + 1) % n
		} else {
			r = (n + r - 1) % n
		}
	}
	return cnt
}
