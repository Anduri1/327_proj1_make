#target exe
myexe: main.o myfunc.o
  g++ $(CFLAGS) -o myexe main.o myfunc.o
  
main.o: main.cpp myfunc.h
  g++ $(CFLAGS) -c mian.cpp
  
myfunc.cpp: myfunc.cpp myfunc.h
  g++ $(CFLAGS) -c myfunc.cpp

clean:
  rm -f *.0 myexe.exe
  rm myexe
