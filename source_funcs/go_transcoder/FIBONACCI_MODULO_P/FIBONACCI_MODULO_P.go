package main

func f_gold(p int) int {
	var (
		first  int = 1
		second int = 1
		number int = 2
		next   int = 1
	)
	for next != 0 {
		next = (first + second) % p
		first = second
		second = next
		number++
	}
	return number
}
