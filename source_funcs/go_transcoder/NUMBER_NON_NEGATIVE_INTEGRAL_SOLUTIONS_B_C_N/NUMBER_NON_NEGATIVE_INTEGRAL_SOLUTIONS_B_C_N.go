package main

func f_gold(n int) int {
	var result int = 0
	for i := int(0); i <= n; i++ {
		for j := int(0); j <= n-i; j++ {
			for k := int(0); k <= (n - i - j); k++ {
				if i+j+k == n {
					result++
				}
			}
		}
	}
	return result
}
