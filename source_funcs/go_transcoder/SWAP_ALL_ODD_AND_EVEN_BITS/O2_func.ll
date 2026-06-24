define range(i64 0, 4294967296) i64 @f_gold(i64 %x) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %x, !3027, !DIExpression(DW_OP_constu, 2863311530, DW_OP_and, DW_OP_stack_value), !3031)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %x, !3028, !DIExpression(DW_OP_constu, 1431655765, DW_OP_and, DW_OP_stack_value), !3033)
  %0 = lshr i64 %x, 1, !dbg !3034
  %1 = and i64 %0, 1431655765, !dbg !3034
    #dbg_value(i64 %1, !3027, !DIExpression(), !3034)
  %2 = shl i64 %x, 1, !dbg !3035
  %3 = and i64 %2, 2863311530, !dbg !3035
    #dbg_value(i64 %3, !3028, !DIExpression(), !3035)
    #dbg_value(i64 %1, !3027, !DIExpression(), !3036)
    #dbg_value(i64 %3, !3028, !DIExpression(), !3037)
  %4 = or disjoint i64 %1, %3, !dbg !3038
  ret i64 %4, !dbg !3039
}
