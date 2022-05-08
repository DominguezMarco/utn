# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>

int main (int argc, char **args) {
    int pid; 

    switch (pid = fork()) {
    case 0:
        printf("Soy el hijo PID: %d\n", getpid());
        break;
    case -1: 
        printf("Hubo un error en el fork");
        exit (1);
        break;
    default: 
        printf("Soy el padre PID: %d, mi hijo PID: %d\n", getpid(),pid);
        break;
    }

exit (0);
}
