define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = icmp slt i64 %n, 0, !dbg !3031
  br i1 %0, label %common.ret, label %if.done, !dbg !3032

common.ret:                                       ; preds = %if.done, %entry, %for.done
  %common.ret.op = phi i64 [ %11, %for.done ], [ 0, %entry ], [ 1, %if.done ]
  ret i64 %common.ret.op, !dbg !3032

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3033)
  %1 = icmp samesign ult i64 %n, 2, !dbg !3034
  br i1 %1, label %common.ret, label %for.body, !dbg !3032

for.body:                                         ; preds = %if.done, %for.body
  %2 = phi i64 [ %8, %for.body ], [ 2, %if.done ]
  %3 = phi double [ %7, %for.body ], [ 0.000000e+00, %if.done ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
  %4 = sitofp i64 %2 to double, !dbg !3036
    #dbg_value(double %4, !3037, !DIExpression(), !3043)
    #dbg_value(double %4, !3045, !DIExpression(), !3048)
    #dbg_value(double %4, !3050, !DIExpression(), !3054)
  %5 = tail call double @llvm.log.f64(double %4), !dbg !3054
  %6 = fmul double %5, 0x3FDBCB7B1526E50E, !dbg !3056
  %7 = fadd double %3, %6, !dbg !3057
    #dbg_value(double %7, !3027, !DIExpression(), !3057)
  %8 = add i64 %2, 1, !dbg !3058
    #dbg_value(i64 %8, !3028, !DIExpression(), !3059)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3060)
  %.not = icmp sgt i64 %8, %n, !dbg !3061
  br i1 %.not, label %for.done, label %for.body, !dbg !3032

for.done:                                         ; preds = %for.body
    #dbg_value(double %7, !3027, !DIExpression(), !3062)
    #dbg_value(double %7, !3063, !DIExpression(), !3067)
  %9 = tail call double @llvm.floor.f64(double %7), !dbg !3067
  %10 = fadd double %9, 1.000000e+00, !dbg !3069
  %abovemin = fcmp oge double %10, 0xC3E0000000000000, !dbg !3070
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !3070
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3070
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3070
  %isnan = fcmp uno double %10, 0.000000e+00, !dbg !3070
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3070
  %normal = fptosi double %10 to i64, !dbg !3070
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3070
  br label %common.ret, !dbg !3071
}
