
ods graphics; 

/* Multiple Regression - agri_value_add */
proc reg data= work.dataset;
model agri_value_add = agri_emp rural_population gdp_per_capita_constant / collin;
title "Multiple Regression - agri_value_add"; 
run; 
quit;


/* Multiple Regression - services_value_add */
proc reg data= work.dataset;
model services_value_add = services_emp total_population gdp_per_capita_constant / collin;
title "Multiple Regression - services_value_add"; 
run; 
quit;


/* Multiple Regression - industry_value_add */
proc reg data= work.dataset;
model industry_value_add = industry_emp rural_population gdp_per_capita_constant / collin;
title "Multiple Regression - industry_value_add"; 
run; 
quit;