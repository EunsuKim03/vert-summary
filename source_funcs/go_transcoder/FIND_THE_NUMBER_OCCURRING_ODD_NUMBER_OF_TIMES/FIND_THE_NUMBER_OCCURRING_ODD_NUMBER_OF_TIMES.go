package main

func f_gold(arr []int, arr_size int) int {
	for i := int(0); i < arr_size; i++ {
		var count int = 0
		for j := int(0); j < arr_size; j++ {
			if arr[i] == arr[j] {
				count++
			}
		}
		if count%2 != 0 {
			return arr[i]
		}
	}
	return -1
}
