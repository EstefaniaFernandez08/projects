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


