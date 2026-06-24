package main

func f_gold(s []byte, K int) int {
	var (
		n  int = int(len(s))
		C  int
		c1 int = 0
		c2 int = 0
	)
	for i := int(0); i < n; i++ {
		if s[i] == byte('a') {
			c1++
		}
		if s[i] == byte('b') {
			c2++
			C += c1
		}
	}
	return C*K + (K*(K-1)/2)*c1*c2
}
