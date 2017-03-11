main.bin:main.c
	sdcc main.c --opt-code-speed
	packihx main.ihx > main.hex
	objcopy -I ihex -O binary main.hex main.bin

install:
	sudo stcflash main.bin

clean:
	rm main.asm main.bin main.hex main.ihx main.lk main.lst main.map main.mem main.rel main.rst main.sym
