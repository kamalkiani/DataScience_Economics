
proc import file=
"D:/Kamal/Salford University/PODS/CourseWork/Statistical/World_Development_Indicators_Normalized.csv"
    out=work.dataset
    dbms=csv
	replace;
run;

proc means data=work.dataset;
run;

proc univariate data=work.dataset;
var gdp_constant gdp_growth;
run;

proc print data=work.dataset;
where country="ROU";
var country time gdp_growth;
run;


