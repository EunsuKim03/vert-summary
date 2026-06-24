define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3114)
    #dbg_value(i64 0, !3112, !DIExpression(), !3115)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3117)
  %0 = mul i64 %b, %a, !dbg !3118
  %1 = sitofp i64 %0 to double, !dbg !3119
    #dbg_value(double %1, !3120, !DIExpression(), !3126)
    #dbg_value(double %1, !3120, !DIExpression(), !3128)
  %2 = call double @llvm.fabs.f64(double %1), !dbg !3129
  %belowmax = fcmp ole double %2, 0x43DFFFFFFFFFFFFE, !dbg !3130
  %normal = fptosi double %2 to i64, !dbg !3130
  %3 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3130
    #dbg_value(i64 %3, !3113, !DIExpression(), !3131)
    #dbg_value(i64 %3, !3113, !DIExpression(), !3132)
  %4 = icmp eq i64 %3, 0, !dbg !3133
  br i1 %4, label %common.ret, label %for.loop.preheader, !dbg !3134

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %3, !3113, !DIExpression(), !3135)
  %5 = icmp sgt i64 %3, 0, !dbg !3136
  br i1 %5, label %for.body, label %common.ret, !dbg !3134

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ 0, %for.loop.preheader ], [ %8, %for.body ]
  ret i64 %common.ret.op, !dbg !3134

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %6 = phi i64 [ %9, %for.body ], [ %3, %for.loop.preheader ]
  %7 = phi i64 [ %8, %for.body ], [ 0, %for.loop.preheader ]
    #dbg_value(i64 %6, !3113, !DIExpression(), !3135)
  %8 = add i64 %7, 1, !dbg !3137
    #dbg_value(i64 %8, !3112, !DIExpression(), !3137)
  %9 = udiv i64 %6, 10, !dbg !3138
    #dbg_value(i64 %9, !3113, !DIExpression(), !3135)
  %.not = icmp samesign ult i64 %6, 10, !dbg !3136
  br i1 %.not, label %common.ret, label %for.body, !dbg !3134
}
