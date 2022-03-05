package main

import (
	"fmt"
	"github.com/lixiangzhong/dnsutil"
	"github.com/stretchr/testify/assert"
	"os"
	"testing"
)

func TestDNSLookup(t *testing.T) {
	var dig dnsutil.Dig
	dig.Retry = 5
	err := dig.At(fmt.Sprintf("127.0.0.1:%s", os.Getenv("PIHOLE_HOST_PORT")))
	handleError(err)
	a, err := dig.A("google.com")
	handleError(err)

	assert.NotEmpty(t, a, "DNS lookup failed")
}

func handleError(err error) {
	if err != nil {
		panic(err)
	}
}
