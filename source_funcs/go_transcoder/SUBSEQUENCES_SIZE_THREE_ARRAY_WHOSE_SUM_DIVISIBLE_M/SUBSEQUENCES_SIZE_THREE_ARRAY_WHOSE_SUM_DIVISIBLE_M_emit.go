package main

//go:export f_gold
func f_gold(A []int, N int, M int) int {
	var (
		sum int = 0
		ans int = 0
	)
	for i := int(0); i < N; i++ {
		for j := int(i + 1); j < N; j++ {
			for k := int(j + 1); k < N; k++ {
				sum = A[i] + A[j] + A[k]
				if sum%M == 0 {
					ans++
				}
			}
		}
	}
	return ans
}
