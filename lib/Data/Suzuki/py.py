import os

# Set the directory containing your .dart files
dart_files_dir = "Maintenance/"

# Iterate through all .dart files in the directory
for filename in os.listdir(dart_files_dir):
    if filename.endswith(".dart"):
        # Create the dynamic list name based on the filename
        base_filename = filename.replace('.dart', '')  # Remove the .dart extension
        list_name = f"SuzukiMaintenance{base_filename.capitalize()}"  # Dynamic list name

        # Read the content of the Dart file
        dart_file_path = os.path.join(dart_files_dir, filename)
        with open(dart_file_path, 'r') as dart_file:
            content = dart_file.read()

        # Modify the content inside the Dart file
        # Wrap the content in the desired Dart structure with the dynamic list name
        modified_content = f"List<Map<String, dynamic>> {list_name} = [\n{content}\n];"

        # Write the modified content back to the .dart file (overwrite)
        with open(dart_file_path, 'w') as dart_file:
            dart_file.write(modified_content)

        print(f"Modified content of {filename} with list name: {list_name}")

print("All Dart files modified successfully!")
