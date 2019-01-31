package rge

import (
	"fmt"
	"github.com/modern-go/reflect2"
	"testing"
)

func TestBase(t *testing.T) {
	intType := reflect2.TypeOf(1)

	fmt.Println(intType)
}
