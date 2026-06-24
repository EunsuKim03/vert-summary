define i64 @f_gold(i64 %p) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %p, !3030, !DIExpression(), !3035)
    #dbg_value(i64 1, !3031, !DIExpression(), !3036)
    #dbg_value(i64 1, !3032, !DIExpression(), !3037)
    #dbg_value(i64 2, !3033, !DIExpression(), !3038)
    #dbg_value(i64 1, !3034, !DIExpression(), !3039)
  %0 = icmp eq i64 %p, 0
    #dbg_value(i64 1, !3034, !DIExpression(), !3040)
  %1 = icmp eq i64 %p, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3041

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %10, %for.body ], [ 2, %entry ]
  %4 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3034, !DIExpression(), !3040)
    #dbg_value(i64 %4, !3031, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3032, !DIExpression(), !3043)
    #dbg_value(i64 %p, !3030, !DIExpression(), !3044)
  %5 = add i64 %2, %4, !dbg !3045
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !3041
  %7 = and i1 %1, %6, !dbg !3041
  %8 = select i1 %7, i64 1, i64 %p, !dbg !3041
  %9 = srem i64 %5, %8, !dbg !3041
    #dbg_value(i64 %2, !3031, !DIExpression(), !3046)
    #dbg_value(i64 %9, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %9, !3032, !DIExpression(), !3048)
  %10 = add i64 %3, 1, !dbg !3049
    #dbg_value(i64 %10, !3033, !DIExpression(), !3049)
  %.not = icmp eq i64 %9, 0, !dbg !3050
  br i1 %.not, label %for.done, label %for.body, !dbg !3051

for.done:                                         ; preds = %for.body
    #dbg_value(i64 %10, !3033, !DIExpression(), !3052)
  ret i64 %10, !dbg !3053

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3041
  unreachable, !dbg !3041
}
