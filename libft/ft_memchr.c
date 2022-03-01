#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*str;
	unsigned char	b;
	size_t			i;

	str = (unsigned char *)s;
	b = (unsigned char)c;
	i = 0;
	while (n)
	{
		if (str[i] == b)
			return ((void *)(s + i));
		i++;
		n--;
	}
	return (NULL);
}
