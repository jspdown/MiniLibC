
int	my_strlen(char *);
char	*my_strchr(char*, int);

int	main()
{
  /*  strlen  */
  printf("size = %d\n", my_strlen("lolilol\n"));

  /*  strchr  */
  char *ptr = my_strchr("CouCou", 'o');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("NULL ptr");
  ptr = my_strchr("Coucou", 'u');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("NULL ptr");
  ptr = my_strchr("Coucou", 'z');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("NULL ptr");
  ptr = my_strchr("Coucou", '\0');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("NULL ptr");

  return (0);
}
