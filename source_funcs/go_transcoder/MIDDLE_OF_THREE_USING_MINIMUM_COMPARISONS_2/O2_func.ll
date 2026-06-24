define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3032)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3034)
  %0 = sub i64 %a, %b, !dbg !3035
    #dbg_value(i64 %0, !3029, !DIExpression(), !3036)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3038)
  %1 = sub i64 %b, %c, !dbg !3039
    #dbg_value(i64 %1, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3041)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3042)
    #dbg_value(!DIArgList(i64 %a, i64 %c), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3043)
    #dbg_value(i64 %0, !3029, !DIExpression(), !3044)
    #dbg_value(i64 %1, !3030, !DIExpression(), !3045)
  %2 = mul i64 %1, %0, !dbg !3046
  %3 = icmp sgt i64 %2, 0, !dbg !3047
  %4 = sub i64 %a, %c, !dbg !3048
  %5 = mul i64 %4, %0, !dbg !3048
  %6 = icmp sgt i64 %5, 0, !dbg !3048
  %c.a = select i1 %6, i64 %c, i64 %a, !dbg !3048
  %common.ret.op = select i1 %3, i64 %b, i64 %c.a, !dbg !3048
  ret i64 %common.ret.op, !dbg !3048
}
