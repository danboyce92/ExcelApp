# Create Excel application object
$excel = New-Object -ComObject Excel.Application

# Open the Excel workbook
$workbook = $excel.Workbooks.Open("C:\Users\Daniel\Documents\Sample.xlsx")

# Select the worksheet
$worksheet = $workbook.Worksheets.Item(1)  # Assuming the first worksheet

# Get the value from the specified cell (2nd column, 2nd row)
$cell = $worksheet.Cells.Item(3, 2)
$cellValue = $cell.Value()

# Close the workbook and quit Excel
$workbook.Close()
$excel.Quit()

# Release the COM objects from memory
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($cell) | Out-Null
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($worksheet) | Out-Null
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($workbook) | Out-Null
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null
[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()

# Display the retrieved value
Write-Host "The value in the specified cell is: $cellValue"


