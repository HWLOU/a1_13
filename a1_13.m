clear;
syms p v n a w p_1 p_2 v_1 v_2;
assume(v_2>v_1 & v_1>0 & n>1);
w=int(a/(v^n),v_1,v_2);
w_a=subs(w,a,p_1*v_1^n);
w_b=expand(w_a);
w_c=subs(w_b,p_1*v_1^n,p_2*v_2^n);
w_d=simplify(w_c);
w_e=subs(w_d,p_2*v_2,p_1*v_1*(p_2/p_1)^((n-1)/n));
w_g=(p_1*v_1-p_1*v_1*(p_2/p_1)^((n-1)/n))/(n-1);
if isequal(w_e, w_g)
    results = ' equal';
else
    results = ' not equal';
end
fprintf(strcat( results));




