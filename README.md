# Yellow pages CLI app
## Basic functionality
This project will allow to create, update, print and clear a telephone number directory. The directory will only exist while the CLI is running, as no file reading and writing functionality was implemented.
To run app, run the "yellow_pages.rb" file from the terminal. Available commands will be printed to the console.
## Entries
When accepting a new entry, the app checks if the phone number was entered in the correct US format (ten digits), promts user until it is and saves it in the form of "+1-(xxx)-xxx-xxxx" for easier readibility.
The current app accepts one string for the name and doesn't format it.
There are currently no controls in place for entering the same name and/or phone number multiple times.
## Search
Search by name is case sensitive. Search by number promts the user for a number in the correct format. If the same name or phone number appears multiple times, the search method returns the first matched entry.
## Minitest
The current tests test how well the custom Entry class works and nothing else. I was unsure as to how to go about testing my overall program. The current tests allowed me to catch a formatting mistake in the way I recorded the phone number, though, so they are functional.
## Possible upgrades
### File reading and writing 
File reading and writing functionality can be implemented that would allow the directory to be preserved in between uses.
### First and last name
The app can be updated to accept a first and last name and format them into a full name. A somewhat more complicated upgrade would store the first and last name separately and allow for searching by first of last or full name.
### Duplicate entries
Controls can be put in place to check whether a phone number and/or name is already present in the entries array, prompting the user to update an existing entry and prohibiting the repeat entry of existing values.
### Search method upgrades
The search method can be changed to offer the user to a) optionally create an entry if the entry wasn't found, and b) optionally update the entry if the entry was found. If the "first and last name" upgrade is implemented, a way to output several entries when searched and selecting one of them would be required.
### Tests
Much more comprehensive testing can be implemented.
## Possible updates
### Stored phone number format
The entries array can store the phone numbers in the format entered. This would slighty simplify search, but make printing out the entry/entries slightly more difficult.
### App structure
The overall structure of the app can be adjusted. I created a file for every custom class, and a file exclusively for running the app. I am unsure as to how a ruby app should be separated into smaller chunks, but this was the system that, for this size of the program, helped me organize it.
