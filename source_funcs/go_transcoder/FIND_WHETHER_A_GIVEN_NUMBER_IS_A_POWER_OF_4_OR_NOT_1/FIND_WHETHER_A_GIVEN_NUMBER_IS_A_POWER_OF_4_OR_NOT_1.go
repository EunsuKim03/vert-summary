package main

func f_gold(n uint) bool {
	var count int = 0
	if n != 0 && (n&(n-1)) == 0 {
		for n > 1 {
			n >>= 1
			count += 1
		}
		if count%2 == 0 {
			return true
		}
		return false
	}
	return false
}
