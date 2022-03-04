package compiler;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Pre_Processor {
    private Pattern all_define_expression;
    private Pattern first_two_par_of_define;
    private Map<String,String> define_value;
    String input;
    public Pre_Processor(String input) {
        this.input = input;
        first_two_par_of_define=Pattern.compile("(?<= |^|\n)define(?<=\\S)\\h+(?=\\S)[A-Za-z]+[a-zA-Z0-9_]*");
        all_define_expression=Pattern.compile("(?<= |^|\n)define(?<=\\S)\\h+(?=\\S)[A-Za-z]+[a-zA-Z0-9_]*.*");
        define_value=new LinkedHashMap<>();
    }
    public String handle_define(){
        find_defines();
        change_defined_values();
        return input;
    }
    public void find_defines(){
        Matcher all_def=all_define_expression.matcher(input);
        Matcher first_two=first_two_par_of_define.matcher(input);
        while(all_def.find()){
            first_two.find();
            define_value.put(first_two.group().split("\\s+")[1],input.substring(first_two.end(),all_def.end()));
            input=all_def.replaceFirst("");
            all_def=all_define_expression.matcher(input);
            first_two=first_two_par_of_define.matcher(input);
        }
        input=input.trim();


    }
    public void change_defined_values(){
        ArrayList<Integer>a=new ArrayList<>();
        ArrayList<Integer>b=new ArrayList<>();
        for (String key:define_value.keySet()) {
            Pattern defined_variable=Pattern.compile("((?<=\\+|-|\\*|\\/|\"|=|>|<|>=|<=|&|\\||%|!|\\^|\\(|\\)|\\}|\\[|\\{|\\]|\\\\|\\.|\\r|;|,)|(?<= |^|\n))"+key+"((?=\\+|-|\\*|\\/|\"|=|>|<|>=|<=|&|\\||%|!|\\^|\\(|\\)|\\}|\\[|\\{|\\]|\\\\|\\.|\\r|;|,)|(?= |$|\n))");
            Matcher second=defined_variable.matcher(input);
            String s="";
            while (second.find()){
                a.add(second.start());
                b.add(second.end());
            }

            int holder=0;
            for(int i=0;i<a.size();i++){
                s+=input.substring(holder,a.get(i))+define_value.get(key);
                holder=b.get(i);
                if(i==a.size()-1){
                    s+=input.substring(b.get(i));
                }
            }
            if(!s.equals("")){
                input=s;
            }
            a.clear();
            b.clear();
        }
        input.trim();
    }

    public static void main(String[] args) {
        String s="define x abc\n"+" x&  ";
        System.out.println(s);
        Pre_Processor p=new Pre_Processor(s);
        System.out.println(p.handle_define());
    }

}
