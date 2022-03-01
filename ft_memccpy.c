#include "libft.h"

void	*ft_memccpy(void *dest, const void *src, int c, size_t n)
{
	unsigned char	*s1;
	unsigned char	*s2;
	size_t			i;
	unsigned char	b;

	s1 = (unsigned char *)dest;
	s2 = (unsigned char *)src;
	b = (unsigned char)c;
	i = 0;
	while (n)
	{
		s1[i] = s2[i];
		if (s1[i] == b)
			return ((void *)(dest + i + 1));
		n--;
		i++;
	}
	return (NULL);
}
