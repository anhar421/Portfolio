# JSON Conversion Program for use with Qualtrics TextiQ

The Qualtrics survey platform provides many user-friendly solutions to creating and deploying custom surveys and analyzing the collected survey data. One of the tools they provide during the analysis stage is TextiQ. It is an inbuilt text analysis system for analyzing text data collected in the surveys. While Qualtrics makes building a TextiQ topic dictionary fairly easy within its software, it does not provide efficient options for scaling up a set topic dictionary for use across multiple surveys.

One option available is to upload a custom JSON topic dictionary to the TextiQ tool. The JSON file needs to be specifically formatted to work with TextiQ. My team needed a simple method to create our own base topic dictionary to use across all of our surveys. The easiest way for anyone on my team to do that is to edit an Excel spreadsheet. To make this work with TextiQ, I created a program that converts CSV documents into the appropriately formatted JSON file necessary for TextiQ. Now anyone can edit the Excel file, run it through the program, and create a useable JSON file.

### Tools
Python


### Data Sources
Custom CSV (see included CSV template)
