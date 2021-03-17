***************
*
*  Funcao    OCCURS()
*  Data      15/03/97
*  Autor     Celso R. Vitorino
*  Objetivo  Obtem o numero de vezes que um caractere ocorre em uma string
*  Entrada   caractere, texto
*  Saida     numero de ocorrencias
*
***************
FUNCTION OCCURS(xchar,xtext)
   LOCAL xpos,xret

   xret:=0
   IF VALTYPE(xtext)=="C"
      xchar:=IIF(VALTYPE(xchar)=="C",xchar," ")
      DO WHILE .NOT.EMPTY(xtext)
         IF (xpos:=AT(xchar,xtext))>0
            xret++
            xtext:=SUBS(xtext,xpos+1)
         ELSE
            xtext:=""
         ENDIF
      ENDDO
   ENDIF

   RETURN(xret)
