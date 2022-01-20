package main

import (
"fmt"
"math"
)

func main() {
    fmt.Print("Enter the number of meters to convert to pounds: ")
    var input float64
    fmt.Scanf("%f", &input)

    output := input / 0.3048

    fmt.Println(math.Round(output*1000)/1000)
}