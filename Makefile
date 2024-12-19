# Compiler and flags
CC = clang
CFLAGS = -Wall -Wextra -Wpedantic -g
LDFLAGS = -lcrypto -lz

# Target executable names
SENDER = sender

# Source files
SENDER_SRC = sender.c

# Build all targets
all: $(SENDER)

# Build the SENDER
$(SENDER): $(SENDER_SRC)
	$(CC) $(CFLAGS) -o $(SENDER) $(SENDER_SRC) $(LDFLAGS)

# Clean up generated files
clean:
	rm -f $(SENDER)