//%attributes = {}
C_VARIANT:C1683(${1})
C_OBJECT:C1216($0;$result)  // Formula

C_LONGINT:C283($count)
$count:=Count parameters:C259

Case of 
	: ($count=0)  // Identity formula
		$result:=Formula:C1597($1)
	: ($count=1)  // COLLECTION formula
		
		Case of 
			: (Value type:C1509($1)=Is collection:K8:32)
				C_COLLECTION:C1488($col)
				$col:=$1
				If ($col=Null:C1517)
					$col:=New collection:C1472()
				End if 
				$result:=Formula:C1597($col.reduce("formula_compose_f";$1))
				
			: (Value type:C1509($1)=Is object:K8:27)
				$result:=$1
				
			Else 
				ASSERT:C1129(False:C215;"Formula compose first parameter must be collection if only one object")
				$result:=Formula:C1597($1)
		End case 
		
	Else   // VAR args formula
		
		$col:=New collection:C1472()
		C_LONGINT:C283($index)
		For ($index;1;$count;1)
			If (Value type:C1509(${$index})=Is object:K8:27)  // is formula?
				$col.push(${$index})
			End if 
		End for 
		
		$result:=Formula:C1597($col.reduce("formula_compose_f";$1))
		
End case 

  // Return
$0:=$result