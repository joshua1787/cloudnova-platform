package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/orders", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to CloudNova Order Service!")
	})

	fmt.Println("Starting Order Service on port 8081...")
	log.Fatal(http.ListenAndServe(":8081", nil))
}
