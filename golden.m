function H = golden(v)
H = [v; v.^2; v.^3]';
size(H) = (n,3)
end