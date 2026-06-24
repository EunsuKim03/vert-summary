define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4940
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 1, !4939, !DIExpression(), !4942)
    #dbg_value(i64 2, !4938, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 2, %entry ], [ %13, %lookup.next ], !dbg !4941
  %4 = phi i64 [ 1, %entry ], [ %12, %lookup.next ], !dbg !4942
    #dbg_value(i64 %3, !4938, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  %5 = add i64 %n, 1, !dbg !4947
  %6 = icmp sle i64 %3, %5, !dbg !4948
  br i1 %6, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4949)
  %7 = add i64 %4, %3, !dbg !4950
    #dbg_value(i64 %7, !4939, !DIExpression(), !4950)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4952)
  %8 = sub i64 %3, 2, !dbg !4953
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %9 = icmp uge i64 %8, %indexaddr.len, !dbg !4954
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4954

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4954
  %11 = load i64, ptr %10, align 8, !dbg !4954
  %12 = sub i64 %7, %11, !dbg !4955
    #dbg_value(i64 %12, !4939, !DIExpression(), !4955)
  %13 = add i64 %3, 1, !dbg !4956
    #dbg_value(i64 %13, !4938, !DIExpression(), !4956)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4957)
  ret i64 %4, !dbg !4958

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954
}
