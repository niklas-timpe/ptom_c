function temp =templateNaiveBayes (varargin )

















































































ifnargin >0 
[varargin {:}]=convertStringsToChars (varargin {:}); 
end

temp =classreg .learning .FitTemplate .make ('NaiveBayes' ,varargin {:}); 
end