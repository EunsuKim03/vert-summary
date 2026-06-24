package main

func f_gold(n int) int {
	var (
		k    int = n
		imin int = 1
		ans  int = 0
	)
	for imin <= n {
		var imax int = n / k
		ans += k * (imax - imin + 1)
		imin = imax + 1
		k = n / imin
	}
	return ans
}
