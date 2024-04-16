/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tecker <tecker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/10 20:17:09 by tomecker          #+#    #+#             */
/*   Updated: 2024/04/16 15:42:05 by tecker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	check(int i, int b)
{
	static int	result;

	if (b == 1)
		result = 1;
	if (i == -1 || result == -1)
		result = -1;
	else
		result = 1;
	return (result);
}
