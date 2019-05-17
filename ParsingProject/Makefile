calculator: y.tab.c
	gcc -o calculator y.tab.c -lm

y.tab.c: calculator.y
	yacc calculator.y

clean:
	rm -f *.o
	rm y.tab.c
