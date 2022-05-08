# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>

int main (int argc, char **argv) {
    char *cmd = argv[0];
    char *cmd2 = argv[1];
    printf ("A punto de correr el comando %s\n", cmd2);
    execlp(cmd2, cmd2,(char*)0);
    perror ("Si este mensaje se ve es porque no hubo un error al exec\n");
    exit (1);
}
