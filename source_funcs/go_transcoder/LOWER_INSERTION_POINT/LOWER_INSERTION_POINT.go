package main

func f_gold(arr []int, n int, X int) int {
	if X < arr[0] {
		return 0
	} else if X > arr[n-1] {
		return n
	}
	var lowerPnt int = 0
	var i int = 1
	for i < n && arr[i] < X {
		lowerPnt = i
		i = i * 2
	}
	for lowerPnt < n && arr[lowerPnt] < X {
		lowerPnt++
	}
	return lowerPnt
}
