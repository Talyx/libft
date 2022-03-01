#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*mem;
	size_t	len;

	len = nmemb * size;
	mem = malloc(len);
	if (mem)
		return (ft_memset(mem, 0, len));
	else
		return (mem);
}
