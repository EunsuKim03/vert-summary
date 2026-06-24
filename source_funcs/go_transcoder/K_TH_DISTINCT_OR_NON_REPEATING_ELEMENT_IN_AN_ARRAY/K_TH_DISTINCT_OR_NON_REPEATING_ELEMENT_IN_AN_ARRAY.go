package main

func f_gold(arr []int, n int, k int) int {
	var dist_count int = 0
	for i := int(0); i < n; i++ {
		var j int
		for j = 0; j < n; j++ {
			if i != j && arr[j] == arr[i] {
				break
			}
		}
		if j == n {
			dist_count++
		}
		if dist_count == k {
			return arr[i]
		}
	}
	return -1
}
