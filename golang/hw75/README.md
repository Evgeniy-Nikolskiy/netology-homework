### ЗАДАНИЕ 3 Написание кода.

#### Перевода метров в футы
````
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
````
#### Наименьший элемент в любом заданном списке
````
package main

import "fmt"

func main() {
    x := []int{48,96,86,68,57,82,63,70,37,34,83,27,19,97,9,17,}
    y := x[0]
    for _, z := range x {
        if (z < y) {
            y = z
            }
        }

   fmt.Println(y)
}
````
#### Числа от 1 до 100, которые делятся на 3
````
package main

import "fmt"

func main() {
    for i := 0; i < 100; i++ {
        if i % 3 == 0 {
           fmt.Println (i)
        }
     }
}
````