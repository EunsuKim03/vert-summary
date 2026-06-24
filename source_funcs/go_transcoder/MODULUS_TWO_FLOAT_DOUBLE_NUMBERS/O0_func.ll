define double @f_gold(double %a, double %b) #0 !dbg !4927 {
entry:
    #dbg_value(double %a, !4930, !DIExpression(), !4933)
    #dbg_value(double %b, !4931, !DIExpression(), !4933)
    #dbg_value(double 0.000000e+00, !4932, !DIExpression(), !4934)
    #dbg_value(double %a, !4930, !DIExpression(), !4935)
  %0 = fcmp olt double %a, 0.000000e+00, !dbg !4936
  br i1 %0, label %if.then, label %if.else, !dbg !4937

if.then:                                          ; preds = %entry
    #dbg_value(double %a, !4930, !DIExpression(), !4938)
  %1 = fneg double %a, !dbg !4939
    #dbg_value(double %1, !4932, !DIExpression(), !4940)
  br label %if.done, !dbg !4937

if.done:                                          ; preds = %if.else, %if.then
  %2 = phi double [ %1, %if.then ], [ %a, %if.else ], !dbg !4934
    #dbg_value(double %b, !4931, !DIExpression(), !4941)
  %3 = fcmp olt double %b, 0.000000e+00, !dbg !4942
  br i1 %3, label %if.then1, label %for.loop, !dbg !4937

if.then1:                                         ; preds = %if.done
    #dbg_value(double %b, !4931, !DIExpression(), !4943)
  %4 = fneg double %b, !dbg !4944
    #dbg_value(double %4, !4931, !DIExpression(), !4945)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %for.body, %if.then1, %if.done
  %5 = phi double [ %b, %if.done ], [ %5, %for.body ], [ %4, %if.then1 ], !dbg !4946
  %6 = phi double [ %2, %if.done ], [ %8, %for.body ], [ %2, %if.then1 ], !dbg !4934
    #dbg_value(double %6, !4932, !DIExpression(), !4947)
    #dbg_value(double %5, !4931, !DIExpression(), !4948)
  %7 = fcmp oge double %6, %5, !dbg !4949
  br i1 %7, label %for.body, label %for.done, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(double %6, !4932, !DIExpression(), !4950)
    #dbg_value(double %5, !4931, !DIExpression(), !4951)
  %8 = fsub double %6, %5, !dbg !4952
    #dbg_value(double %8, !4932, !DIExpression(), !4953)
  br label %for.loop, !dbg !4937

for.done:                                         ; preds = %for.loop
    #dbg_value(double %a, !4930, !DIExpression(), !4954)
  %9 = fcmp olt double %a, 0.000000e+00, !dbg !4955
  br i1 %9, label %if.then2, label %if.done3, !dbg !4937

if.then2:                                         ; preds = %for.done
    #dbg_value(double %6, !4932, !DIExpression(), !4956)
  %10 = fneg double %6, !dbg !4957
  ret double %10, !dbg !4958

if.done3:                                         ; preds = %for.done
    #dbg_value(double %6, !4932, !DIExpression(), !4959)
  ret double %6, !dbg !4960

if.else:                                          ; preds = %entry
    #dbg_value(double %a, !4930, !DIExpression(), !4961)
    #dbg_value(double %a, !4932, !DIExpression(), !4962)
  br label %if.done, !dbg !4937
}
