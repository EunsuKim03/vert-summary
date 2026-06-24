package main

func f_gold(n uint, k uint) bool {
	var oneSeen bool = false
	for n > 0 {
		var digit int = int(n % k)
		if digit > 1 {
			return false
		}
		if digit == 1 {
			if oneSeen {
				return false
			}
			oneSeen = true
		}
		n /= k
	}
	return true
}
