package main

//go:export f_gold
func f_gold(a float64, b float64) float64 {
	var mod float64
	if a < 0 {
		mod = -a
	} else {
		mod = a
	}
	if b < 0 {
		b = -b
	}
	for mod >= b {
		mod = mod - b
	}
	if a < 0 {
		return -mod
	}
	return mod
}
