#include "libft.h"

int	ft_atoi(const char *nptr)
{
	unsigned long	n;
	unsigned long	max;
	int				i;
	int				sign;

	i = 0;
	n = 0;
	max = 2147483647;
	sign = 1;
	while (ft_isspace(nptr[i]))
		i++;
	if (nptr[i] == '-')
		sign = -1;
	if (nptr[i] == '-' || nptr[i] == '+')
		i++;
	while (ft_isdigit(nptr[i]))
	{
		if (n > max && sign == 1)
			return (0);
		else if (n > max + 1 && sign == -1)
			return (0);
		n = n * 10 + (nptr[i++] - '0');
	}
	return ((int)(n * sign));
}
