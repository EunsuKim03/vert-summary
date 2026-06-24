define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 1, !3111, !DIExpression(), !3116)
    #dbg_value(i64 2, !3112, !DIExpression(), !3117)
    #dbg_value(i64 0, !3113, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3119)
  %0 = icmp slt i64 %n, 3, !dbg !3120
  br i1 %0, label %common.ret, label %for.body, !dbg !3121

common.ret:                                       ; preds = %for.body, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %6, %for.body ]
  ret i64 %common.ret.op, !dbg !3121

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %7, %for.body ], [ 3, %entry ]
  %2 = phi i64 [ %6, %for.body ], [ 2, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %1, !3114, !DIExpression(), !3123)
  %4 = add i64 %1, -1, !dbg !3124
    #dbg_value(i64 %3, !3111, !DIExpression(), !3125)
  %5 = mul i64 %4, %3, !dbg !3126
  %6 = add i64 %5, %2, !dbg !3127
    #dbg_value(i64 %2, !3111, !DIExpression(), !3128)
    #dbg_value(i64 %6, !3113, !DIExpression(), !3129)
    #dbg_value(i64 %6, !3112, !DIExpression(), !3130)
  %7 = add i64 %1, 1, !dbg !3131
    #dbg_value(i64 %7, !3114, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3133)
  %.not = icmp sgt i64 %7, %n, !dbg !3134
  br i1 %.not, label %common.ret, label %for.body, !dbg !3121
}
