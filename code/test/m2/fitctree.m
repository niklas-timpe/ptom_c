function this =fitctree (X ,Y ,varargin )




































































































































































































































ifnargin >1 
Y =convertStringsToChars (Y ); 
end

ifnargin >2 
[varargin {:}]=convertStringsToChars (varargin {:}); 
end

[IsOptimizing ,RemainingArgs ]=classreg .learning .paramoptim .parseOptimizationArgs (varargin ); 
ifIsOptimizing 
this =classreg .learning .paramoptim .fitoptimizing ('fitctree' ,X ,Y ,varargin {:}); 
else
temp =ClassificationTree .template (RemainingArgs {:}); 
this =fit (temp ,X ,Y ); 
end
end