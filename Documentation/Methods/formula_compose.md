<!-- formula_compose(formula, [formulas...]).call(inital value) -->
## Description

Create a new `Formula` from a list of `Formula`.

![maths](https://latex.codecogs.com/png.latex?f%28x%29&space;\cdot&space;g%28y%29&space;\cdot&space;h%28z%29&space;\Leftrightarrow&space;h%28g%28f%28x%29%29%29)

Result of previous `Formula` computation is used as parameter for the next one. So you can chain multiple operations.

## Examples

```4d
$result:=formula_compose (Formula($1+1);Formula($1+2)).call(Null;0) // (0 + 1) + 2 = 3

// or using collection
$formulas:=New collection(Formula($1+1);Formula($1+2)) // add one then add 2
$result:=formula_compose ($formulas).call(Null;0) // (0 + 1) + 2 = 3
```

```4d
$result:=formula_compose (Formula($1+1);Formula($1+2);Formala(String($1))).call(Null;0) // String((0 + 1) + 2) = "3"
```

### Assigning to an object

```4d
$operation:=New object("compute";formula_compose ($formulas))
$result:=$operation.compute(3) // (3 + 1) + 2 = 5
```
