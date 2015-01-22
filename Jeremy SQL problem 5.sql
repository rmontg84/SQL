select Po_PolicyNum, Po_ID, Po_CropYear, Display, COUNT (Po_PolicyNum) as Count, DATEDIFF(DAY, GETDATE(), SYSDATETIME());
from tblAccountingLetterHistory 
join tblPolicies on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
join tblCodeMaster on tblCodeMaster.CodeMasterID  = tblAccountingLetterHistory.Al_LetterTypeID 
Group by Al_PolicyID, Po_PolicyNum, Po_CropYear, Po_ID, Display, Al_GenerationDate
Having Al_GenerationDate >= '11/09/2014 12:00:01AM'
Order by Al_GenerationDate desc,Al_PolicyID, Po_PolicyNum, Po_CropYear, Po_ID, Display 

--select top 100 * from 
--tblAccountingLetterHistory 
--join tblPolicies on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
--join tblCodeMaster on tblCodeMaster.CodeMasterID  = tblAccountingLetterHistory.Al_LetterTypeID 
--ORDER BY Al_GenerationDate DESC
