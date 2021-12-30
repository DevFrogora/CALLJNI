@echo off
if not exist target mkdir target
if not exist target\classes mkdir target\classes


echo compile classes
javac -nowarn -d target\classes -sourcepath jvm -cp "e:\tutorial\java\jni\jni lib\jni4net\lib\jni4net.j-0.8.9.0.jar"; @sources.txt
IF %ERRORLEVEL% NEQ 0 goto end


echo CSharpClass.j4n.jar 
jar cvf CSharpClass.j4n.jar  @classes.txt > nul 
IF %ERRORLEVEL% NEQ 0 goto end


echo CSharpClass.j4n.dll 
csc /nologo /warn:0 /t:library /out:CSharpClass.j4n.dll /recurse:clr\*.cs  /reference:"E:\CodingHub\csharp\Assembly\CSharpClass.dll" /reference:"E:\Tutorial\java\jni\Jni Lib\jni4net\lib\jni4net.n-0.8.9.0.dll"
IF %ERRORLEVEL% NEQ 0 goto end


:end
