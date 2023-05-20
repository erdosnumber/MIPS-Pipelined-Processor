all: compile

compile: 5stage.cpp 5stage.hpp 5stage_bypass.cpp 5stage_bypass.hpp
	g++ 5stage.cpp -o 5stage
	g++ 5stage_bypass.cpp -o 5stage_bypass

run_5stage: 5stage.cpp 5stage.hpp
	./5stage input.asm

run_5stage_bypass: 5stage_bypass.cpp 5stage_bypass.hpp
	./5stage_bypass input.asm

clean:
	if [ -e 5stage ]; then rm -f 5stage; fi
	if [ -e 5stage_bypass ]; then rm -f 5stage_bypass; fi
