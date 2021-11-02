
function c = pt_cruiser(ab)
ab = [1,2;3,4;5,6]
    [n,m]= size(ab)
    for i = 1:n
        c=hypot(ab(:,1), ab(:,2));    
    end
    c = c'
end  
