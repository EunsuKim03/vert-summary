package main

//go:export f_gold
func f_gold(x1 int, y1 int, x2 int, y2 int, r1 int, r2 int) int {
	var (
		distSq   int = (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2)
		radSumSq int = (r1 + r2) * (r1 + r2)
	)
	if distSq == radSumSq {
		return 1
	} else if distSq > radSumSq {
		return -1
	} else {
		return 0
	}
}
