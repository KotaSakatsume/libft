# Libft

This project is a recreation of some of the standard C library functions, as well as some additional useful ones. This is a common project for students at 42 schools.

## Compilation

To compile the library, run `make`:

```bash
make
```

This will create a static library file named `libft.a`.

You can also create a shared library (`.so`) using the `so` rule:
```bash
make so
```

### Other `make` rules:
- `clean`: Removes the object files (`.o`).
- `fclean`: Removes the object files and the library file (`libft.a`).
- `re`: Re-compiles the library from scratch (`fclean` + `all`).

## Usage

To use the functions in your C project, include the header file `libft.h` and compile your project with the created library file `libft.a`.

Example:
```c
#include "libft.h"

int main(void)
{
    ft_putstr_fd("Hello, world!\n", 1);
    return (0);
}
```

Compilation command:
```bash
cc your_file.c -L. -lft -o your_executable
```

## Implemented Functions

Here is a list of the functions implemented in this library.

### Memory Functions
| Function | Description |
| :--- | :--- |
| `ft_memset` | Fills a block of memory with a specified value. |
| `ft_bzero` | Erases a block of memory by setting all its bytes to zero. |
| `ft_memcpy` | Copies a block of memory from a source to a destination. |
| `ft_memmove` | Copies a block of memory, handling overlapping areas correctly. |
| `ft_memchr` | Scans a block of memory for the first occurrence of a character. |
| `ft_memcmp` | Compares two blocks of memory. |
| `ft_calloc` | Allocates memory for an array of elements and initializes them to zero. |

### String Manipulation Functions
| Function | Description |
| :--- | :--- |
| `ft_strlen` | Calculates the length of a string. |
| `ft_strlcpy` | Copies a string to a buffer with size checking. |
| `ft_strlcat` | Concatenates a string to a buffer with size checking. |
| `ft_strchr` | Locates the first occurrence of a character in a string. |
| `ft_strrchr` | Locates the last occurrence of a character in a string. |
| `ft_strnstr` | Locates a substring within a string (up to a certain length). |
| `ft_strncmp` | Compares two strings up to a certain length. |
| `ft_strdup` | Duplicates a string by allocating new memory. |
| `ft_substr` | Creates a substring from a given string. |
| `ft_strjoin` | Concatenates two strings into a new string. |
| `ft_strtrim` | Trims leading and trailing characters from a string. |
| `ft_split` | Splits a string into an array of substrings based on a delimiter. |
| `ft_strmapi` | Applies a function to each character of a string to create a new string. |
| `ft_striteri` | Applies a function to each character of a string. |

### Character Classification and Conversion
| Function | Description |
| :--- | :--- |
| `ft_isalpha` | Checks if a character is an alphabet letter. |
| `ft_isdigit` | Checks if a character is a digit. |
| `ft_isalnum` | Checks if a character is alphanumeric. |
| `ft_isascii` | Checks if a character is within the ASCII range. |
| `ft_isprint` | Checks if a character is printable. |
| `ft_toupper` | Converts a lowercase letter to uppercase. |
| `ft_tolower` | Converts an uppercase letter to lowercase. |

### Number Conversion
| Function | Description |
| :--- | :--- |
| `ft_atoi` | Converts a string to an integer. |
| `ft_itoa` | Converts an integer to a string. |

### File Descriptor Output Functions
| Function | Description |
| :--- | :--- |
| `ft_putchar_fd` | Outputs a character to a given file descriptor. |
| `ft_putstr_fd` | Outputs a string to a given file descriptor. |
| `ft_putendl_fd` | Outputs a string followed by a newline to a given file descriptor. |
| `ft_putnbr_fd` | Outputs an integer to a given file descriptor. |

```