CFLAGS = -Wall -Wextra -pedantic -ansi -O2
CC = gcc
BASE = main_code
BASE2 = helper
EXECS = main_ex

all: main_ex run

main_ex : $(BASE).c $(BASE).h $(BASE2).c $(BASE2).h
	$(CC) $(BASE).c $(BASE2).c $(CFLAGS) -o $@

run : $(EXECS)
	./$(EXECS)

clean :
	rm $(EXECS)
