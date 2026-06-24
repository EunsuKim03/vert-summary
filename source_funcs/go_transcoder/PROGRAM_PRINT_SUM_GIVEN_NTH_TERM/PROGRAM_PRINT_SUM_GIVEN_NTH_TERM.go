package main

func f_gold(n int) int {
	var S int = 0
	for i := int(1); i <= n; i++ {
		S += i*i - (i-1)*(i-1)
	}
	return S
}
