define i64 @f_gold(i64 %x, i64 %p1, i64 %p2, i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %p1, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %p2, !3112, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3113, !DIExpression(), !3118)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %p1, !3111, !DIExpression(), !3120)
  %shift.overflow = icmp ugt i64 %p1, 63, !dbg !3121
  %0 = lshr i64 %x, %p1, !dbg !3121
  %shift.result = select i1 %shift.overflow, i64 0, i64 %0, !dbg !3121
    #dbg_value(i64 %n, !3113, !DIExpression(), !3122)
  %shift.overflow1 = icmp ugt i64 %n, 63, !dbg !3123
  %notmask = shl nsw i64 -1, %n, !dbg !3124
  %1 = xor i64 %notmask, -1, !dbg !3124
  %2 = select i1 %shift.overflow1, i64 -1, i64 %1, !dbg !3123
    #dbg_value(!DIArgList(i64 %shift.result, i64 %2), !3114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3125)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3126)
    #dbg_value(i64 %p2, !3112, !DIExpression(), !3127)
  %shift.overflow3 = icmp ugt i64 %p2, 63, !dbg !3128
  %3 = lshr i64 %x, %p2, !dbg !3128
  %shift.result4 = select i1 %shift.overflow3, i64 0, i64 %3, !dbg !3128
    #dbg_value(i64 %n, !3113, !DIExpression(), !3129)
    #dbg_value(!DIArgList(i64 %shift.result4, i64 %2), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3130)
    #dbg_value(!DIArgList(i64 %shift.result, i64 %2), !3114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3131)
    #dbg_value(!DIArgList(i64 %shift.result4, i64 %2), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !3132)
  %4 = xor i64 %shift.result4, %shift.result, !dbg !3133
  %5 = and i64 %4, %2, !dbg !3133
    #dbg_value(i64 %5, !3116, !DIExpression(), !3134)
    #dbg_value(i64 %5, !3116, !DIExpression(), !3135)
    #dbg_value(i64 %p1, !3111, !DIExpression(), !3136)
  %6 = shl i64 %5, %p1, !dbg !3137
  %shift.result8 = select i1 %shift.overflow, i64 0, i64 %6, !dbg !3137
    #dbg_value(i64 %5, !3116, !DIExpression(), !3138)
    #dbg_value(i64 %p2, !3112, !DIExpression(), !3139)
  %7 = shl i64 %5, %p2, !dbg !3140
  %shift.result10 = select i1 %shift.overflow3, i64 0, i64 %7, !dbg !3140
  %8 = or i64 %shift.result8, %shift.result10, !dbg !3141
    #dbg_value(i64 %8, !3116, !DIExpression(), !3142)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3143)
    #dbg_value(i64 %8, !3116, !DIExpression(), !3144)
  %9 = xor i64 %8, %x, !dbg !3145
    #dbg_value(i64 %9, !3117, !DIExpression(), !3146)
    #dbg_value(i64 %9, !3117, !DIExpression(), !3147)
  ret i64 %9, !dbg !3148
}
