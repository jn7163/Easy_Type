CC := gcc
CFLAGES := -Wall -static
RM := del
MV := move

Easy_Type.exe hookdll_utf8_x32.dll: Easy_Type.c hookdll_utf8_x32.c
	$(CC) $(CFLAGES) -shared hookdll_utf8_x32.c -o hookdll_utf8_x32.dll -lcomdlg32
	$(CC) $(CFLAGES) $< -o Easy_Type.exe

.PHONY: clean release
clean:
	-$(RM) *.o
	-$(RM) *.d
