data Math_functions;

a1=21;a2=11;a3=67;a4=45;a5=20;

max_val = MAX(a1,a2,a3,a4,a5);
min_val = MIN(a1,a2,a3,a4,a5);
med_val = MEDIAN(a1,a2,a3,a4,a5);
ran_val = RANUNI(0);
sq_val = SQRT(sum(a1,a2,a3,a4,a5));

proc print data = Math_functions noobs;
run;

data data_func;
input @1 date1 date9. @11 date2 date9.;
format date1 date9. date2 date9.;
years = INTCK('YEAR',date1,date2);
months = INTCK('MONTH', date1,date2);
weekday = WEEKDAY(date1);

todaydate = TODAY();
time = time();
datalines;
27OCT2020 10APR1990
01MAR2009 11JUL2012
;
proc print data = data_func noobs;
run; 

data char_func;

lowcase = LOWCASE('HELLO');
upcase = UPCASE('hello');
reverse = REVERSE('Hello');
returnNthword = SCAN('SAS with Niharika',2);
run;
proc print data = char_func noobs;
run;

data trunc_func;

nearGreatInte = ceil(11.85);
floorint = floor(11.85);
intportion = INT(32.41);
roundoff = ROUND(54218.98);
run;
proc print data = trunc_func noobs;
run;

data misc_func;

state = zipstate('85001');
proc print data = misc_func noobs;
run;