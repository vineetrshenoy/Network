CC = gcc
CFLAGS = -Wall -g
OBJS = server.o client.o

server: $(OBJS)
	$(CC) -g -o server server.o client.o

client.o: client.c network.h
	$(CC) -c -g client.c

server.o: server.c network.h
	$(CC) -c -g server.c


clean:
	rm server *.o