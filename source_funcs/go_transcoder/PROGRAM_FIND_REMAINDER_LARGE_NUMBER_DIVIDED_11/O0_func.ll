define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4935
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
    #dbg_value(i64 %len, !4931, !DIExpression(), !4938)
    #dbg_value(i64 0, !4932, !DIExpression(), !4939)
    #dbg_value(i64 0, !4933, !DIExpression(), !4940)
    #dbg_value(i64 0, !4934, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %16, %lookup.next ], !dbg !4940
  %4 = phi i64 [ 0, %entry ], [ %17, %lookup.next ], !dbg !4941
    #dbg_value(i64 %4, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4944)
  %5 = icmp slt i64 %4, %len, !dbg !4945
  br i1 %5, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4933, !DIExpression(), !4946)
  %6 = mul i64 %3, 10, !dbg !4947
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4934, !DIExpression(), !4949)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4950
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4950
  %7 = icmp uge i64 %4, %indexaddr.len, !dbg !4950
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4950

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4950
  %9 = load i8, ptr %8, align 1, !dbg !4950
  %10 = sub i8 %9, 48, !dbg !4951
  %11 = zext i8 %10 to i64, !dbg !4952
  %12 = add i64 %6, %11, !dbg !4953
    #dbg_value(i64 %12, !4932, !DIExpression(), !4954)
    #dbg_value(i64 %12, !4932, !DIExpression(), !4955)
  %13 = icmp eq i64 %12, -9223372036854775808, !dbg !4956
  %14 = and i1 false, %13, !dbg !4956
  %15 = select i1 %14, i64 1, i64 11, !dbg !4956
  %16 = srem i64 %12, %15, !dbg !4956
    #dbg_value(i64 %16, !4933, !DIExpression(), !4957)
  %17 = add i64 %4, 1, !dbg !4958
    #dbg_value(i64 %17, !4934, !DIExpression(), !4958)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4933, !DIExpression(), !4959)
  ret i64 %3, !dbg !4960

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950
}
