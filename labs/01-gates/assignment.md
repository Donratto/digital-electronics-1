# Lab 1: Filip Kounicky 230597


### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic functions](images/equations01.png)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions:

```vhdl
architecture dataflow of gates is
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
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

4. Screenshot with simulated EPWaveforms to confirm correctness of NAND and NOR functions:

![EPWaves of De Morgan's laws](images/EPWaves01.png)

### Distributive laws

1. First Distributive law:

   ![First Distributive law](images/distributive01.png "Logic equation of First Distributive law")

2. Second Distributive law:

   ![Second Distributive law](images/distributive02.png "Logic equation of Second Distributive law")

3. Listing of VHDL architecture from design file (`design.vhd`) for both functions:

```vhdl
architecture dataflow of gates is
begin
    f_D1_L_o <= (a_i and b_i) or (a_i and c_i); -- Distributive Law n. 1 left side
    f_D1_R_o <= a_i and (b_i or c_i);           -- Distributive Law n. 1 right side
    f_D2_L_o <= (a_i or b_i) and  (a_i or c_i); -- Distributive Law n. 2 left side
    f_D2_R_o <= a_i or (b_i and c_i);           -- Distributive Law n. 2 right side
end architecture dataflow;
```

4. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)_D1_L_o** | **f(c,b,a)_D1_R_o** | **f(c,b,a)_D2_L_o** | **f(c,b,a)_D2_R_o** |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 | 1 | 1 | 1 |

5. Screenshot with simulated time waveforms. 

   ![EPWaves of Distributive laws](images/EPWaves02.png)



#### ___Link to EDA Playground example with De Morgan's laws and Distributive laws:___

   [https://www.edaplayground.com/x/Fa85](https://www.edaplayground.com/x/Fa85 "De Morgan's laws")

   [https://www.edaplayground.com/x/D6u3](https://www.edaplayground.com/x/D6u3 "Distributive laws")
