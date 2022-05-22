
ods graphics on;

PROC CORR DATA=work.dataset;
title "Correlation of variables"; 	
RUN;

/* correlation between gdp_per_capita_constant and rural_population */

PROC CORR DATA=work.dataset;
	WITH gdp_per_capita_constant;
RUN;

PROC CORR DATA=work.dataset PLOTS=ALL;
	VAR rural_population;
	WITH gdp_per_capita_constant;
	title "Associations of gdp_per_capita_constant and rural_population"; 
RUN;

proc sgscatter data= work.dataset; 
	plot  gdp_per_capita_constant * rural_population / reg; 
	title "Associations of gdp_per_capita_constant and rural_population"; 
run;




/* correlation between urban_population and services_emp */

PROC CORR DATA=work.dataset;
	WITH urban_population;
RUN;

PROC CORR DATA=work.dataset PLOTS=ALL;
	VAR services_emp;
	WITH urban_population;
	title "Associations of urban_population and services_emp";
RUN;

proc sgscatter data= work.dataset; 
	plot  urban_population * services_emp / reg; 
	title "Associations of urban_population and services_emp"; 
run;




/* correlation between gdp_constant and services_value_add */

PROC CORR DATA=work.dataset;
	WITH gdp_constant;
RUN;

PROC CORR DATA=work.dataset PLOTS=ALL;
	VAR services_value_add;
	WITH gdp_constant;
	title "Associations of gdp_constant and services_value_add"; 
RUN;

proc sgscatter data= work.dataset; 
	plot  gdp_constant * services_value_add / reg; 
	title "Associations of gdp_constant and services_value_add"; 
run;