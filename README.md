# Yellow pages CLI app
## Basic functionality
This project will allow to create, update, print and clear a telephone number directory. The directory will only exist while the CLI is running, as I didn't implement file reading and writing functionality. but can be fairly easily updated to allow the directory to remain even after the app is exited. 
## Entries
When accepting a new entry, the app checks if the phone number was entered in the correct US format (ten digits), promts user until it is and saves it in the form of "+1-(xxx)-xxx-xxxx" for easier readibility.
The current app accepts one string for the name and doesn't format it.
There are currently no controls in place for entering the same name and/or phone number multiple times.
## Search
Search by name is case sensitive. Search by number promts the user for a number in the correct format. If the same name or phone number appears multiple times, the search method returns the first matched entry.

## Possible upgrades
File reading and writing functionality can be implemented that would allow the directory to be preserved in between uses.
The app can be updated to accept a first and last name and format them into a full name. A somewhat more complicated update would store the first and last name separately and allow for searching by first of last or full name.
Controls can be put in place to check whether a phone number and/or name is already present in the entries array, prompting the user to update an existing entry and prohibiting the repeat entry of existing values.
The search method can be changed to offer the user to a) optionally create an entry if the entry wasn't found, and b) optionally update the entry if the entry was found. If the "first and last name" upgrade is implemented, a mechanism for selecting one of several discovered entries would be required. A way to output several entries when searched would be necessary.

## Possible updates
The entries array can store the phone numbers in the format entered. This would slighty simplify search, but make printing out the entry/entries slightly more difficult.
The overall structure of the app can be adjusted. I created a file for every custom class, and a file exclusively for running the app. I am unsure as to how a ruby app should be separated into smaller chunks, but this was the system that, for this size of the program, helped me organize it.
