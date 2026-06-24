define i64 @f_gold(i64 %p) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %p, !3114, !DIExpression(), !3119)
    #dbg_value(i64 1, !3115, !DIExpression(), !3120)
    #dbg_value(i64 1, !3116, !DIExpression(), !3121)
    #dbg_value(i64 2, !3117, !DIExpression(), !3122)
    #dbg_value(i64 1, !3118, !DIExpression(), !3123)
  %0 = icmp eq i64 %p, 0
    #dbg_value(i64 1, !3118, !DIExpression(), !3124)
  %1 = icmp eq i64 %p, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3125

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %10, %for.body ], [ 2, %entry ]
  %4 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3118, !DIExpression(), !3124)
    #dbg_value(i64 %4, !3115, !DIExpression(), !3126)
    #dbg_value(i64 %2, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %p, !3114, !DIExpression(), !3128)
  %5 = add i64 %2, %4, !dbg !3129
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !3125
  %7 = and i1 %1, %6, !dbg !3125
  %8 = select i1 %7, i64 1, i64 %p, !dbg !3125
  %9 = srem i64 %5, %8, !dbg !3125
    #dbg_value(i64 %2, !3115, !DIExpression(), !3130)
    #dbg_value(i64 %9, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %9, !3116, !DIExpression(), !3132)
  %10 = add i64 %3, 1, !dbg !3133
    #dbg_value(i64 %10, !3117, !DIExpression(), !3133)
  %.not = icmp eq i64 %9, 0, !dbg !3134
  br i1 %.not, label %for.done, label %for.body, !dbg !3135

for.done:                                         ; preds = %for.body
    #dbg_value(i64 %10, !3117, !DIExpression(), !3136)
  ret i64 %10, !dbg !3137

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3125
  unreachable, !dbg !3125
}
