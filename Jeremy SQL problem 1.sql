select Al_PolicyID, Po_PolicyNum, Po_ID, Po_CropYear 
from tblAccountingLetterHistory join tblPolicies
on tblAccountingLetterHistory.Al_PolicyID = tblPolicies.Po_ID
Group by Al_PolicyID, Po_PolicyNum, Po_CropYear, Po_ID
Having  Count (Al_Archived) > 1
