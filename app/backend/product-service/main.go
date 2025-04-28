package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/products", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to CloudNova Product Service!")
	})

	fmt.Println("Starting Product Service on port 8082...")
	log.Fatal(http.ListenAndServe(":8082", nil))
}
