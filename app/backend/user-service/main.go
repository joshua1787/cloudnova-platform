package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/users", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to CloudNova User Service!")
	})

	fmt.Println("Starting User Service on port 8083...")
	log.Fatal(http.ListenAndServe(":8083", nil))
}
