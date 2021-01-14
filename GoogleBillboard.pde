public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
double newNum;
public void setup()  
{  
for(int i=0; i<128;i+=10) {
  String digits = e.substring(i,i+10);
  newNum = Double.parseDouble(digits);
  if(isPrime(newNum)==true) {
    System.out.println(newNum);
  }
} 
}

 
public boolean isPrime(double dNum)  
{   
  if(dNum < 3) { // I had to change the dNum to 3 cuz I kept getting the first 2.718 whatever number being returned even though it was 9 digits long. 
    return false;
  } for (int i = 2; i<= Math.sqrt(dNum); i++) {
    if(dNum%i == 0) {
      return false;
    }
  } return true; 
} 
