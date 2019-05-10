GraalVM
===

[![](https://images.microbadger.com/badges/image/rayyildiz/graalvm.svg)](https://microbadger.com/images/rayyildiz/graalvm "GraalVM") [![Docker Pulls](https://img.shields.io/docker/pulls/rayyildiz/graalvm.svg)](https://hub.docker.com/r/rayyildiz/graalvm/) [![GitHub license](https://img.shields.io/github/license/rayyildiz/docker-graalvm.svg)](https://github.com/rayyildiz/docker-graalvm/blob/master/LICENSE)


GraalVM Community Edition. [More info](https://hub.docker.com/r/rayyildiz/graalvm/)

Link: https://hub.docker.com/r/rayyildiz/graalvm/

Current java : Latest version : **19.0.0**

Tags:

* 1.0.0-rc1
* 1.0.0-rc2
* 1.0.0-rc5
* 1.0.0-rc6
* 1.0.0-rc7
* 1.0.0-rc15
* 19.0.0
* latest ( **19.0.0** )


Usage
===


Print java version: ```docker run rayyildiz/graalvm java -version```

Compile Java file ```docker run rayyildiz/graalvm javac HelloWorld.java```


Run Java file ```docker run rayyildiz/graalvm java HelloWorld```  (After compile)

Create a native image ```docker run rayyildiz/graalvm native-image HelloWorld```  (After compile)


```java
public class HelloWorld {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}
```

License
===

* [GraalVM licenses information](https://github.com/oracle/graal#license)
* This image is licensed under the [MIT](LICENSE)
