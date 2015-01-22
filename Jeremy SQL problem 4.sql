----CREATE TABLE #MyResults (NumberofLetters int, Po_CropYear int);

----Insert into #MyResults (NumberofLetters, Po_CropYear)
----Select Count (*) as num, Po_CropYear
----From tblAccountingLetterHistory join tblPolicies
----on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
----Group by Al_PolicyID, Po_CropYear

		

----select Po_CropYear, NumberofLetters, COUNT (NumberofLetters) as Count from #MyResults 
----Group by Po_CropYear, NumberofLetters
----Order by Po_CropYear desc, NumberofLetters 



----Drop table #MyResults

--CREATE TABLE #MyResults (NumberofLetters int, Po_CropYear int);

--Insert into #MyResults (NumberofLetters, Po_CropYear)
--Select Count (*) as num, Po_CropYear
--From tblAccountingLetterHistory join tblPolicies
--on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
--Group by Al_PolicyID, Po_CropYear

		

--select Po_CropYear, NumberofLetters, COUNT (NumberofLetters) as Count from #MyResults 
--Group by Po_CropYear, NumberofLetters
--Order by Po_CropYear desc, NumberofLetters 



--Drop table #MyResults

select Po_PolicyNum, Po_ID, Po_CropYear, Display, COUNT (Po_PolicyNum) as Count
from tblAccountingLetterHistory 
join tblPolicies on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
join tblCodeMaster on tblCodeMaster.CodeMasterID  = tblAccountingLetterHistory.Al_LetterTypeID 
Group by Al_PolicyID, Po_PolicyNum, Po_CropYear, Po_ID, Display
Having  Count (Al_Archived) > 1
Order by Al_PolicyID, Po_PolicyNum desc, Po_CropYear, Po_ID, Display

