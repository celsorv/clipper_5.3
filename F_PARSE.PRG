***************
*
*  Funcao    PARSE()
*  Data      28/02/97
*  Autor     Celso R. Vitorino
*  Objetivo  Extrai de uma cadeia uma palavra cfe tipo delimitador
*  Entrada   cadeia de palavras, delimitador
*  Saida     palavra
*
***************
FUNCTION PARSE(xtext,xchar)
   LOCAL xpos,xlen,xret
   *
   *  VALIDACAO DE PARAMETROS
   *
   xchar:=IIF(VALTYPE(xchar)=="C",xchar," ")
   xret:=""
   xlen:=LEN(xchar)
   IF VALTYPE(xtext)=="C"
      xtext:=IIF(xchar==" ",LTRIM(xtext),xtext)
      IF (xpos:=AT(xchar,xtext))==0
         xret:=xtext
         xtext:=""
      ELSE
         xret:=SUBS(xtext,1,xpos-1)
         xtext:=SUBS(xtext,xpos+xlen)
         xtext:=IIF(xchar==" ",LTRIM(xtext),xtext)
      ENDIF
   ENDIF

   RETURN(xret)
