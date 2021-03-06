# This is the makefile that generates the executable

# Files to compile
FILES_C = linked-list.c extract-words.c red-black-tree.c hashutils.c strutils.c treeio.c menu.c graph.c

# Exectuable to generate
TARGET = practica4

# Compilation options
CFLAGS = -std=gnu99 -Wall -Werror -g

# Linker options
LFLAGS = -lm -lpthread

# There is no need to change the instructions below this
# line. Change if you really know what you are doing.

FILES_O = $(subst .c,.o,$(FILES_C))

$(TARGET): $(FILES_O) Makefile
	gcc $(FILES_O) -o $(TARGET) $(LFLAGS)

%.o: %.c Makefile
	gcc $(CFLAGS) -c $<

all: $(TARGET)

clean:
	/bin/rm $(FILES_O) $(TARGET)
