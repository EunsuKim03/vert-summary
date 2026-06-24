define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = icmp slt i64 %n, 0, !dbg !3115
  br i1 %0, label %common.ret, label %if.done, !dbg !3116

common.ret:                                       ; preds = %if.done, %entry, %for.done
  %common.ret.op = phi i64 [ %11, %for.done ], [ 0, %entry ], [ 1, %if.done ]
  ret i64 %common.ret.op, !dbg !3116

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %1 = icmp slt i64 %n, 2, !dbg !3118
  br i1 %1, label %common.ret, label %for.body, !dbg !3116

for.body:                                         ; preds = %if.done, %for.body
  %2 = phi i64 [ %8, %for.body ], [ 2, %if.done ]
  %3 = phi double [ %7, %for.body ], [ 0.000000e+00, %if.done ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3119)
  %4 = sitofp i64 %2 to double, !dbg !3120
    #dbg_value(double %4, !3121, !DIExpression(), !3127)
    #dbg_value(double %4, !3129, !DIExpression(), !3132)
    #dbg_value(double %4, !3134, !DIExpression(), !3138)
  %5 = call double @llvm.log.f64(double %4), !dbg !3138
  %6 = fmul double %5, 0x3FDBCB7B1526E50E, !dbg !3140
  %7 = fadd double %3, %6, !dbg !3141
    #dbg_value(double %7, !3111, !DIExpression(), !3141)
  %8 = add i64 %2, 1, !dbg !3142
    #dbg_value(i64 %8, !3112, !DIExpression(), !3143)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3144)
  %.not = icmp sgt i64 %8, %n, !dbg !3145
  br i1 %.not, label %for.done, label %for.body, !dbg !3116

for.done:                                         ; preds = %for.body
    #dbg_value(double %7, !3111, !DIExpression(), !3146)
    #dbg_value(double %7, !3147, !DIExpression(), !3151)
  %9 = call double @llvm.floor.f64(double %7), !dbg !3151
  %10 = fadd double %9, 1.000000e+00, !dbg !3153
  %abovemin = fcmp oge double %10, 0xC3E0000000000000, !dbg !3154
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !3154
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3154
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3154
  %isnan = fcmp uno double %10, 0.000000e+00, !dbg !3154
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3154
  %normal = fptosi double %10 to i64, !dbg !3154
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3154
  br label %common.ret, !dbg !3155
}
