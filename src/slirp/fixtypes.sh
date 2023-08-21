#!/bin/bash

# Replace u_int with unsigned int
find . -type f -name '*.c' -o -name '*.h' -o -name '*.cpp' | xargs sed -i 's/\bu_int\b/unsigned int/g'

# Replace u_int16_t with uint16_t
find . -type f -name '*.c' -o -name '*.h' -o -name '*.cpp' | xargs sed -i 's/\bu_int16_t\b/uint16_t/g'

# Replace u_int32_t with uint32_t
find . -type f -name '*.c' -o -name '*.h' -o -name '*.cpp' | xargs sed -i 's/\bu_int32_t\b/uint32_t/g'

# Replace u_char with unsigned char
find . -type f -name '*.c' -o -name '*.h' -o -name '*.cpp' | xargs sed -i 's/\bu_char\b/unsigned char/g'

echo "Replacement complete."

