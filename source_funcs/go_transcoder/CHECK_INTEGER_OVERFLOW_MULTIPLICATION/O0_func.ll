define i1 @f_gold(double %a, double %b) #0 !dbg !4927 {
entry:
    #dbg_value(double %a, !4930, !DIExpression(), !4933)
    #dbg_value(double %b, !4931, !DIExpression(), !4933)
    #dbg_value(double %a, !4930, !DIExpression(), !4934)
  %0 = fcmp oeq double %a, 0.000000e+00, !dbg !4935
  br i1 %0, label %if.then, label %cond.false, !dbg !4936

if.then:                                          ; preds = %cond.false, %entry
  ret i1 false, !dbg !4937

cond.false:                                       ; preds = %entry
    #dbg_value(double %b, !4931, !DIExpression(), !4938)
  %1 = fcmp oeq double %b, 0.000000e+00, !dbg !4939
  br i1 %1, label %if.then, label %if.done, !dbg !4936

if.done:                                          ; preds = %cond.false
    #dbg_value(double %a, !4930, !DIExpression(), !4940)
    #dbg_value(double %b, !4931, !DIExpression(), !4941)
  %2 = fmul double %a, %b, !dbg !4942
    #dbg_value(double %2, !4932, !DIExpression(), !4943)
    #dbg_value(double %a, !4930, !DIExpression(), !4944)
    #dbg_value(double %2, !4932, !DIExpression(), !4945)
    #dbg_value(double %b, !4931, !DIExpression(), !4946)
  %3 = fdiv double %2, %b, !dbg !4947
  %4 = fcmp oeq double %a, %3, !dbg !4948
  br i1 %4, label %if.then1, label %if.else, !dbg !4936

if.then1:                                         ; preds = %if.done
  ret i1 false, !dbg !4949

if.else:                                          ; preds = %if.done
  ret i1 true, !dbg !4950
}
