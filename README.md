#i586-elf-gcc crosscompiler for Homebrew

This is a simple crosscompiler for my own OS project.

You can use it if you want, or contribute, but there's no guarantee it will work.

###Setup

Just clone this repository:
```
git clone https://github.com/ekuiter/homebrew-crosscompiler.git
```

and run the included build script:
```
./build
```

**What does this do?**

It compiles and installs a gcc compiler (currently **v4.8.0**) for the **i586-elf** platform, i.e. a 32-bit platform with ELF executable files.
As a dependency also the **i586-elf-binutils** are installed. The complete toolchain looks like this:
```
i586-elf-addr2line   i586-elf-gcc-4.8.0   i586-elf-objcopy
i586-elf-ar          i586-elf-gcc-ar      i586-elf-objdump
i586-elf-as          i586-elf-gcc-nm      i586-elf-ranlib
i586-elf-c++         i586-elf-gcc-ranlib  i586-elf-readelf
i586-elf-c++filt     i586-elf-gcov        i586-elf-size
i586-elf-cpp         i586-elf-gprof       i586-elf-strings
i586-elf-elfedit     i586-elf-ld          i586-elf-strip
i586-elf-g++         i586-elf-ld.bfd      
i586-elf-gcc         i586-elf-nm          
```

Additionally the emulator **bochs** with X11 debugger is installed (XQuartz required on Mac OS X).

(If you don't want to install bochs, just remove the respective line in the `build` file.)

Have fun!
