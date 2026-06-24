package main

//go:export f_gold
func f_gold(limit int) int {
	if limit < 2 {
		return 0
	}
	var ef1 float64 = 0
	var ef2 float64 = 2
	var sum float64 = ef1 + ef2
	for ef2 <= float64(limit) {
		var ef3 float64 = ef2*4 + ef1
		if ef3 > float64(limit) {
			break
		}
		ef1 = ef2
		ef2 = ef3
		sum += ef2
	}
	return int(sum)
}
