define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
  %0 = icmp eq i64 %a, 0, !dbg !3114
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
  %1 = icmp eq i64 %b, 0
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !3116
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !3116

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %13, %if.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3116

if.done:                                          ; preds = %entry
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
  %2 = sitofp i64 %a to double, !dbg !3118
    #dbg_value(double %2, !3119, !DIExpression(), !3125)
    #dbg_value(double %2, !3119, !DIExpression(), !3127)
  %3 = call double @llvm.fabs.f64(double %2), !dbg !3128
    #dbg_value(double %3, !3129, !DIExpression(), !3133)
    #dbg_value(double %3, !3129, !DIExpression(), !3135)
    #dbg_value(double %3, !3136, !DIExpression(), !3139)
    #dbg_value(double %3, !3136, !DIExpression(), !3141)
    #dbg_value(double %3, !3142, !DIExpression(), !3146)
  %4 = call double @llvm.log.f64(double %3), !dbg !3146
  %5 = fmul double %4, 0x3FDBCB7B1526E50E, !dbg !3148
    #dbg_value(i64 %b, !3111, !DIExpression(), !3149)
  %6 = sitofp i64 %b to double, !dbg !3150
    #dbg_value(double %6, !3119, !DIExpression(), !3151)
    #dbg_value(double %6, !3119, !DIExpression(), !3153)
  %7 = call double @llvm.fabs.f64(double %6), !dbg !3154
    #dbg_value(double %7, !3129, !DIExpression(), !3155)
    #dbg_value(double %7, !3129, !DIExpression(), !3157)
    #dbg_value(double %7, !3136, !DIExpression(), !3158)
    #dbg_value(double %7, !3136, !DIExpression(), !3160)
    #dbg_value(double %7, !3142, !DIExpression(), !3161)
  %8 = call double @llvm.log.f64(double %7), !dbg !3161
  %9 = fmul double %8, 0x3FDBCB7B1526E50E, !dbg !3163
  %10 = fadd double %5, %9, !dbg !3164
    #dbg_value(double %10, !3165, !DIExpression(), !3169)
  %11 = call double @llvm.floor.f64(double %10), !dbg !3169
  %12 = fadd double %11, 1.000000e+00, !dbg !3171
  %abovemin = fcmp oge double %12, 0xC3E0000000000000, !dbg !3172
  %belowmax = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !3172
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3172
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3172
  %isnan = fcmp uno double %12, 0.000000e+00, !dbg !3172
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3172
  %normal = fptosi double %12 to i64, !dbg !3172
  %13 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3172
  br label %common.ret, !dbg !3173
}
