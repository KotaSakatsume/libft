/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kosakats <kosakats@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/07 10:32:39 by kosakats          #+#    #+#             */
/*   Updated: 2024/11/10 16:20:07 by kosakats         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	return (ft_substr(s1, 0, ft_strlen((char *)s1)));
}
/*
int	main(void)
{
	const char	*str1 = "Hello, World!";
	char		*str2;

	str2 = ft_strdup(str1);
	if (str2)
	{
		printf("%s\n", str1);
		printf("%s\n", str2);
		free(str2);
	}
	return (0);
}
*/