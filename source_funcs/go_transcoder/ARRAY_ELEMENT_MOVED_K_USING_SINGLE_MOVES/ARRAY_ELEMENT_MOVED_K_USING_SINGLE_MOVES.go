package main

func f_gold(a []int, n int, k int) int {
	if k >= n-1 {
		return n
	}
	var best int = 0
	var times int = 0
	for i := int(0); i < n; i++ {
		if a[i] > best {
			best = a[i]
			if i != 0 {
				times = 1
			}
		} else {
			times += 1
		}
		if times >= k {
			return best
		}
	}
	return best
}
