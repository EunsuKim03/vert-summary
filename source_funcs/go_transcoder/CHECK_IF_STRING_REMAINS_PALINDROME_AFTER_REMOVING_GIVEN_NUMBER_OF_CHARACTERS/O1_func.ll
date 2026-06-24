define noundef i1 @f_gold(ptr nocapture readnone %str.data, i64 %str.len, i64 %str.cap, i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3117)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3117)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3117)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3117)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %str.len, !3116, !DIExpression(), !3119)
    #dbg_value(i64 %str.len, !3116, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3121)
  %.not = icmp sge i64 %str.len, %n, !dbg !3122
  ret i1 %.not, !dbg !3123
}
