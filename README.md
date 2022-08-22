# Getting Started

### 构建
```shell
./gradlew build -x test
docker build -t spring-demo:latest .
```

### 推送 jar 包到 Maven 仓库
1. 在 build.gradle 中添加 `id "maven-publish"`
2. 在 build.gradle 中继续添加
```gradle
publishing {
    repositories {
        maven {
            allowInsecureProtocol = true
            url("${artifactsRepoUrl}")
            credentials {
                username("${artifactsUsername}")
                password("${artifactsPassword}")
            }
        }
    }
    publications {
        maven(MavenPublication) {
            groupId = "com.test"
            artifactId = "my-site"
            version = "1.5.2"

            from components.java
        }

    }
}
```

3. 在 gradle.properties 中添加远程仓库配置信息
```properties
artifactsRepoUrl=http://target-host/
artifactsUsername=<username>
artifactsPassword=<password>
```

### Reference Documentation

For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.5.4/gradle-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/2.5.4/gradle-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.5.4/reference/htmlsingle/#boot-features-developing-web-applications)
* [Thymeleaf](https://docs.spring.io/spring-boot/docs/2.5.4/reference/htmlsingle/#boot-features-spring-mvc-template-engines)

### Guides

The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)
* [Handling Form Submission](https://spring.io/guides/gs/handling-form-submission/)

### Additional Links

These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

