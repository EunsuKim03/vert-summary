package main

func f_gold(x int) int {
	return (x&15)<<4 | (x&240)>>4
}
