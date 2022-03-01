#include "libft.h"

char	*ft_strrchr(const char *str, int ch)
{
	char	simb;
	char	*str1;

	simb = (char)ch;
	str1 = (char *)str + ft_strlen(str);
	while (str1 >= str)
	{
		if (*str1 == simb)
			return (str1);
		str1--;
	}
	return (NULL);
}
