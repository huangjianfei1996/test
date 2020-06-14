package demos.formatsql; 
/*
 * Date: 2010-11-9
 * Time: 9:38:43
 */


import gudusoft.gsqlparser.EDbVendor;
import gudusoft.gsqlparser.TGSqlParser;

import gudusoft.gsqlparser.pp.para.GFmtOptFactory;
import gudusoft.gsqlparser.pp.para.GFmtOpt;
import gudusoft.gsqlparser.pp.stmtformatter.FormatterFactory;

import java.io.*;


public class Formatsql {

    public static void main(String args[]) throws IOException {
        TGSqlParser sqlparser = new TGSqlParser(EDbVendor.dbvmysql);
        sqlparser.sqlfilename = new File("").getAbsolutePath()+"/test/a.sql";
        int ret = sqlparser.parse();
        if (ret == 0){
            GFmtOpt option = GFmtOptFactory.newInstance();
            option.createtableListitemInNewLine = false;
            String result = FormatterFactory.pp(sqlparser, option);
            FileOutputStream o = new FileOutputStream(new File(new File("").getAbsolutePath()+"/test/run-result.txt"));
            OutputStreamWriter out = new OutputStreamWriter(o);
            out.write(result);
            out.flush();
            out.close();
            System.out.println(result);
        }else{
            System.out.println(sqlparser.getErrormessage());
        }
     }

}