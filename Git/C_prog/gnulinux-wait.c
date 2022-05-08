#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>

int main (int argc, char **argv) {
    void hijo(char* cmd);
    void padre(int pid);
    int pid;

    switch (pid = fork()) {
        case 0:
            hijo(*argv[1]);
            break;
        case -1:
            perror("Error al hacer fork");
            exit(1);
            break;
        default:
            padre(pid);
            break;
    }

    exit(0);

}

void hijo(char* cmd) {
    printf("Por correr: %s",cmd);
    execlp(cmd, cmd, (char*)0);
    perror("Error al hacer execlp");
    exit(3);
}

void padre(int pid) {
    int got_pid, status;

    while (got_pid = wait(&status)) {
            if (got_pid == pid) 
                break;
            if ((got_pid == -1) && ( errno  !=  EINTR )) {
                perror("wait pid");
            }
    }
}

