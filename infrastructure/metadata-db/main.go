// Author: Madhu Akula
// This program has been created as part of Kubernetes Goat
// Static metadata database
package main

import (
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(http.Dir("./metadata")))
	http.ListenAndServe(":80", nil)
}
