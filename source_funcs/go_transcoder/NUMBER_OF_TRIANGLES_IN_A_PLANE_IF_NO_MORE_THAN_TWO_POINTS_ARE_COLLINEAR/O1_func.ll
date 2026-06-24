define range(i64 -1537228672809129301, 1537228672809129302) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = add i64 %n, -1, !dbg !3114
  %1 = mul i64 %0, %n, !dbg !3115
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %2 = add i64 %n, -2, !dbg !3117
  %3 = mul i64 %1, %2, !dbg !3118
  %4 = sdiv i64 %3, 6, !dbg !3119
  ret i64 %4, !dbg !3120
}
