function obj =fitensemble (X ,Y ,method ,nlearn ,learners ,varargin )





































































































































































































































































































































ifnargin >1 
Y =convertStringsToChars (Y ); 
end

ifnargin >2 
method =convertStringsToChars (method ); 
end

ifnargin >3 
nlearn =convertStringsToChars (nlearn ); 
end

ifnargin >4 
learners =convertStringsToChars (learners ); 
end

ifnargin >5 
[varargin {:}]=convertStringsToChars (varargin {:}); 
end

narginchk (5 ,inf ); 
internal .stats .checkNotTall (upper (mfilename ),0 ,X ,Y ,method ,nlearn ,learners ,varargin {:}); 

if~ischar (method )
error (message ('stats:fitensemble:MethodNameNotChar' )); 
end
if~any (strncmpi (method ,classreg .learning .ensembleModels (),length (method )))
error (message ('stats:fitensemble:BadMethod' ,method )); 
end
temp =classreg .learning .FitTemplate .make (method ,'nlearn' ,nlearn ,'learners' ,learners ,varargin {:}); 
obj =fit (temp ,X ,Y ); 
end