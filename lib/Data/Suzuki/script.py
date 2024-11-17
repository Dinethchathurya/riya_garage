import os

# Set the directory containing your .txt files
input_dir = "Maintenance/"
output_dir = "Maintenance/"

# Make sure the output directory exists
os.makedirs(output_dir, exist_ok=True)

# Iterate through all .txt files in the input directory
for filename in os.listdir(input_dir):
    if filename.endswith(".txt"):
        # Read the contents of the .txt file
        txt_file_path = os.path.join(input_dir, filename)
        with open(txt_file_path, 'r') as txt_file:
            content = txt_file.read()

        # Create a .dart file with the same name as the .txt file
        dart_filename = filename.replace('.txt', '.dart')
        dart_file_path = os.path.join(output_dir, dart_filename)
        with open(dart_file_path, 'w') as dart_file:
            # Write the content from the .txt file to the .dart file
            dart_file.write(content)

        # Delete the .txt file after creating the corresponding .dart file
        os.remove(txt_file_path)
        print(f"Converted {filename} to {dart_filename} and deleted {filename}")

print("All Dart files created, and .txt files deleted successfully!")
