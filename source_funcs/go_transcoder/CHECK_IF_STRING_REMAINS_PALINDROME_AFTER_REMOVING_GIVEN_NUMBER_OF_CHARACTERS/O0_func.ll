define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4935
    #dbg_value(ptr %str.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %str.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %str.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value(i64 %n, !4933, !DIExpression(), !4935)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
    #dbg_value(i64 %len, !4934, !DIExpression(), !4938)
    #dbg_value(i64 %len, !4934, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4933, !DIExpression(), !4940)
  %3 = icmp sge i64 %len, %n, !dbg !4941
  br i1 %3, label %if.then, label %if.done, !dbg !4942

if.then:                                          ; preds = %entry
  ret i1 true, !dbg !4943

if.done:                                          ; preds = %entry
  ret i1 false, !dbg !4944
}
