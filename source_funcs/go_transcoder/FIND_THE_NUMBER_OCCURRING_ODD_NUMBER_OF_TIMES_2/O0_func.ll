define i64 @f_gold(ptr nocapture %ar.data, i64 %ar.len, i64 %ar.cap, i64 %ar_size) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %ar.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %ar.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %ar.cap, 2, !dbg !4940
    #dbg_value(ptr %ar.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %ar.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %ar.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %ar_size, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !4941
  %4 = phi i64 [ 0, %entry ], [ %10, %lookup.next ], !dbg !4942
    #dbg_value(i64 %4, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %ar_size, !4937, !DIExpression(), !4945)
  %5 = icmp slt i64 %4, %ar_size, !dbg !4946
  br i1 %5, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4947)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4949)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4950
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4950
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4950
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4950

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4950
  %8 = load i64, ptr %7, align 8, !dbg !4950
  %9 = xor i64 %3, %8, !dbg !4951
    #dbg_value(i64 %9, !4938, !DIExpression(), !4952)
  %10 = add i64 %4, 1, !dbg !4953
    #dbg_value(i64 %10, !4939, !DIExpression(), !4953)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4954)
  ret i64 %3, !dbg !4955

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950
}
