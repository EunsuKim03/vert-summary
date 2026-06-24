package main

func f_gold(process int, need int) int {
	var minResources int = 0
	minResources = process*(need-1) + 1
	return minResources
}
