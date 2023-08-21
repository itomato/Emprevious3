import re

# Path to the file that needs modification
file_path = '/Users/wjk/Code/previous-code/src/slirp/socket.h'

# Read the content of the file
with open(file_path, 'r') as file:
    content = file.read()

# Perform replacements
content = content.replace('u_int8_t', 'uint8_t')
content = content.replace('u_int16_t', 'uint16_t')
content = content.replace('u_int32_t', 'uint32_t')
content = content.replace('u_int ', 'unsigned int ')
content = content.replace('u_char', 'unsigned char')

# Write the modified content back to the file
with open(file_path, 'w') as file:
    file.write(content)

print(f"Replacements done in {file_path}")

