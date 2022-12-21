/* Numerical format */
data mydata;
input x 6; /* max width of the data */
format x 6.3;
datalines;
8722
93.2
.112233
15.611
;
proc print data = mydata;
run;

data mydata1;
input x 6.;
format x 5.2;
datalines;
8722
93.2
.1122
15.116
;
run;
proc print data = mydata1;
run;

data myexp3;
input x 6.;
format x DOLLAR10.2;
datalines;
8722
93.2
.1122
15.116
;
run;
proc print data = myexp3;
run;
