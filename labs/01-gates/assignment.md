# Lab 1: Filip Kounicky 230597


### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic functions](images/equations01.png)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_org_o  <= (not(b_i) and a_i) or (not(c_i) and not(b_i));
    f_nand_o <= (((b_i nand b_i) nand a_i) nand ((c_i nand c_i) nand (b_i nand b_i)))
    f_nor_o  <= (b_i nor (a_i nor(c_i nor c_i)));
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)_ORG** | **f(c,b,a)_NAND** | **f(c,b,a)_NOR** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

4. Screenshot with simulated EPWaveforms to confirm correctness of NAND and NOR functions:

![EPWaves of De Morgan's Laws](images/EPWaves01.png)

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![EPWaves of Distributive Laws](images/EPWaves02.png)

2. Link to EDA Playground example:

   [https://www.edaplayground.com/x/Fa85](https://www.edaplayground.com/x/Fa85 "Link to EDA Playground")





___Test:___

   ![A](images/DeMorgansLaws01.svg "Test test TEST")