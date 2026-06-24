define i64 @f_gold(i64 %x, i64 %p1, i64 %p2, i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3034)
    #dbg_value(i64 %p1, !3027, !DIExpression(), !3034)
    #dbg_value(i64 %p2, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %n, !3029, !DIExpression(), !3034)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %p1, !3027, !DIExpression(), !3036)
  %shift.overflow = icmp ugt i64 %p1, 63, !dbg !3037
  %0 = lshr i64 %x, %p1, !dbg !3037
  %shift.result = select i1 %shift.overflow, i64 0, i64 %0, !dbg !3037
    #dbg_value(i64 %n, !3029, !DIExpression(), !3038)
  %shift.overflow1 = icmp ugt i64 %n, 63, !dbg !3039
  %notmask = shl nsw i64 -1, %n, !dbg !3040
  %1 = xor i64 %notmask, -1, !dbg !3040
  %2 = select i1 %shift.overflow1, i64 -1, i64 %1, !dbg !3039
    #dbg_value(!DIArgList(i64 %shift.result, i64 %2), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3041)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3042)
    #dbg_value(i64 %p2, !3028, !DIExpression(), !3043)
  %shift.overflow3 = icmp ugt i64 %p2, 63, !dbg !3044
  %3 = lshr i64 %x, %p2, !dbg !3044
  %shift.result4 = select i1 %shift.overflow3, i64 0, i64 %3, !dbg !3044
    #dbg_value(i64 %n, !3029, !DIExpression(), !3045)
    #dbg_value(!DIArgList(i64 %shift.result4, i64 %2), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3046)
    #dbg_value(!DIArgList(i64 %shift.result, i64 %2), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3047)
    #dbg_value(!DIArgList(i64 %shift.result4, i64 %2), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3048)
  %4 = xor i64 %shift.result4, %shift.result, !dbg !3049
  %5 = and i64 %4, %2, !dbg !3049
    #dbg_value(i64 %5, !3032, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3032, !DIExpression(), !3051)
    #dbg_value(i64 %p1, !3027, !DIExpression(), !3052)
  %6 = shl i64 %5, %p1, !dbg !3053
  %shift.result8 = select i1 %shift.overflow, i64 0, i64 %6, !dbg !3053
    #dbg_value(i64 %5, !3032, !DIExpression(), !3054)
    #dbg_value(i64 %p2, !3028, !DIExpression(), !3055)
  %7 = shl i64 %5, %p2, !dbg !3056
  %shift.result10 = select i1 %shift.overflow3, i64 0, i64 %7, !dbg !3056
  %8 = or i64 %shift.result8, %shift.result10, !dbg !3057
    #dbg_value(i64 %8, !3032, !DIExpression(), !3058)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3059)
    #dbg_value(i64 %8, !3032, !DIExpression(), !3060)
  %9 = xor i64 %8, %x, !dbg !3061
    #dbg_value(i64 %9, !3033, !DIExpression(), !3062)
    #dbg_value(i64 %9, !3033, !DIExpression(), !3063)
  ret i64 %9, !dbg !3064
}
