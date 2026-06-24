package main

func f_gold(n int) int {
	var (
		pPrevPrev int = 1
		pPrev     int = 1
		pCurr     int = 1
		pNext     int = 1
	)
	for i := int(3); i <= n; i++ {
		pNext = pPrevPrev + pPrev
		pPrevPrev = pPrev
		pPrev = pCurr
		pCurr = pNext
	}
	return pNext
}
