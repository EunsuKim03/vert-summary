define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readnone %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3116)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3116)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3116)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3119)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3120)
  %0 = add i64 %str.len, 1, !dbg !3121
  %1 = mul i64 %0, %str.len, !dbg !3122
  %2 = sdiv i64 %1, 2, !dbg !3123
  ret i64 %2, !dbg !3124
}
