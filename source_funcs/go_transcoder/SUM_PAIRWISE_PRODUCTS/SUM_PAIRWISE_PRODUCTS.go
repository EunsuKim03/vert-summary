package main

func f_gold(n int) float64 {
	var sum float64 = 0
	for i := int(1); i <= n; i++ {
		for j := int(i); j <= n; j++ {
			sum = sum + float64(i*j)
		}
	}
	return sum
}
