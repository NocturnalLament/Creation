# File and Folder Manager

A simple command-line tool written in Ruby to manage files and folders. This tool allows you to create files, create folders, delete files, delete folders, and open files in Notepad.

## Features

- **Create File:** Create a new file with optional content.
- **Create Folder:** Create a new folder.
- **Delete File:** Delete an existing file.
- **Delete Folder:** Delete an existing folder.
- **Edit File:** Open a file in Notepad for editing.

## Usage

```bash
ruby main.rb --create-file <file_name> [content]
ruby main.rb --create-folder <folder_name>
ruby main.rb --delete-file <file_name>
ruby main.rb --delete-folder <folder_name>
ruby main.rb --edit-file <file_name>
```

### Examples

- Create a file:
  ```bash
  ruby main.rb --create-file example.txt "Hello, World!"
  ```

- Create a folder:
  ```bash
  ruby main.rb --create-folder my_folder
  ```

- Delete a file:
  ```bash
  ruby main.rb --delete-file example.txt
  ```

- Delete a folder:
  ```bash
  ruby main.rb --delete-folder my_folder
  ```

- Edit a file in Notepad:
  ```bash
  ruby main.rb --edit-file example.txt
  ```

## Requirements

- Ruby (version 2.0 or higher)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/nocturnallament/creation
   ```

2. Navigate to the project directory:
   ```bash
   cd file-folder-manager
   ```

3. Run the script:
   ```bash
   ruby main.rb --create-file example.txt "Hello, World!"
   ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
