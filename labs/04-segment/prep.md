### Preparation

1. Schematic of Nexys A7 board with 7-segment display
>![im](/labs/03-vivado/images/n4r.png)

2.  Complete the decoder truth table for **common anode** 7-segment display.

>   | **Hex** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** |
>   | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
>   | 0 | 0000 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
>   | 1 | 0001 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
>   | 2 | 0010 | 0 | 0 | 1 | 0 | 0 | 1 | 0 |
>   | 3 | 0011 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
>   | 4 | 0100 | 1 | 0 | 0 | 1 | 1 | 0 | 0 |
>   | 5 | 0101 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
>   | 6 | 0110 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
>   | 7 | 0111 | 0 | 0 | 0 | 1 | 1 | 1 | 1 |
>   | 8 | 1000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
>   | 9 | 1001 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
>   | A | 1010 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
>   | b | 1011 | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
>   | C | 1100 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
>   | d | 1101 | 1 | 0 | 0 | 0 | 0 | 1 | 0 |
>   | E | 1110 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
>   | F | 1111 | 0 | 1 | 1 | 1 | 0 | 0 | 0 |


## Experiments on your own

1. Complete the truth table for LEDs according to comments in source code above.

  > | **Hex** | **Inputs** | **LED4** | **LED5** | **LED6** | **LED7** |
  > | :-: | :-: | :-: | :-: | :-: | :-: |
  > | 0 | 0000 | 1 | 0 | 0 | 0 |
  > | 1 | 0001 | 0 | 0 | 1 | 1 |
  > | 2 | 0010 | 0 | 0 | 0 | 1 |
  > | 3 | 0011 | 0 | 0 | 1 | 0 |
  > | 4 | 0100 | 0 | 0 | 0 | 1 |
  > | 5 | 0101 | 0 | 0 | 1 | 0 |
  > | 6 | 0110 | 0 | 0 | 0 | 1 |
  > | 7 | 0111 | 0 | 0 | 1 | 0 |
  > | 8 | 1000 | 0 | 0 | 0 | 1 |
  > | 9 | 1001 | 0 | 0 | 1 | 0 |
  > | A | 1010 | 0 | 1 | 0 | 1 |
  > | b | 1011 | 0 | 1 | 1 | 0 |
  > | C | 1100 | 0 | 1 | 0 | 1 |
  > | d | 1101 | 0 | 1 | 1 | 0 |
  > | E | 1110 | 0 | 1 | 0 | 1 |
  > | F | 1111 | 0 | 1 | 1 | 0 |

2. Use VHDL construction `when`-`else` or low-level gates `and`, `or`, and `not` and write logic functions for LED(7:4) indicators in the simplest way possible.

