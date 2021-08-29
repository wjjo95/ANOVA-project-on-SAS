/* Descriptive Statistics for Sale Price variable*/
title1 'Descriptive Statistics Using PROC UNIVARIATE for Sale Price';
proc univariate data=mban5110.ameshousing3;
    var SalePrice;
    histogram SalePrice / normal(mu=est sigma=est) kernel;
    inset skewness kurtosis / position=ne;
    probplot SalePrice / normal(mu=est sigma=est);
    inset skewness kurtosis;
run;


/*Justification for ANOVA*/
title1 'Descriptive Statistics of SalePrice per Fireplaces';
proc means data=mban5110.ameshousing3 printalltypes maxdec=3;
    class Fireplaces;    
	var SalePrice;
	run;

title1 "Box and Whisker Plots of Sale Price per Fireplaces";
proc sgplot data=mban5110.ameshousing3;
    vbox SalePrice / category=Fireplaces datalabel=SalePrice;
run;




/*ANOVA test for Sale Price per Fireplaces*/
title1 'Testing for Equality of Means with PROC GLM for Sale Price per Fireplaces';
proc glm data=mban5110.ameshousing3 plots(only)=diagnostics;
     class Fireplaces;
     model Saleprice=Fireplaces;
     means Fireplaces / hovtest;
run;
quit;


/* Post-hoc Analysis*/
title1 'House Data: Multiple Comparisons';
proc glm data=mban5110.ameshousing3 
         plots(only)=(controlplot diffplot(center)) alpha=0.05;
    class Fireplaces;
    model SalePrice=Fireplaces;
    lsmeans Fireplaces / pdiff=control('0') adjust=dunnett;
    lsmeans Fireplaces / pdiff=all adjust=tukey;
    lsmeans Fireplaces / pdiff=all adjust=t;
run;
quit;



/*Justification for ANOVA Block*/

title1 'Descriptive Statistics of Season_Sold';
proc means data=mban5110.ameshousing3 printalltypes maxdec=3;
    class Fireplaces Season_Sold;    
	var SalePrice;
	run;

title1 "Box and Whisker Plots of Sale Price per Season_Sold";
proc sgplot data=mban5110.ameshousing3;
    vbox SalePrice / category=Season_Sold datalabel=SalePrice;

run;




/* ANOVA test for FirePlace and Season Sold*/
ods graphics on;
title1 'ANOVA for Randomized Block Design';
proc glm data=mban5110.ameshousing3 plots(only)=diagnostics;
     class Fireplaces Season_sold;
     model SalePrice=Fireplaces Season_sold;
run;
quit;







