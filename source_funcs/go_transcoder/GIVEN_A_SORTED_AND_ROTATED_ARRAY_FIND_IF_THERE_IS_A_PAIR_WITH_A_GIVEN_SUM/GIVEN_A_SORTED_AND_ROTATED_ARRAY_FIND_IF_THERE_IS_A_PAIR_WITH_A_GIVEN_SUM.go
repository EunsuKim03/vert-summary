package main

func f_gold(arr []int, n int, x int) bool {
	var i int
	for i = 0; i < n-1; i++ {
		if arr[i] > arr[i+1] {
			break
		}
	}
	var l int = (i + 1) % n
	var r int = i
	for l != r {
		if arr[l]+arr[r] == x {
			return true
		}
		if arr[l]+arr[r] < x {
			l = (l + 1) % n
		} else {
			r = (n + r - 1) % n
		}
	}
	return false
}
