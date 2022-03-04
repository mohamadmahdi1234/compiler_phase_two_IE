package compiler;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Stream;

public class Main {

    //this is for quera test and should implement and return string
    public static boolean run(java.io.File inputFile) throws Exception {
        StringBuilder contentBuilder=new StringBuilder();
        try (Stream<String> stream = Files.lines( Paths.get(inputFile.getAbsolutePath()), StandardCharsets.UTF_8))
        {
            stream.forEach(s -> contentBuilder.append(s).append("\n"));
        }
        catch (IOException e)
        {

        }
        String input=contentBuilder.toString();
        Pre_Processor p=new Pre_Processor(input);
        String define_handeled=p.handle_define();
        Scanner_phase1 scanner=new Scanner_phase1(new StringReader(define_handeled.trim()));
        parser par=new parser(scanner);
        try {
            par.parse();
            return true;
        } catch (Exception e) {
            return false;
        }

    }

}
