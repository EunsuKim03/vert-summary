define noundef i1 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %num, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3114)
  %num.off = add i64 %num, 9, !dbg !3115
  %0 = icmp ult i64 %num.off, 19, !dbg !3115
  br i1 %0, label %common.ret, label %for.loop, !dbg !3116

common.ret:                                       ; preds = %for.loop, %if.done, %entry
  %common.ret.op = phi i1 [ true, %entry ], [ false, %if.done ], [ true, %for.loop ]
  ret i1 %common.ret.op, !dbg !3116

for.loop:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %4, %if.done ], [ %num, %entry ], !dbg !3117
    #dbg_value(i64 %1, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3119)
  %.off = add i64 %1, 9
  %2 = icmp ult i64 %.off, 19
  br i1 %2, label %common.ret, label %if.done, !dbg !3116

if.done:                                          ; preds = %for.loop
    #dbg_value(i64 %1, !3110, !DIExpression(), !3120)
  %3 = srem i64 %1, 10, !dbg !3121
    #dbg_value(i64 %3, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %1, !3110, !DIExpression(), !3123)
  %4 = sdiv i64 %1, 10, !dbg !3124
  %5 = srem i64 %4, 10, !dbg !3125
    #dbg_value(i64 %5, !3112, !DIExpression(), !3126)
    #dbg_value(i64 %5, !3112, !DIExpression(), !3127)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3128)
  %6 = sub nsw i64 %5, %3, !dbg !3129
  %7 = sitofp i64 %6 to double, !dbg !3130
    #dbg_value(double %7, !3131, !DIExpression(), !3137)
    #dbg_value(double %7, !3131, !DIExpression(), !3139)
  %8 = call double @llvm.fabs.f64(double %7), !dbg !3140
  %9 = fcmp ogt double %8, 1.000000e+00, !dbg !3141
  br i1 %9, label %common.ret, label %for.loop, !dbg !3116
}
