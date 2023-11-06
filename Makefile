clean:
	rm -rf out/build

build:
	cmake -S . -B out/build
	cd out/build && make
	cd ../../

run:
	./out/build/src/WargamingAcademyMinigame
