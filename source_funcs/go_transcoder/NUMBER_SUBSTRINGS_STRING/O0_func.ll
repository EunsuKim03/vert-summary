define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4932
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4932
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4932
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4932)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4932)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4932)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4933)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4934
    #dbg_value(i64 %len, !4931, !DIExpression(), !4935)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4936)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4937)
  %3 = add i64 %len, 1, !dbg !4938
  %4 = mul i64 %len, %3, !dbg !4939
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4940
  %6 = and i1 false, %5, !dbg !4940
  %7 = select i1 %6, i64 1, i64 2, !dbg !4940
  %8 = sdiv i64 %4, %7, !dbg !4940
  ret i64 %8, !dbg !4941
}
