//%attributes = {}
var $entity : cs:C1710.Table_1Entity

For ($i; 1; 10)
	$entity:=ds:C1482.Table_1.new()
	
	$entity.Date:=Current date:C33-$i+1
	$entity.Number:=Random:C100
	
	$entity.save()
End for 