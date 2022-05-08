# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>


int main (int argc, char **argv) {
    void runit(char*);
    int pid;

    switch (pid = fork()) {
        case 0:
            runit(argv[1]);
            break;
        case -1:
            perror("No se pudo realizar el fork");
            exit(1);
            break;
        default:
            sleep(5);
            printf("Soy el padre de %d",pid);
            break;
    }
    exit(0);
}


void runit(char *cmd) {
    printf("Comando a correr %s",cmd);
    execlp(cmd,cmd,(char*)0);
    perror("Error al realizar el execlp");
    exit(2);
}
