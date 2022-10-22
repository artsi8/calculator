#CXX := g++ #implicit variable
#automatic varriable
CC := g++ #implicit variable - лінкер встановлюється

calculator: main.o calculator.a 
#	$(CXX) $^ -o $@ #вбудоване правило make

#%.o: %.cpp #implicit pattern
#	$(CXX) -c $< -o $@

main.o: main.cpp calculator.h

calculator.o: calculator.cpp calculator.h

calculator.a: calculator.o
	$(AR) r $@ $^

.PHONY: clean
clean: 
	-rm *.o *.a calculator