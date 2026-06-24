define range(i64 0, 256) i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3028)
  %0 = shl i64 %x, 4, !dbg !3029
  %1 = and i64 %0, 240, !dbg !3029
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
  %2 = lshr i64 %x, 4, !dbg !3031
  %3 = and i64 %2, 15, !dbg !3031
  %4 = or disjoint i64 %1, %3, !dbg !3032
  ret i64 %4, !dbg !3033
}
