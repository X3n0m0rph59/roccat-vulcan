src = $(wildcard *.c)
obj = $(src:.c=.o)

NAME    := roccat-vulcan
BINDIR  := /usr/bin
UDEVDIR := /etc/udev/rules.d
CFLAGS   = -O2 -I/usr/include/libevdev-1.0
LDFLAGS  = -O2 -levdev -lhidapi-libusb -ludev

.PHONY: all
all: $(NAME)
$(NAME): $(obj)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

install:
	mkdir -p ${DESTDIR}${BINDIR}
	cp $(NAME) ${DESTDIR}${BINDIR}/
	mkdir -p ${DESTDIR}${UDEVDIR}
	cp *.rules ${DESTDIR}${UDEVDIR}/

.PHONY: clean
clean:
	rm -f $(obj) $(NAME)
