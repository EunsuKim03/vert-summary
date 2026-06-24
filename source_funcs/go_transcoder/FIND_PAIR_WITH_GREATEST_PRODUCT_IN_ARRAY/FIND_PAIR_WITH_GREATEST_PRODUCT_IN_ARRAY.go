package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	var result int = -1
	for i := int(0); i < n; i++ {
		for j := int(0); j < n-1; j++ {
			for k := int(j + 1); k < n; k++ {
				if arr[j]*arr[k] == arr[i] {
					result = max(result, arr[i])
				}
			}
		}
	}
	return result
}
