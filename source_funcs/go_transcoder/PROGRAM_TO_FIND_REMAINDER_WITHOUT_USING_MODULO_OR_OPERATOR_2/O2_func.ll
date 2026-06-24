define range(i64 -9223372036854775808, 9223372036854775807) i64 @f_gold(i64 %num, i64 %divisor) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %num, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %divisor, !3027, !DIExpression(), !3028)
  br label %for.loop, !dbg !3029

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ %num, %entry ], [ %1, %for.loop ], !dbg !3030
    #dbg_value(i64 %0, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %divisor, !3027, !DIExpression(), !3032)
  %.not = icmp slt i64 %0, %divisor, !dbg !3033
    #dbg_value(i64 %divisor, !3027, !DIExpression(), !3034)
  %1 = sub i64 %0, %divisor, !dbg !3035
    #dbg_value(i64 %1, !3026, !DIExpression(), !3035)
  br i1 %.not, label %for.done, label %for.loop, !dbg !3029

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3026, !DIExpression(), !3036)
  ret i64 %0, !dbg !3037
}
