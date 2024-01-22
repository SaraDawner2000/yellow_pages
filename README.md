#Yellow pages CLI app
This project will allow to create, update, print and clear a telephone number directory. The directory will only exist while the CLI is running, as I didn't implement file reading and writing functionality, but can be fairly easily updated to allow the directory to remain even after the app is exited. 
When accepting a new entry, the app checks if the phone number was entered in the correct US format (ten digits) and saves it in the form of "+1-(xxx)-xxx-xxxx" for easier readibility.
The current app accepts one string for the name and doesn't format it. The app can be updated to accept a first and last name and format them into a full name.
