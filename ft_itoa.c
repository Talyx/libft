#include "libft.h"

static int	ft_len(long nbr)
{
	int	i;

	i = 0;
	while (nbr)
	{
		i++;
		nbr = nbr / 10;
	}
	return (i);
}

char	*ft_itoa(int n)
{
	long	nbr;
	int		len;
	char	*str;

	nbr = n;
	len = 0;
	if (n < 0)
		len = 1;
	if (nbr < 0)
		nbr = nbr * -1;
	len += ft_len(nbr);
	str = (char *)malloc(sizeof(char) * (len + 1));
	if (!str)
		return (NULL);
	str[len--] = '\0';
	while (nbr > 0)
	{
		str[len--] = (nbr % 10) + '0';
		nbr = nbr / 10;
	}
	if (len == 0 && str[1] == '\0')
		str[0] = '0';
	else if (len == 0 && str[1] != '\0')
		str[0] = '-';
	return (str);
}
