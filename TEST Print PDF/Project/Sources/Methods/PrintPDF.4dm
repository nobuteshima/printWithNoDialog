//%attributes = {}
//requires v20 or higher to print data via Form command

var $folder : 4D:C1709.Folder
var $entity : cs:C1710.Table_1Entity

$folder:=Folder:C1567(fk resources folder:K87:11)

$formName:="PrintDetail"

$time6digit:=String:C10(Current time:C178; HH MM SS:K7:1)
$dateTime12digit:=Substring:C12(String:C10(Year of:C25(Current date:C33)); 3; 2)+String:C10(Month of:C24(Current date:C33); "00")+String:C10(Day of:C23(Current date:C33); "00")+"_"+Substring:C12($time6digit; 1; 2)+Substring:C12($time6digit; 4; 2)+Substring:C12($time6digit; 7; 2)
$file:=$folder.file($dateTime12digit+$formName+".pdf")

$entity:=ds:C1482.Table_1.all().first()
$object:=New object:C1471("data"; $entity)

SET PRINT PREVIEW:C364(False:C215)
SET CURRENT PRINTER:C787(Generic PDF driver:K47:15)

If (Is macOS:C1572)
	SET PRINT OPTION:C733(Destination option:K47:7; 3; $file.platformPath)
Else 
	SET PRINT OPTION:C733(Destination option:K47:7; 2; $file.platformPath)
End if 

SET PRINT OPTION:C733(Spooler document name option:K47:10; $file.fullName)

OPEN PRINTING JOB:C995
$h:=Print form:C5($formName; $object)
CLOSE PRINTING JOB:C996

SHOW ON DISK:C922($file.platformPath)

//If (Is macOS)
//SET PRINT OPTION(Destination option; 3; $file.platformPath)
//Else 
//SET PRINT OPTION(Destination option; 2; $file.platformPath)
//End if 
