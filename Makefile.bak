CC=gcc
objects=obj/main.o obj/add.o obj/sub.o obj/mul.o obj/div.o
target=bin/main

$(target):$(objects)
	$(CC) -o $(target) $(objects)
obj/main.o:src/main.c
	$(CC) -o $@ -c $< -I  include
obj/add.o:src/add.c
	$(CC) -o $@ -c $<
obj/sub.o:src/sub.c
	$(CC) -o $@ -c $<
obj/mul.o:src/mul.c
	$(CC) -o $@ -c $<
obj/div.o:src/div.c
	$(CC) -o $@ -c $<
clean:
	rm -rf $(objects)