CC = gcc
CFLAGS = -Wall -std=c99 -D_DEFAULT_SOURCE -Wno-missing-braces
INCLUDES = -I include/ -I /usr/local/include
LDFLAGS = -L/usr/local/lib -lraylib -lm -lpthread -ldl -lrt -lX11

SRCDIR = src
OBJDIR = obj

SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

TARGET = triangle

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

.PHONY: clean

clean:
	rm -rf $(OBJDIR) $(TARGET)
