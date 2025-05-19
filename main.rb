def get_arguments
    return ARGV
end

def create_file(file_name, content)
    File.open(file_name, 'w') do |file|
        file.write(content)
    end
    puts "file created."
    exit 0
end

def create_folder(folder_name)
    Dir.mkdir(folder_name) unless Dir.exist?(folder_name)
    puts "folder created."
    exit 0
end

def delete_file(file_name)
    File.delete(file_name) if File.exist?(file_name)
    puts "file deleted."
    exit 0
end

def delete_folder(folder_name)
    Dir.rmdir(folder_name) if Dir.exist?(folder_name)
    puts "folder deleted."
    exit 0
end

def open_in_notepad(file_path)
    system("notepad #{file_path}")
    puts "opened in notepad."
    exit 0
end

# Parse arguments
def parse_arguments(arguments)
    # Check if argument length is valid
    if not arguments.length >= 2
        puts "Usage: ruby main.rb --create-file <file_name> <content>"
        puts "   or: ruby main.rb --create-folder <folder_name>"
        exit -1
    end

    # Parse arguments after shifting the first argument to lowercase
    case arguments[0].downcase
    # Create file
    when "--create-file"
        # Check if argument length is only a file name
        if arguments.length == 2
            create_file(arguments[1], "")
        # Check if argument length is a file name and content
        elsif arguments.length == 3
            create_file(arguments[1], arguments[2])
        else
            puts "Invalid argument"
            exit -1
        end
    # Create folder
    when "--create-folder"
        create_folder(arguments[1])
    # Delete file
    when "--delete-file"
        delete_file(arguments[1])
    # Delete folder
    when "--delete-folder"
        delete_folder(arguments[1])
    when "--edit-file"
        open_in_notepad(arguments[1])
    else
        # Invalid argument
        puts "Invalid argument"
        exit -1
    end
end

# Main function
def main
    # Get arguments
    arguments = get_arguments
    # Parse arguments
    parse_arguments arguments
end

main