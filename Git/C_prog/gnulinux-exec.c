# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>

int main (int argc, char **argv) {
    char *args[] = {"ls", "-aF", "/", 0};
    char *env[] = { 0 };

    printf ("A punto de correr otro comando\n");
    execve("/bin/ls", args, env);
    perror ("Si este mensaje se ve es porque no hubo un error al exec\n");
    exit (1);
}
