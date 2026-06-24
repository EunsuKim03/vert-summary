package main

func f_gold(n int) int {
	var count int = 0
	for i := int(5); n/i >= 1; i *= 5 {
		count += n / i
	}
	return count
}
