package main

func f_gold(a []int, n int) bool {
	var (
		count_odd  int = 0
		count_even int = 0
	)
	for i := int(0); i < n; i++ {
		if a[i]&1 != 0 {
			count_odd++
		} else {
			count_even++
		}
	}
	if count_odd%2 != 0 && count_even%2 != 0 {
		return false
	} else {
		return true
	}
}
