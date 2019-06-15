build:
	docker build -t rayyildiz/graalvm:latest .


test:
	docker run -v $$PWD:/src rayyildiz/graalvm:latest  javac HelloWorld.java
	docker run -v $$PWD:/src rayyildiz/graalvm:latest  native-image HelloWorld