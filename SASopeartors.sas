Data array_example;
Input a1 $ a2 $ a3 $ a4 $ a5 $;
array colours(5) $a1-a5;
mix = a1||'+'||a5; 
Datalines;
yellow pink green orange blue
;
run;
proc print data = array_example;
run;

/*OF opeartor */
Data array_example_OF;
input A1 A2 A3 A4;
Array A(4) A1-A4;
asum = SUM(OF A(*));
amean = MEAN(OF A(*));
amin = MIN(OF A(*));
datalines;
21 4 52 11
23 4 56 78
;
run;
proc print data = array_example_OF;
run;

/* IN opeartor */
data array_ex_IN;
input A1 $ A2 $ A3 $ A4 $;
array colours(4) A1-A4;
If 'yellow' IN colours Then available = 'yes';
else available = 'No';
datalines;
Orange pink green yellow
;
run;
proc print data = array_ex_IN;
run;

