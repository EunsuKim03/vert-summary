define range(i64 0, 256) i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3112)
  %0 = shl i64 %x, 4, !dbg !3113
  %1 = and i64 %0, 240, !dbg !3113
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
  %2 = lshr i64 %x, 4, !dbg !3115
  %3 = and i64 %2, 15, !dbg !3115
  %4 = or disjoint i64 %1, %3, !dbg !3116
  ret i64 %4, !dbg !3117
}
