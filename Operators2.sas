Data mydata;
input @1 col1 5.2     @7 col2 4.1;
and_=(col1 > 10 & col2 > 5);
or_ =(col1 > 12 | col2 > 15);
not_=~(col1 > 7);
datalines;
11.21 15.3
33.11 11.4 
;
run;
proc print data=mydata;
run;

data mydata1;
input @1col1 5.2    @7col2 4.1;
EQ_=(col1 = 11.21);
Neq_=(col1 ^= 11.21);
gt_=(col2 =>8);
lt_=(col2 <= 12);
in_=col2 in(6.2,5.3,12 );
max_=max(col1,col2);
min_=min(col1,col2);
datalines;
11.21 15.3
3.11  11.4
;
proc print data=mydata1;
run;

data mydata123;
input col1$ col2$ col3$;
concat_=(col1 || col2 || col3);
datalines;
Hello Uni World
Aman Nirmal Sameer
;
proc print data=mydata123;
run;