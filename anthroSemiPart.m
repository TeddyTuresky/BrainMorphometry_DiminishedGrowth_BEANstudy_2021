function [r,p] = anthroSemiPart(x, y, z)

% Runs semi-partial correlations. 
% For questions: theodore_turesky@gse.harvard.edu

% x       - independent variable (e.g., anthropometric, SES measure
% y       - dependent variable (e.g., brain estimate) 
% z       - regressor (e.g., age, sex)


    mdl = fitlm(z,y);
    [r,p] = corr(x,mdl.Residuals.Raw,'rows','pairwise');


end