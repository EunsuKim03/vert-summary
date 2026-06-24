package main

//go:export f_gold
func f_gold(x1 int, y1 int, x2 int, y2 int) bool {
	return x1*(y2-y1) == y1*(x2-x1)
}
