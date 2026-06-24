define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4940
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
    #dbg_value(i64 1, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %lookup.next4, %entry
  %3 = phi i64 [ 1, %entry ], [ %13, %lookup.next4 ], !dbg !4941
  %4 = phi i64 [ 0, %entry ], [ %14, %lookup.next4 ], !dbg !4942
    #dbg_value(i64 %4, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
  %5 = icmp slt i64 %4, %n, !dbg !4946
  br i1 %5, label %cond.true, label %for.done, !dbg !4943

cond.true:                                        ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4947)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4948)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4949
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4949
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4949
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4949

lookup.next:                                      ; preds = %cond.true
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4949
  %8 = load i64, ptr %7, align 8, !dbg !4949
    #dbg_value(i64 %3, !4938, !DIExpression(), !4950)
  %9 = icmp sle i64 %8, %3, !dbg !4951
  br i1 %9, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !4938, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4954)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %10 = icmp uge i64 %4, %indexaddr.len2, !dbg !4955
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4955

lookup.next4:                                     ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %4, !dbg !4955
  %12 = load i64, ptr %11, align 8, !dbg !4955
  %13 = add i64 %3, %12, !dbg !4956
    #dbg_value(i64 %13, !4938, !DIExpression(), !4957)
  %14 = add i64 %4, 1, !dbg !4958
    #dbg_value(i64 %14, !4939, !DIExpression(), !4958)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %lookup.next, %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4959)
  ret i64 %3, !dbg !4960

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
