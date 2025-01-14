CC = gcc
COMPILER_FLAGS = -Wall

CSRC = *.c

ifeq ($(debug),1)
   COMPILER_FLAGS += -g
else
   COMPILER_FLAGS += -Werror -O2
endif

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lgmp

#OBJ_NAME specifies the name of our exectuable
BIN_NAME = persistence

#This is the target that compiles our executable
all : $(CSRC)
	$(CC) $(CSRC) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(BIN_NAME)
