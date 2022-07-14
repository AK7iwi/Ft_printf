/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_p.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfeldman <mfeldman@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/05 05:53:40 by mfeldman          #+#    #+#             */
/*   Updated: 2022/07/14 13:56:38 by mfeldman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_p(int b)
{
	char *base;
	base = "0123456789abcdef";
	
	if (b <= 15)
		ft_putchar_fd((base[b -(b % 16)]), 1);
	else if (b > 15)
	{
		ft_p(b / 16);
		ft_putchar_fd('0' + b % 16, 1);
	}
}


		
		
		
