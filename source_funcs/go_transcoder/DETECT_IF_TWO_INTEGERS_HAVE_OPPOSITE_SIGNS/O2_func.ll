define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3030)
  %0 = xor i64 %y, %x, !dbg !3031
  %1 = icmp slt i64 %0, 0, !dbg !3032
  ret i1 %1, !dbg !3033
}
