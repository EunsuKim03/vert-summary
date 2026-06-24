package main

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func f_gold(a []int, n int, k int) int {
	var result int = 0
	for i := int(0); i < n; i++ {
		if a[i] != 1 && a[i] > k {
			result = result + min(a[i]%k, k-a[i]%k)
		} else {
			result = result + k - a[i]
		}
	}
	return result
}
