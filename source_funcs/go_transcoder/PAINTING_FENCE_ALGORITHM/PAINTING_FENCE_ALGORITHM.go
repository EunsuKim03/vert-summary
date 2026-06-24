package main

func f_gold(n int, k int) int {
	var (
		total int = k
		mod   int = 0x3B9ACA07
		same  int = 0
		diff  int = k
	)
	for i := int(2); i <= n; i++ {
		same = diff
		diff = total * (k - 1)
		diff = diff % mod
		total = (same + diff) % mod
	}
	return total
}
