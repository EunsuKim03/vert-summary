package main

func f_gold(n int) float64 {
	var (
		multiTerms float64 = float64(n * (n + 1) / 2)
		sum        float64 = multiTerms
	)
	for i := int(2); i <= n; i++ {
		multiTerms = multiTerms - float64(i-1)
		sum = sum + multiTerms*float64(i)
	}
	return sum
}
