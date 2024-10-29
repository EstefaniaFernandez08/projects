### Setting Up the Virtual Environment for script Project Repository

To set up the virtual environment for this project:

1. **Navigate to the project directory.** 
```cd path_to_the_scripts_repository```
2. **Create virtual environment**.
```python3 -m venv venv```
3. **Activate the virtual environment.**
```source venv/brin/activate```
4. **Install the required dependencies using the requirements file.** 
```pip install -r requirements.txt```
5. **Update requirements.** 
```pip freeze > requirements.txt```
6. **Remove the existing venv directory.**
```rm -rf venv``` </br>
    - rm: This command stands for “remove.” It is used to delete files and directories in Unix-based systems like macOS and Linux.</br>
    - -r: This flag stands for “recursive.” It tells the rm command to delete directories and their contents, including all files and subdirectories inside.</br>
    - -f: This flag stands for “force.” It tells the rm command to remove files without prompting for confirmation, even if the files are write-protected.</br>

7. **Deactivate the virtual environment.**
```deactivate```
______________________________________________________________________________________________________

### Documenting nbconvert export commands

- PDF: ```jupyter nbconvert --to pdf notebook.ipynb```
- HTML: ```jupyter nbconvert --to html notebook.ipynb```
- Markdown: ```jupyter nbconvert --to markdown notebook.ipynb```
- Slides: ```jupyter nbconvert --to markdown notebook.ipynb```
- Python Script: ```jupyter nbconvert --to script notebook.ipynb```
______________________________________________________________________________________________________

### Markdown Formatting Tips:
- For **commands**, enclose them in triple backticks (```) to format them as code blocks.
- Use headings (`#`, `##`, `###`, etc.) to organize the document into sections.
- Use lists (`-` or `1.`) to structure steps clearly.
- Consider adding links to further resources or explanations as needed for more detailed sections.

______________________________________________________________________________________________________

### Basic HTML Elements Used for Table Creation

1.	<center>: Centers the content horizontally (used for headings).
2.	<h1>: Defines the main heading (adjust text size as needed, e.g., <h2>, <h3>).
3.	<div>: Creates a container for organizing and aligning elements.
4.	<table>: Defines the table structure.
5.	<tr>: Creates a table row.
6.	<th>: Defines a table header cell (used for column titles).
7.	<td>: Defines a standard table cell (used for content rows).
8.	style="": Inline CSS for custom styling like background color, padding, and text color.


