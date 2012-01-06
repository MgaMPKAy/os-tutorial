SOURCES=boot.o main.o

CFLAGS=-nostdlib -nostdinc -fno-builtin -fno-stack-protector -m32
LDFLAGS=-Tlink.ld
LDEMULATION=elf_i386
TARGET=elf32-i386
ASFLAGS=-felf

all: $(SOURCES) link

clean:
	-rm *.o kernel

link:
	ld -m $(LDEMULATION) $(LDFLAGS) -o kernel -b $(TARGET) $(SOURCES)

.s.o:
	nasm $(ASFLAGS) $<