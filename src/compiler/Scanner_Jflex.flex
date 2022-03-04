package compiler;
import java_cup.runtime.*;
%%
%public
%class Scanner_phase1
%unicode
%line
%column
%type Symbol
%cup
%{

public Symbol token (int tokenType) {
        System.out.println(yytext());
	    return new Symbol(tokenType,yytext());

	}
%}
all_type_of_comment={comment_type_one}|{comment_type_two}
comment_type_one="/*" [^*] ~"*/"
comment_type_two="//".*
white_space=\r|\n|\r\n|\t|\f|\s
string=\"([^\"\r\n]| \\t| \\r |\\n| \\\" |\\| \\')*\"
double=\d+\.\d*[eE][-+]?\d+
double1=\d+\.\d*
integer=\d+
int16 = [0]+[xX][0-9a-fA-F]+
identifire=[a-zA-Z][a-zA-Z0-9_]*
%%
/*handle keywords*/
__func__                  {return token(sym.FUNC);}
__line__                  {return token(sym.LINE);}
bool                      {return token(sym.BOOL);}
break                     {return token(sym.BREAK);}
btoi                       {return token(sym.BTOI);}
class                       {return token(sym.CLASS);}
continue                    {return token(sym.CONTINUE);}
define                      {return token(sym.DEFINE);}
double                      {return token(sym.DOUBLE);}
dtoi                        {return token(sym.DTOI);}
else                        {return token(sym.ELSE);}
for                         {return token(sym.FOR);}
if                          {return token(sym.IF);}
import                      {return token(sym.IMPORT);}
int                         {return token(sym.INT);}
itob                        {return token(sym.ITOB);}
itod                        {return token(sym.ITOD);}
new                         {return token(sym.NEW);}
NewArray                    {return token(sym.NEWARRAY);}
null                        {return token(sym.NULL);}
Print                       {return token(sym.PRINT);}
private                     {return token(sym.PRIVATE);}
public                      {return token(sym.PUBLIC);}
ReadInteger                 {return token(sym.READINTEGER);}
ReadLine                    {return token(sym.READLINE);}
return                      {return token(sym.RETURN);}
string                      {return token(sym.STRING);}
this                        {return token(sym.THIS);}
void                        {return token(sym.VOID);}
while                       {return token(sym.WHILE);}
/*handle string*/
{string}                  {
                           return token(sym.T_STRINGLITERAL);  }
/*handle boolean*/
true|false                {
                            return token(sym.T_BOOLEANLITERAL);}
/*handle comments*/
{all_type_of_comment}     {}
/*handle whitespace*/
{white_space}             {}
/*handle operators*/
"&&"                        {return token(sym.AND);}
"||"                        {return token(sym.OR);}
"!"                         {return token(sym.NOT);}
"!="                        {return token(sym.NOT_EQUAL);}
"<"                         {return token(sym.LESS);}
"<="                        {return token(sym.LESS_EQUAL);}
">"                         {return token(sym.GREATER);}
">="                        {return token(sym.GREATER_EQUAL);}
"%"                         {return token(sym.MODE);}
"/"                         {return token(sym.DIVIDE);}
"/="                        {return token(sym.DIVIDE_ASSIGN);}
"*"                         {return token(sym.TIME);}
"*="                        {return token(sym.TIME_ASSIGN);}
"="                         {return token(sym.ASSIGN);}
"=="                        {return token(sym.EQUAL);}
"+"                         {return token(sym.PLUS);}
"+="                        {return token(sym.PLUS_ASSIGN);}
"-"                         {return token(sym.MINUS);}
"-="                        {return token(sym.MINUS_ASSIGN);}
"."                         {return token(sym.DOT);}
","                         {return token(sym.COMMA);}
";"                         {return token(sym.SEMICOLON);}
"("                         {return token(sym.OPENBRACE);}
")"                         {return token(sym.CLOSEBRACE);}
"{"                         {return token(sym.OPENCURLY);}
"}"                         {return token(sym.CLOSECURLY);}
"["                         {return token(sym.OPENBRACKET);}
"]"                         {return token(sym.CLOSEBRACKET);}
"[]"                        {return token(sym.OP_CL_BRACKET);}
/*handle integer*/
{integer} | {int16}                  {
                                       return token(sym.T_INTLITERAL);}
/*handle double*/
{double} |{double1}                 {
                                     return token(sym.T_DOUBLELITERAL);}
/*handle identifiers*/
{identifire}               {
                            return token(sym.T_ID);}


