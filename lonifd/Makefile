CC ?= gcc

TARGET := lonifd
SRC := lonifd.c

PREFIX ?= /usr/local
SBINDIR ?= $(PREFIX)/sbin

CFLAGS ?= -O2 -Wall -Wextra
CPPFLAGS += $(shell pkg-config --cflags libsystemd)
LDLIBS += $(shell pkg-config --libs libsystemd)

.PHONY: all clean debug install uninstall

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(SRC) -o $(TARGET) $(LDLIBS)

debug: CFLAGS := -O0 -g3 -Wall -Wextra
debug: clean $(TARGET)

install: $(TARGET)
	install -d $(DESTDIR)$(SBINDIR)
	install -m 0755 $(TARGET) $(DESTDIR)$(SBINDIR)/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(SBINDIR)/$(TARGET)

clean:
	rm -f $(TARGET)
