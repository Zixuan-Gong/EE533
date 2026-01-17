/* A simple server in the internet domain using TCP
   The port number is passed as an argument */
#include <stdio.h>
#include <stdlib.h>     
#include <strings.h>   
#include <unistd.h>    
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <signal.h>
#include <sys/wait.h>
#include <arpa/inet.h>

void error(char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno, clilen, num, conn_id = 0;
     char buffer[256];
     struct sockaddr_in serv_addr, cli_addr;
     int n;
     if (argc < 2) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
     sockfd = socket(AF_INET, SOCK_STREAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = atoi(argv[1]);
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding");
     listen(sockfd,5);
     signal(SIGCHLD, SIG_IGN);
     
     while (1){
    
     clilen = sizeof(cli_addr);
     newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
     if (newsockfd < 0) 
          error("ERROR on accept");
     conn_id++;
     pid_t pid =fork();
     if (pid <0 ) error("ERROR on fork");
     if (pid ==0) {
     close (sockfd);
     num = 0;
     while (1){
     bzero(buffer,256);
     n = read(newsockfd,buffer,255);
     if (n < 0) error("ERROR reading from socket");
     if (n==0) {printf("[conn=%d]Client disconnected.\n",conn_id); break;}
     buffer[n] = '\0';
     num ++;
     printf("[conn=%d]Here is NO.%d message from client: %s\n", conn_id,num, buffer);
     if (!strcmp(buffer, "quit\n") || !strcmp(buffer, "exit\n")) break;
     n = write(newsockfd,"I got your message\n",18);
     if (n < 0) error("ERROR writing to socket");
     if (!strcmp(buffer, "quit\n") || !strcmp(buffer, "exit\n")) break;}
     
     close(newsockfd);
     exit(0);}else{close(newsockfd);}}
     return 0; 
}
