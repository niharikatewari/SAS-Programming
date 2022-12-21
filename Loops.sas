data mydata129;
sum = 0;
DO var = 1 to 5;
  sum = sum + var;
END;
proc print data=mydata129;
run;

/*  DO WHILE (variable condition) 
END; */
data data1;
sum = 0;
var = 1;
DO while(var < 10);
 sum = sum + var;
 var+1;
END;
proc print;
run;

/* DO UNTIL(variable condition)
END;
*/

data data2;
sum = 0;
var = 1;
DO Until(Var > 5);
sum = sum + var;
var+1;
end;
proc print;
run;
