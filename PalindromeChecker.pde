public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(word).equals(reverse(onlyLetters(word))))
    return true;
  return false;
}

public String onlyLetters(String sString)
{
  String newString = new String();
  for(int i=0; i<sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)) ==true)
      newString=newString + sString.charAt(i);

    return newString.toLowerCase();
}
public String reverse(String str)
{
  String zz = new String();
  int gg =str.length()-1;
  for(int i = gg ;i>=0;i--)
  {
    zz=zz+ str.charAt(i);
  }
  return zz.toLowerCase();
}


