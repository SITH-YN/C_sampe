.PHONY: clean

clean:
	rm -f FizzBuzz

FizzBuzz: FizzBuzz.c
  gcc -o FizzBuzz FizzBuzz.c
