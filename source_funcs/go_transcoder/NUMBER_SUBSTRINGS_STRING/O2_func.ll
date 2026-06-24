define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readnone %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3032)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3032)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3032)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3035)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3036)
  %0 = add i64 %str.len, 1, !dbg !3037
  %1 = mul i64 %0, %str.len, !dbg !3038
  %2 = sdiv i64 %1, 2, !dbg !3039
  ret i64 %2, !dbg !3040
}
