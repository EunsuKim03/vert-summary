define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4939
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4939
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4939
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4939)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4939)
    #dbg_value(i64 0, !4938, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %9, %if.done ], !dbg !4940
    #dbg_value(i64 %3, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4944)
  %4 = icmp slt i64 %3, %n, !dbg !4945
  br i1 %4, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4947)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4948
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4948
  %5 = icmp uge i64 %3, %indexaddr.len, !dbg !4948
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4948

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4948
  %7 = load i64, ptr %6, align 8, !dbg !4948
    #dbg_value(i64 %3, !4938, !DIExpression(), !4949)
  %8 = icmp eq i64 %7, %3, !dbg !4950
  br i1 %8, label %if.then, label %if.done, !dbg !4942

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 %3, !4938, !DIExpression(), !4951)
  ret i64 %3, !dbg !4952

if.done:                                          ; preds = %lookup.next
  %9 = add i64 %3, 1, !dbg !4953
    #dbg_value(i64 %9, !4938, !DIExpression(), !4953)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
  ret i64 -1, !dbg !4954

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948
}
