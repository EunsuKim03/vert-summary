define i64 @f_gold(i64 %input, i64 %unlock_code) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %input, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %unlock_code, !3027, !DIExpression(), !3031)
    #dbg_value(i64 0, !3028, !DIExpression(), !3032)
    #dbg_value(i64 0, !3029, !DIExpression(), !3033)
    #dbg_value(i64 0, !3030, !DIExpression(), !3034)
  %.not2 = icmp eq i64 %input, 0, !dbg !3035
  %.not13 = icmp eq i64 %unlock_code, 0
  %or.cond4 = select i1 %.not2, i1 %.not13, i1 false, !dbg !3036
  br i1 %or.cond4, label %for.done, label %for.body, !dbg !3036

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %11, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %13, %for.body ], [ %unlock_code, %entry ]
  %2 = phi i64 [ %12, %for.body ], [ %input, %entry ]
    #dbg_value(i64 %1, !3027, !DIExpression(), !3037)
    #dbg_value(i64 %2, !3026, !DIExpression(), !3038)
  %3 = srem i64 %2, 10, !dbg !3039
    #dbg_value(i64 %3, !3029, !DIExpression(), !3040)
  %4 = srem i64 %1, 10, !dbg !3041
    #dbg_value(i64 %4, !3030, !DIExpression(), !3042)
  %5 = sub nsw i64 %3, %4, !dbg !3043
  %6 = sitofp i64 %5 to double, !dbg !3044
    #dbg_value(double %6, !3045, !DIExpression(), !3051)
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !3053
  %belowmax = fcmp ole double %7, 0x43DFFFFFFFFFFFFE, !dbg !3054
  %normal = fptosi double %7 to i64, !dbg !3054
  %8 = fsub double 1.000000e+01, %7, !dbg !3055
  %abovemin1 = fcmp oge double %8, 0xC3E0000000000000, !dbg !3056
  %belowmax2 = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3056
  %normal7 = fptosi double %8 to i64, !dbg !3056
  %saturated4 = select i1 %belowmax2, i64 %normal7, i64 9223372036854775807, !dbg !3056
  %9 = select i1 %abovemin1, i64 %saturated4, i64 -9223372036854775808, !dbg !3056
    #dbg_value(i64 poison, !3057, !DIExpression(), !3061)
    #dbg_value(i64 %9, !3060, !DIExpression(), !3063)
  %10 = tail call i64 @llvm.smin.i64(i64 %normal, i64 %9), !dbg !3064
  %x.y.i = select i1 %belowmax, i64 %10, i64 %9, !dbg !3054
  %11 = add i64 %x.y.i, %0, !dbg !3065
    #dbg_value(i64 %11, !3028, !DIExpression(), !3065)
  %12 = sdiv i64 %2, 10, !dbg !3066
    #dbg_value(i64 %12, !3026, !DIExpression(), !3066)
  %13 = sdiv i64 %1, 10, !dbg !3067
    #dbg_value(i64 %13, !3027, !DIExpression(), !3067)
  %.off = add i64 %2, 9, !dbg !3035
  %.not = icmp ult i64 %.off, 19, !dbg !3035
  %.off5 = add i64 %1, 9
  %.not1 = icmp ult i64 %.off5, 19
  %or.cond = select i1 %.not, i1 %.not1, i1 false, !dbg !3036
  br i1 %or.cond, label %for.done, label %for.body, !dbg !3036

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %11, %for.body ], !dbg !3032
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3068)
  ret i64 %.lcssa, !dbg !3069
}
