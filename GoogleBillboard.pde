public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public String digits;
public double firstPrime;
public double nNum;

public void setup()  
{            
	for (int i = 1;  i<e.length()-10; i+=1) {
		digits = e.substring(i,i+10);
		nNum = Double.parseDouble(digits);
		if (isPrime(nNum)==true) {
			firstPrime = nNum;
			i = e.length()-10;
		}
		
	}
	System.out.println(firstPrime);
	

}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum>3) {
    double n = Math.sqrt(dNum);
    for (int i=2;i<=n;i++) {
      if (dNum%i==0) {
        return false;
      }
    }
  }
  if (dNum<2) {
    return false;
  }
  return true;
} 
