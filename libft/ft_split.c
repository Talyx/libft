#include "libft.h"

static int	ft_word_count(char const *s, char c)
{
	int	count;
	int	i;

	i = 0;
	count = 0;
	while (s[i])
	{
		if (s[i] == c)
			i++;
		else
		{
			count++;
			while (s[i] && s[i] != c)
				i++;
		}
	}
	return (count);
}

static char	**ft_leak(char **arr)
{
	int	i;

	i = 0;
	while (arr[i])
	{
		free(arr[i]);
		i++;
	}
	free(arr);
	return (NULL);
}

static int	ft_word_len(char const *s, char c)
{
	int	i;

	i = 0;
	while (s[i] != '\0' && s[i] != c)
		i++;
	return (i);
}

char	**ft_split(char const *s, char c)
{
	char	**array;
	int		j;
	int		word_c;

	if (!s)
		return (NULL);
	j = 0;
	word_c = ft_word_count(s, c);
	array = (char **)malloc(sizeof(char *) * (word_c + 1));
	if (!array)
		return (NULL);
	while (j < word_c)
	{
		while (*s == c)
			s++;
		array[j++] = ft_substr(s, 0, ft_word_len(s, c));
		if (!(array[j - 1]))
			return (ft_leak(array));
		while (*s != c && *s)
			s++;
	}
	array[j] = NULL;
	return (array);
}
