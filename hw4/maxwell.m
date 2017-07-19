function [output] = maxwell(m,k,T,v)
output = (4.*pi).*(sqrt(m./(2.*pi.*k.*T))).^3.*v.^2.*exp(-m.*(v.^2)./(2.*k.*T));
end