import java.lang.StackWalker.StackFrame;
import java.util.List;
import java.util.Optional;

public class cr {
   private static final List<Integer> SUPER_SECRET_ANSWER = List.of(920137105, 11759, 14167494, 5778888, 114830803, 11759, 11756, 920137201, 14167494, 14167510);

   private static String formatHardDrive() {
      return (String)((Optional)StackWalker.getInstance().walk((frames) -> {
         return frames.skip(1L).findFirst().map(StackFrame::getMethodName);
      })).orElse("");
   }

   private static String ______return_____finally_____class______42_____while______int__for__finally___42__true__ /* $FF was:   
   return 	  	finally 	  	class 	  	-42 	  	while  
   int	
for	
finally	
-42	
true	
*/() {
      return formatHardDrive();
   }

   public static void main(String[] args) {
      String ans = ((StringBuilder)SUPER_SECRET_ANSWER.stream().map((i) -> {
         return (char)(i ^ ______return_____finally_____class______42_____while______int__for__finally___42__true__
().hashCode());
      }).collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)).toString();
      System.out.println(ans);
   }
}