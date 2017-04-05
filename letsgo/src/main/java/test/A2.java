package test;

public class A2 extends A {
	private int a = 1;
	static{
		System.out.println("into static block");
	}
	{
		System.out.println(" function body a = "+ a);
	}
	
	public A2(){
		System.out.println("a = "+a);
	}
	
	public A2(String a){
		System.out.println(a+"A2");
		System.out.println("My name is A2");
	}
	
	public void aaa(){
		System.out.println("aaa body a = "+ a);
	}
}
