CREATE TABLE #MyResults (NumberofLetters int);

Insert into #MyResults (NumberofLetters)
Select Count (*) as num
From tblAccountingLetterHistory join tblPolicies
on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
Group by Al_PolicyID

		

select NumberofLetters, COUNT (NumberofLetters) as Count from #MyResults 
Group by NumberofLetters
Order by NumberofLetters


Drop table #MyResults

--Written as an expression
--Select * from
--(
--Select Count (*) as num
--From tblAccountingLetterHistory join tblPolicies
--on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
--Group by Al_PolicyID
--) as MyResults
		
--select * from
--(
--select * from
--(select * from
--select NumberofLetters, COUNT (NumberofLetters) as Count from #MyResults 
--Group by NumberofLetters
--Order by NumberofLetters







