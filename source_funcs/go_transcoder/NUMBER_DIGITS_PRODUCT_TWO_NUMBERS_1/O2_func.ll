define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
  %0 = icmp eq i64 %a, 0, !dbg !3030
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
  %1 = icmp eq i64 %b, 0
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !3032
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !3032

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %13, %if.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3032

if.done:                                          ; preds = %entry
    #dbg_value(i64 %a, !3026, !DIExpression(), !3033)
  %2 = sitofp i64 %a to double, !dbg !3034
    #dbg_value(double %2, !3035, !DIExpression(), !3041)
    #dbg_value(double %2, !3035, !DIExpression(), !3043)
  %3 = tail call double @llvm.fabs.f64(double %2), !dbg !3044
    #dbg_value(double %3, !3045, !DIExpression(), !3049)
    #dbg_value(double %3, !3045, !DIExpression(), !3051)
    #dbg_value(double %3, !3052, !DIExpression(), !3055)
    #dbg_value(double %3, !3052, !DIExpression(), !3057)
    #dbg_value(double %3, !3058, !DIExpression(), !3062)
  %4 = tail call double @llvm.log.f64(double %3), !dbg !3062
  %5 = fmul double %4, 0x3FDBCB7B1526E50E, !dbg !3064
    #dbg_value(i64 %b, !3027, !DIExpression(), !3065)
  %6 = sitofp i64 %b to double, !dbg !3066
    #dbg_value(double %6, !3035, !DIExpression(), !3067)
    #dbg_value(double %6, !3035, !DIExpression(), !3069)
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !3070
    #dbg_value(double %7, !3045, !DIExpression(), !3071)
    #dbg_value(double %7, !3045, !DIExpression(), !3073)
    #dbg_value(double %7, !3052, !DIExpression(), !3074)
    #dbg_value(double %7, !3052, !DIExpression(), !3076)
    #dbg_value(double %7, !3058, !DIExpression(), !3077)
  %8 = tail call double @llvm.log.f64(double %7), !dbg !3077
  %9 = fmul double %8, 0x3FDBCB7B1526E50E, !dbg !3079
  %10 = fadd double %5, %9, !dbg !3080
    #dbg_value(double %10, !3081, !DIExpression(), !3085)
  %11 = tail call double @llvm.floor.f64(double %10), !dbg !3085
  %12 = fadd double %11, 1.000000e+00, !dbg !3087
  %abovemin = fcmp oge double %12, 0xC3E0000000000000, !dbg !3088
  %belowmax = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3088
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3088
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3088
  %isnan = fcmp uno double %12, 0.000000e+00, !dbg !3088
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3088
  %normal = fptosi double %12 to i64, !dbg !3088
  %13 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3088
  br label %common.ret, !dbg !3089
}
