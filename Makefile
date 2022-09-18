 # File: Makefile
 # Author: Zachary Rose
 # Date Modified: 2022-09-18
 # Purpose: Makefile for building the Employee project executable

# Use the g++ compiler
CC = g++
# The executable name
TARGET = employee
# Compile with the debugger and all errors and warnings
CFLAGS = -g -Wall -Wextra

all:		$(TARGET)

$(TARGET):	main.o Employee.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o

main.o:		main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o:	Officer.cpp Officer.h Employee.h
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o:	Supervisor.cpp Supervisor.h Employee.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
	$(RM) *.o *~ $(TARGET)
