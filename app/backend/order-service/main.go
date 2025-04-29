package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/aws/aws-xray-sdk-go/xray" // ✅ NEW
)

func main() {
	xray.Configure(xray.Config{
		LogLevel:       "info",  // Optional: Show debug logs
		ServiceVersion: "1.0.0", // Version of your microservice
	})

	mux := http.NewServeMux()
	mux.HandleFunc("/orders", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to CloudNova Order Service!")
	})

	xrayHandler := xray.Handler(xray.NewFixedSegmentNamer("order-service"), mux)

	fmt.Println("Starting Order Service on port 8081...")
	log.Fatal(http.ListenAndServe(":8081", xrayHandler))
}
