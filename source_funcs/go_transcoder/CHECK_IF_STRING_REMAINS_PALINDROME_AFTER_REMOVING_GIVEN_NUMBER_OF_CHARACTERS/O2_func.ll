define noundef i1 @f_gold(ptr nocapture readnone %str.data, i64 %str.len, i64 %str.cap, i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3033)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3033)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3033)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3033)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %str.len, !3032, !DIExpression(), !3035)
    #dbg_value(i64 %str.len, !3032, !DIExpression(), !3036)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3037)
  %.not = icmp sge i64 %str.len, %n, !dbg !3038
  ret i1 %.not, !dbg !3039
}
