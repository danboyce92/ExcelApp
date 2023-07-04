# The Plan

Create a Excel document to be used as an example.

## Work in fileReader file

_Done so far_
I have a script that can extract data from specific cells that can be provided by me.
I've created a few sample excel sheets to use to extract the data and push it into the master file.
_To be done_
Create a function that checks to see if the 1st cell of the Master file is empty.
If so, the function should copy all the cells in a column (Haven't discussed if excel sheets should go horizontally or vertically yet (Could it be programmed to do either?))

After the Master file has been populated with Keys:

Create a function that copies all the values (Just values, not keys too) from a Sample file and have them inserted to the Master file.
In this function use a loop to increment rows in the Master file until you enter a row that isn't populated with a previous document.
Then copy info into new row.
