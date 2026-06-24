define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4940
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !4941
  %4 = phi i64 [ 0, %entry ], [ %14, %lookup.next ], !dbg !4942
    #dbg_value(i64 %4, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
  %5 = icmp slt i64 %4, %n, !dbg !4946
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
  %9 = add i64 %3, %8, !dbg !4951
  %10 = icmp eq i64 %9, -9223372036854775808, !dbg !4952
  %11 = and i1 false, %10, !dbg !4952
  %12 = select i1 %11, i64 1, i64 3, !dbg !4952
  %13 = srem i64 %9, %12, !dbg !4952
    #dbg_value(i64 %13, !4938, !DIExpression(), !4953)
  %14 = add i64 %4, 1, !dbg !4954
    #dbg_value(i64 %14, !4939, !DIExpression(), !4954)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4955)
  %15 = icmp eq i64 %3, 0, !dbg !4956
  ret i1 %15, !dbg !4957

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950
}
