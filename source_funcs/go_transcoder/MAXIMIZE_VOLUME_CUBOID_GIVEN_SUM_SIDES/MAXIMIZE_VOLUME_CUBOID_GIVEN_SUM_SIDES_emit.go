package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(s int) int {
	var maxvalue int = 0
	for i := int(1); i <= s-2; i++ {
		for j := int(1); j <= s-1; j++ {
			var k int = s - i - j
			maxvalue = max(maxvalue, i*j*k)
		}
	}
	return maxvalue
}
