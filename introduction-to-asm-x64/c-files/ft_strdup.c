#include <stdlib.h>

char	*ft_strdup(const char *s1)
{
	char	*ret;
	int		index;

	index = 0;
	while (s1[index])
		index++;
	ret = malloc(index + 1);
	index = 0;
	while (s1[index])
		ret[index] = s1[index];
	ret[index] = 0;
	return (ret);
}
