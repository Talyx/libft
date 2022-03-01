#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	unsigned char		*s1;
	unsigned char		*s2;
	size_t				i;

	s1 = (unsigned char *)dst;
	s2 = (unsigned char *)src;
	i = 0;
	if (dst == src)
		return (dst);
	while (n > 0)
	{
		s1[i] = s2[i];
		i++;
		n--;
	}
	return (dst);
}
