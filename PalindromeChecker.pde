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
  String backwards = reverse(word);
  if(backwards.equals(word)){
    return true;
  }else{
    return false;
  }
}
public String reverse(String str)
{
    String sNew = "";
  int last = str.length()-1;
    for(int i = last; i>=0; i--){
      sNew = sNew + str.substring(i, i +1);
    }
  return sNew;
}
