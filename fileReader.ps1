$filePath = "C:\Users\Daniel\Documents\Sample.xlsx"
$masterPath = "C:\Users\Daniel\Documents\Visual studio code\ExcelApp\Excel files\master.xlsx"

# Create Excel application object
$excel = New-Object -ComObject Excel.Application

# Open the Excel workbook
$workbook = $excel.Workbooks.Open($filePath)

# Select the worksheet
$worksheet = $workbook.Worksheets.Item(1)  # Assuming the first worksheet

# Get the value from the specified cell (2nd column, 2nd row)
$cell = $worksheet.Cells.Item(3, 2)
$cellValue = $cell.Value()

#Function to check if MasterFile first row is empty or not
Function masterCheck {
  $i = 1
  $global:checker = "unpopulated"  # Use global scope for $checker variable

  while ($i -le 5) {
    if ($null -eq $worksheet.Cells.Item($i, 1)) {
      # Check for null value

    }
    else {
      $global:checker = "populated"  # Update global $checker variable
      break
    }

    if ($checker -eq "unpopulated") {
      #Logic for extracting document key layout for Master file
      
    }
    
    $i++
  }
}



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


