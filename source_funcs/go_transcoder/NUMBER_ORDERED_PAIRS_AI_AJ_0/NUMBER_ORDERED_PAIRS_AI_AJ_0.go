package main

func f_gold(a []int, n int) int {
	var count int = 0
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			if (a[i] & a[j]) == 0 {
				count += 2
			}
		}
	}
	return count
}
