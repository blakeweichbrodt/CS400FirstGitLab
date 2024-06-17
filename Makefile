Color.class: Color.java
	javac Color.java

Library.jar: Color.class
	jar -cf Library.jar Color.class

Main.class: Library.jar Main.java
	javac -cp Library.jar:. Main.java

runProgram: Main.class
	java -cp Library.jar:. Main
