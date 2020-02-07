# formula_chain

Chained formula executions using a collection of formula

```4d
$formulas:=New collection(Formula($1+1);Formula($1+2))
$result:=formula_chain ($formulas).call(Null;0) // (0 + 1) + 2 = 3
```

more in [formula_chain](Documentation/Methods/formula_chain.md)
