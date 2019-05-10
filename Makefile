build:
	docker build -t rayyildiz/graalvm:19.0.0 .


test:
	docker run -v $$PWD:/src rayyildiz/graalvm:19.0.0  javac HelloWorld.java
	docker run -v $$PWD:/src rayyildiz/graalvm:19.0.0  native-image HelloWorld