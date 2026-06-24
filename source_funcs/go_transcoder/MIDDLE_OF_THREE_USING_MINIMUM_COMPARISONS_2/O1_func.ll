define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3116)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3118)
  %0 = sub i64 %a, %b, !dbg !3119
    #dbg_value(i64 %0, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3122)
  %1 = sub i64 %b, %c, !dbg !3123
    #dbg_value(i64 %1, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3125)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3126)
    #dbg_value(!DIArgList(i64 %a, i64 %c), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3127)
    #dbg_value(i64 %0, !3113, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3114, !DIExpression(), !3129)
  %2 = mul i64 %1, %0, !dbg !3130
  %3 = icmp sgt i64 %2, 0, !dbg !3131
  %4 = sub i64 %a, %c, !dbg !3132
  %5 = mul i64 %4, %0, !dbg !3132
  %6 = icmp sgt i64 %5, 0, !dbg !3132
  %c.a = select i1 %6, i64 %c, i64 %a, !dbg !3132
  %common.ret.op = select i1 %3, i64 %b, i64 %c.a, !dbg !3132
  ret i64 %common.ret.op, !dbg !3132
}
