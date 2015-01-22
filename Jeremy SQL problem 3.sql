CREATE TABLE #MyResults (NumberofLetters int, Po_CropYear int);

Insert into #MyResults (NumberofLetters, Po_CropYear)
Select Count (*) as num, Po_CropYear
From tblAccountingLetterHistory join tblPolicies
on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
Group by Al_PolicyID, Po_CropYear

		

select Po_CropYear, NumberofLetters, COUNT (NumberofLetters) as Count from #MyResults 
Group by Po_CropYear, NumberofLetters
Order by Po_CropYear desc, NumberofLetters 



Drop table #MyResults