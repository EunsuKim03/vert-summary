define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3114)
  %0 = xor i64 %y, %x, !dbg !3115
  %1 = icmp slt i64 %0, 0, !dbg !3116
  ret i1 %1, !dbg !3117
}
