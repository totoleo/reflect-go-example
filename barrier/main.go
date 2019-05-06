package main

import (
	"math"
)

// go tool compile -S -N -l main.go >asm_amd64.s
func main() {
	map_by([]int64{1, 2, 3}, square)
}

func map_by(items []int64, f func(a int64) int64) []int64 {
	var newItems = items[0:0]
	for _, item := range items {
		newItems = append(newItems, f(item))
	}
	return newItems
}

func square(a int64) int64 {
	return int64(math.Pow(float64(a), 2))
}
