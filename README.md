# Vontimitta Java Blog

A beginner-friendly traditional Java web application designed for deployment to Apache Tomcat.

## Stack
- Java 17
- Jakarta Servlet 6
- JSP
- Maven
- WAR packaging
- Apache Tomcat 10.1+

## Project structure

src/
  main/
    java/com/example/vontimitta/HomeServlet.java
    webapp/index.jsp
    webapp/css/style.css
    webapp/WEB-INF/web.xml

## Build

```bash
mvn clean package
```

WAR output:

```text
target/vontimitta-java-blog.war
```

## Deploy to Tomcat

Copy the WAR to:

```text
$CATALINA_HOME/webapps/
```

Start Tomcat and open:

```text
http://localhost:8080/vontimitta-java-blog/
```

## Important image note

The demo references Wikimedia Commons images through `Special:FilePath` URLs.
For a real production site, download approved images into:

```text
src/main/webapp/images/
```

and change the `<img>`/CSS URLs to local paths. Check each image's current license and attribution requirements before publishing.

## Historical accuracy note

The page intentionally separates:
1. dated/archaeological history,
2. government-published heritage information, and
3. local religious legends.

That distinction matters when writing a serious heritage blog.
