public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup() {
  String digits = "";      
  for (int n = 2; n < e.length(); n++) {
    digits = e.substring(n, n+10);
    
      if (isPrime(Double.parseDouble(digits))) {
      System.out.println(digits);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num)  
{
  if (num == 2) {
    return true;
  }
  if (num < 2) {
    return false;
  }
  for (int i = 2; i < Math.sqrt(num)+1; i++) {
    if (num%i==0) {
      return false;
    }
  }
  return true;
} 
