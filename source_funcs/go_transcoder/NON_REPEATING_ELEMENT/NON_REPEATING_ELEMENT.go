package main

func f_gold(arr []int, n int) int {
	for i := int(0); i < n; i++ {
		var j int
		for j = 0; j < n; j++ {
			if i != j && arr[i] == arr[j] {
				break
			}
		}
		if j == n {
			return arr[i]
		}
	}
	return -1
}
