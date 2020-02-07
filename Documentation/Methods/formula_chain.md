<!-- formula_chain(formula, [formulas...]).call(inital value) -->
## Description

Chain multiple formula

```4d
$formulas:=New collection(Formula($1+1);Formula($1+2))
$result:=formula_chain ($formulas).call(Null;0) // (0 + 1) + 2 = 3
```

```4d
$formulas:=New collection(Formula($1+1);Formula($1+2);Formula(String($1)))
$result:=formula_chain ($formulas).call(Null;0) // String((0 + 1) + 2) = "3"
```
