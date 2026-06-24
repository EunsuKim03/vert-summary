package main

func f_gold(a1 []int, a2 []int, a3 []int, n1 int, n2 int, n3 int, sum int) bool {
	for i := int(0); i < n1; i++ {
		for j := int(0); j < n2; j++ {
			for k := int(0); k < n3; k++ {
				if a1[i]+a2[j]+a3[k] == sum {
					return true
				}
			}
		}
	}
	return false
}
