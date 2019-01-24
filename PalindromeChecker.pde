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
  String lower = word.toLowerCase();
  String noSpace = noSpaces(lower);
  String fixedWord = onlyLetters(noSpace);
  String backwards = reverse(fixedWord);
  if(backwards.equals(fixedWord)){
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

public String noSpaces(String word){
  String s = "";
  for(int i = 0; i < word.length(); i++){
    if(word.charAt(i) != (' ')){
      s = s + word.charAt(i);
    }
  }
  return s;
}

public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      s = s + sString.charAt(i);
  }
  return s;
}
