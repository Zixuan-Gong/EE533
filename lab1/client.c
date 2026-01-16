#include <stdio.h>
#include <stdlib.h>     
#include <string.h>    
#include <strings.h>   
#include <unistd.h>     
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

void error(char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd, portno, n, num;

    struct sockaddr_in serv_addr;
    struct hostent *server;

    char buffer[256];
    if (argc < 3) {
       fprintf(stderr,"usage %s hostname port\n", argv[0]);
       exit(0);
    }
    portno = atoi(argv[2]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");
    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);
    serv_addr.sin_port = htons(portno);
    if (connect(sockfd,(struct sockaddr *)&serv_addr,sizeof(serv_addr)) < 0) 
        error("ERROR connecting");
        
    printf("Connected. Chat mode: you send first. Type quit to exit.\n ");
    
    num=0;
    while(1){
    bzero(buffer,256);
    num ++;
    if (!fgets(buffer, 255, stdin)) break;
    if (!strcmp(buffer, "quit\n") || !strcmp(buffer, "exit\n")) break;
    printf("Here is NO.%d message: %s", num, buffer);
    n = write(sockfd,buffer,strlen(buffer));
    if (n < 0) 
         error("ERROR writing to socket");
    bzero(buffer,256);
    n = read(sockfd,buffer,255);
    if (n < 0) 
         error("ERROR reading from socket");
    if(n==0) {printf("Server disconnected.\n"); break;}
    printf("Here is NO.%d message from server: %s", num, buffer);
    if (!strcmp(buffer, "quit\n") || !strcmp(buffer, "exit\n")) break;}
    close(sockfd);
    return 0;
}
