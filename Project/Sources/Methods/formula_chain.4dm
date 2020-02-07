//%attributes = {}
C_COLLECTION:C1488($1;$col)
C_OBJECT:C1216($0)  // Formula
$col:=$1
If ($col=Null:C1517)
	$col:=New collection:C1472()
End if 
$0:=Formula:C1597($col.reduce("formula_chain_f";$1))
