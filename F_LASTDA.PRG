***************
*
*  Funcao    LASTDAY()
*  Data      18/03/97
*  Autor     Celso R. Vitorino
*  Objetivo  Obtem o ultimo dia do mes para uma determinada data
*  Entrada   data
*  Saida     numero do dia
*
***************
FUNCTION LASTDAY(xdate)
   LOCAL xtable
   *
   *  VALIDACAO PARAMETROS / VARIAVEIS AUXILIARES
   *
   xdate:=IIF(VALTYPE(xdate)=="D",xdate,DATE())
   xtable:={YEAR(xdate),MONTH(xdate),31}
   IF xtable[2]==4.OR.xtable[2]==6.OR.xtable[2]==9.OR.xtable[2]==11
      *
      *  MESES COM 30 DIAS
      *
      xtable[3]:=30
   ELSEIF xtable[2]==2
      *
      *  VERIFICACAO DE ANO BISSEXTO
      *
      IF xtable[1]%4==0.AND.(xtable[1]%100#0.OR.xtable[1]%400==0)
         xtable[3]:=29
      ELSE
         xtable[3]:=28
      ENDIF
   ENDIF

   RETURN(xtable[3])
