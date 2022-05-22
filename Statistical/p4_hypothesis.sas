
ods graphics; 

/* One-Way ANOVA - gdp_ppp_constant with area as Predictor */
proc glm data=work.dataset plots=diagnostics; 
	class area; 
	model gdp_ppp_constant =area; 
	means area / hovtest=levene; 
	format area $area.; 
	title "One-Way ANOVA - gdp_ppp_constant with area as Predictor"; 
run; 
quit;


/* One-Way ANOVA - gdp_constant with area as Predictor */
proc glm data=work.dataset plots=diagnostics; 
	class area; 
	model gdp_constant =area; 
	means area / hovtest=levene; 
	format area $area.; 
	title "One-Way ANOVA - gdp_constant with area as Predictor"; 
run; 
quit;

/* TTest - East Europe and West Europe Agriculture Employment */
proc import file=
"D:/Kamal/Salford University/PODS/CourseWork/Statistical/World_Development_Indicators_Normalized_2EW.csv"
    out=work.dataset2
    dbms=csv
	replace;
run;

proc ttest data = work.dataset2 sides=u;
   class  area;
   var  agri_emp;
   title "East Europe and West Europe Agriculture Employment";
run;