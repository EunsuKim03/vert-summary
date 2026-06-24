define i1 @f_gold(i64 %num) #1 !dbg !4937 {
entry:
    #dbg_value(i64 %num, !4940, !DIExpression(), !4947)
    #dbg_value(i64 %num, !4940, !DIExpression(), !4948)
  %0 = icmp slt i64 %num, 0, !dbg !4949
  br i1 %0, label %if.then, label %if.done, !dbg !4950

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4951

if.done:                                          ; preds = %entry
    #dbg_value(i64 %num, !4940, !DIExpression(), !4952)
  %1 = mul i64 %num, -2, !dbg !4953
    #dbg_value(i64 %1, !4941, !DIExpression(), !4954)
    #dbg_value(i64 1, !4942, !DIExpression(), !4955)
    #dbg_value(i64 1, !4943, !DIExpression(), !4956)
    #dbg_value(i64 1, !4942, !DIExpression(), !4957)
    #dbg_value(i64 1, !4942, !DIExpression(), !4958)
    #dbg_value(i64 1, !4943, !DIExpression(), !4959)
    #dbg_value(i64 %1, !4941, !DIExpression(), !4960)
  %2 = mul i64 4, %1, !dbg !4961
  %3 = sub i64 1, %2, !dbg !4962
    #dbg_value(i64 %3, !4944, !DIExpression(), !4963)
    #dbg_value(i64 %3, !4944, !DIExpression(), !4964)
  %4 = icmp slt i64 %3, 0, !dbg !4965
  br i1 %4, label %if.then1, label %if.done2, !dbg !4950

if.then1:                                         ; preds = %if.done
  ret i1 false, !dbg !4966

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 1, !4942, !DIExpression(), !4967)
    #dbg_value(i64 %3, !4944, !DIExpression(), !4968)
  %5 = sitofp i64 %3 to double, !dbg !4969
  %6 = call double @math.Sqrt(double %5, ptr undef), !dbg !4970
  %7 = fadd double -1.000000e+00, %6, !dbg !4971
    #dbg_value(i64 1, !4943, !DIExpression(), !4972)
  %8 = fdiv double %7, 2.000000e+00, !dbg !4973
  %9 = fptrunc double %8 to float, !dbg !4974
    #dbg_value(float %9, !4945, !DIExpression(), !4975)
    #dbg_value(i64 1, !4942, !DIExpression(), !4976)
    #dbg_value(i64 %3, !4944, !DIExpression(), !4977)
  %10 = sitofp i64 %3 to double, !dbg !4978
  %11 = call double @math.Sqrt(double %10, ptr undef), !dbg !4979
  %12 = fsub double -1.000000e+00, %11, !dbg !4980
    #dbg_value(i64 1, !4943, !DIExpression(), !4981)
  %13 = fdiv double %12, 2.000000e+00, !dbg !4982
  %14 = fptrunc double %13 to float, !dbg !4983
    #dbg_value(float %14, !4946, !DIExpression(), !4984)
    #dbg_value(float %9, !4945, !DIExpression(), !4985)
  %15 = fcmp ogt float %9, 0.000000e+00, !dbg !4986
  br i1 %15, label %cond.true, label %if.done4, !dbg !4950

cond.true:                                        ; preds = %if.done2
    #dbg_value(float %9, !4945, !DIExpression(), !4987)
  %16 = fpext float %9 to double, !dbg !4988
  %17 = call double @math.Floor(double %16, ptr undef), !dbg !4989
    #dbg_value(float %9, !4945, !DIExpression(), !4990)
  %18 = fpext float %9 to double, !dbg !4991
  %19 = fcmp oeq double %17, %18, !dbg !4992
  br i1 %19, label %if.then3, label %if.done4, !dbg !4950

if.then3:                                         ; preds = %cond.true
  ret i1 true, !dbg !4993

if.done4:                                         ; preds = %cond.true, %if.done2
    #dbg_value(float %14, !4946, !DIExpression(), !4994)
  %20 = fcmp ogt float %14, 0.000000e+00, !dbg !4995
  br i1 %20, label %cond.true5, label %if.done7, !dbg !4950

cond.true5:                                       ; preds = %if.done4
    #dbg_value(float %14, !4946, !DIExpression(), !4996)
  %21 = fpext float %14 to double, !dbg !4997
  %22 = call double @math.Floor(double %21, ptr undef), !dbg !4998
    #dbg_value(float %14, !4946, !DIExpression(), !4999)
  %23 = fpext float %14 to double, !dbg !5000
  %24 = fcmp oeq double %22, %23, !dbg !5001
  br i1 %24, label %if.then6, label %if.done7, !dbg !4950

if.then6:                                         ; preds = %cond.true5
  ret i1 true, !dbg !5002

if.done7:                                         ; preds = %cond.true5, %if.done4
  ret i1 false, !dbg !5003
}
