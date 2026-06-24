package main

func f_gold(strA []byte, strB []byte) int8 {
	var (
		res int = 0
		i   int
	)
	for i = 0; i < int(len(strA)); i++ {
		res ^= int(strA[i])
	}
	for i = 0; i < int(len(strB)); i++ {
		res ^= int(strB[i])
	}
	return int8(res)
}
