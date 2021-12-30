import java.io.File;
import java.io.IOException;

import csharpjava.CSharpClass;
import net.sf.jni4net.Bridge;

public class CallCSharp {
	
	public static void main(String[] args) {
		
		//Bridge.setVerbose(true);
		try {
			Bridge.init();
			File dllFile=new File("CSharpClass.j4n.dll");
			Bridge.LoadAndRegisterAssemblyFrom(dllFile);
			
			int a=17;
			int b=22;
			CSharpClass.print(" : Sum of "+a+" and "+b+" = "+CSharpClass.add(a, b));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
