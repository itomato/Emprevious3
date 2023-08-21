import os
import re

def replace_types_in_file(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Perform replacements
    content = content.replace('u_int8_t', 'uint8_t')
    content = content.replace('u_int16_t', 'uint16_t')
    content = content.replace('u_int32_t', 'uint32_t')
    content = content.replace('u_char', 'unsigned char')
    content = re.sub(r'\bu_int\b', 'unsigned int', content)

    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.write(content)

    print(f"Replacements done in {file_path}")

def replace_types_in_directory(directory):
    for subdir, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".h") or filename.endswith(".cpp"):
                file_path = os.path.join(subdir, filename)
                replace_types_in_file(file_path)

# Directory paths containing the code
directory_paths = [
    '/Users/wjk/Code/previous-code/src/slirp',
    '/Users/wjk/Code/previous-code/src/ditool'
]

# Replace types in the entire directories
for directory_path in directory_paths:
    replace_types_in_directory(directory_path)
