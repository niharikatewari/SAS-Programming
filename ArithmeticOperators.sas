data arthmaticdata;
input @1col1 @7col2;
add_res = col1+col2;
sub_res = col1-col2;
mul_res = col1*col2;
divi_res = col1/col2;
expo_res = col1**col2;
datalines;
11.21 5.3
3.11  11
;
proc print data=arthmaticdata;
run;

data exp;
input a1 a2 a3 a4;
datalines;
1 2 3 4
3 3 5 7
;
run;
proc print data=exp;
run;