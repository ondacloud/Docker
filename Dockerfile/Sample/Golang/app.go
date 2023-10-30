package main

import (
    "fmt"
    "net/http"
)

func health(w http.ResponseWriter, req *http.Request) {
    fmt.Fprint(w, "OK")
}

func main() {
    http.HandleFunc("/health", health)
    http.ListenAndServe(":8080", nil)
}