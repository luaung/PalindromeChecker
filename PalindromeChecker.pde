public void setup()
{

  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String ez = noCapitals(onlyLetters(word));
  String rev = reverse(ez);
  if(ez.equals(rev))  
    return true;
  return false;
}
public String reverse(String str)
{
  String s = "";
  int last = str.length()-1;
  for(int i=last; i>=0; i--)
    s = s + str.substring(i,i+1);
  return s;
}


public String onlyLetters(String sString){
  String p = "";
  for(int i=0; i<=sString.length()-1;i++)
    if(Character.isLetter(sString.charAt(i))==true)
      p = p + sString.substring(i,i+1);
  return p;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
