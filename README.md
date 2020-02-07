[![language](https://img.shields.io/static/v1?label=language&message=4d&color=blue)](https://developer.4d.com/)
[![language](https://img.shields.io/github/languages/top/mesopelagique/formula_chain.svg)](https://developer.4d.com/)
![code-size](https://img.shields.io/github/languages/code-size/mesopelagique/formula_chain.svg)

# formula_chain

Create a new `Formula` from a collection of `Formula`.

Result of previous `Formula` computation is used as parameter for the next one. So you can chain multiple operation.

## Examples 

```4d
$formulas:=New collection(Formula($1+1);Formula($1+2)) // add one then add 2
$result:=formula_chain ($formulas).call(Null;0) // (0 + 1) + 2 = 3
```

```4d
$operation:=New object("compute";formula_chain ($col))
$result:=operation.compute(3)
```

more in [formula_chain](Documentation/Methods/formula_chain.md)
