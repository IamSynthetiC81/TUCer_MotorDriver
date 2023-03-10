clear ; clc ; close all ;
V_HVDC=24;
L_main=0.016;
R_off=10*10^6;
C_oss=83*10^-9;

I_main=linspace(0,45,1000);

a=1/(2*R_off*C_oss);
omega=sqrt(1-2*(sqrt(L_main/C_oss)/2*R_off))*sqrt(1/sqrt(L_main*C_oss));
Va=sqrt(V_HVDC^2+(a/omega)^2*(2*R_off*I_main-V_HVDC));
ph=atan(V_HVDC/((a/omega)*(2*R_off*I_main-V_HVDC)));
V_DS_SURGE=Va*exp(-(a/omega)*atan(a/omega)+ph);


