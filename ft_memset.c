/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kosakats <kosakats@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/24 20:06:25 by kosakats          #+#    #+#             */
/*   Updated: 2024/11/08 21:06:53 by kosakats         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	size_t			i;
	unsigned char	*arr;

	arr = (unsigned char *)b;
	i = 0;
	while (i < len)
	{
		arr[i] = (unsigned char)c;
		i++;
	}
	return ((void *)arr);
}

// int	main(void)
// {
// 	char str1[] = "ABCDEFGHIJK";
// 	ft_memset(str1, '1', 3);
// 	printf("%s\n", str1);

// 	return (0);
// }