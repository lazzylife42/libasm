#include <stdio.h>

// Prototype de la fonction assembleur
extern size_t ft_strlen(const char *str);

int main() {
    const char *test_str = "Hello, world!";
    size_t len = ft_strlen(test_str);

    printf("Length of string: %zu\n", len);
    return 0;
}
