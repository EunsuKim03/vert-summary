define i64 @f_gold(i64 %N, i64 %K) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %N, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3118)
    #dbg_value(i64 0, !3116, !DIExpression(), !3119)
    #dbg_value(i64 1, !3117, !DIExpression(), !3120)
  %.not2 = icmp slt i64 %N, 1, !dbg !3121
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3122

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %K, 0
  %1 = icmp eq i64 %K, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3123

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %for.body.lr.ph ]
  %3 = phi i64 [ %8, %for.body ], [ 0, %for.body.lr.ph ]
    #dbg_value(i64 %2, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %2, !3117, !DIExpression(), !3125)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3126)
  %4 = icmp eq i64 %2, -9223372036854775808, !dbg !3123
  %5 = and i1 %1, %4, !dbg !3123
  %6 = select i1 %5, i64 1, i64 %K, !dbg !3123
  %7 = srem i64 %2, %6, !dbg !3123
  %8 = add i64 %7, %3, !dbg !3127
    #dbg_value(i64 %8, !3116, !DIExpression(), !3127)
  %9 = add i64 %2, 1, !dbg !3128
    #dbg_value(i64 %9, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %N, !3114, !DIExpression(), !3129)
  %.not = icmp sgt i64 %9, %N, !dbg !3121
  br i1 %.not, label %for.done, label %for.body, !dbg !3122

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3130)
  ret i64 %.lcssa, !dbg !3131

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3123
  unreachable, !dbg !3123
}
