#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	char	simb;
	char	*str;

	simb = (char)c;
	str = (char *)s;
	while (*str && *str != simb)
		str++;
	if (*str == simb)
		return (str);
	else
		return (NULL);
}
