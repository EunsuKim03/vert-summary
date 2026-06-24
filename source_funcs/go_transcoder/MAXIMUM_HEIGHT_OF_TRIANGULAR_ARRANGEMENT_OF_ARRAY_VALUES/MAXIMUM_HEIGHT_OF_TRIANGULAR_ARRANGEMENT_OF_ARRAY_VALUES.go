package main

func f_gold(a []int, n int) int {
	var result int = 1
	for i := int(1); i <= n; i++ {
		var y float64 = float64((i * (i + 1)) / 2)
		if y < float64(n) {
			result = i
		} else {
			break
		}
	}
	return result
}
