package main

func f_gold(arr []int, n int) int {
	var result int = 0
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			var product int = arr[i] * arr[j]
			for k := int(0); k < n; k++ {
				if arr[k] == product {
					result++
					break
				}
			}
		}
	}
	return result
}
