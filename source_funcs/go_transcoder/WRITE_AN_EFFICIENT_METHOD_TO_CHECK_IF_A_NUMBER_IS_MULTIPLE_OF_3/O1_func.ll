define range(i64 0, 2) i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 0, !3112, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %spec.select = call i64 @llvm.abs.i64(i64 %n, i1 false), !dbg !3117
    #dbg_value(i64 %spec.select, !3110, !DIExpression(), !3118)
  switch i64 %spec.select, label %for.body [
    i64 0, label %common.ret
    i64 1, label %if.then3
  ], !dbg !3117

common.ret:                                       ; preds = %entry, %for.done, %if.then3
  %common.ret.op = phi i64 [ 0, %if.then3 ], [ %12, %for.done ], [ 1, %entry ]
  ret i64 %common.ret.op, !dbg !3117

if.then3:                                         ; preds = %entry
  br label %common.ret, !dbg !3119

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %6, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %spec.select5, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %7, %for.body ], [ %spec.select, %entry ]
    #dbg_value(i64 %2, !3110, !DIExpression(), !3120)
  %3 = and i64 %2, 1, !dbg !3121
  %spec.select5 = add i64 %1, %3, !dbg !3117
  %4 = lshr i64 %2, 1, !dbg !3117
  %5 = and i64 %4, 1, !dbg !3117
  %6 = add i64 %0, %5, !dbg !3117
  %7 = ashr i64 %2, 2, !dbg !3122
    #dbg_value(i64 %7, !3110, !DIExpression(), !3123)
  %.not = icmp ult i64 %2, 4, !dbg !3124
  br i1 %.not, label %for.done, label %for.body, !dbg !3117

for.done:                                         ; preds = %for.body
    #dbg_value(i64 %spec.select5, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %6, !3112, !DIExpression(), !3126)
  %8 = sub i64 %spec.select5, %6, !dbg !3127
  %9 = sitofp i64 %8 to double, !dbg !3128
    #dbg_value(double %9, !3129, !DIExpression(), !3135)
    #dbg_value(double %9, !3129, !DIExpression(), !3137)
  %10 = call double @llvm.fabs.f64(double %9), !dbg !3138
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !3139
  %normal = fptosi double %10 to i64, !dbg !3139
  %11 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3139
  %12 = call i64 @f_gold(i64 %11), !dbg !3140
  br label %common.ret, !dbg !3141
}
