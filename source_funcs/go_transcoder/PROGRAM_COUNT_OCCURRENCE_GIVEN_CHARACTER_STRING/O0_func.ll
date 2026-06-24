define i64 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap, i8 %c) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4936
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4936
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4936
    #dbg_value(ptr %s.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
    #dbg_value(i64 %s.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4936)
    #dbg_value(i64 %s.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4936)
    #dbg_value(i8 %c, !4933, !DIExpression(), !4936)
    #dbg_value(i64 0, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %11, %if.done ], !dbg !4937
  %4 = phi i64 [ 0, %entry ], [ %12, %if.done ], !dbg !4938
    #dbg_value(i64 %4, !4935, !DIExpression(), !4940)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4941)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4942
  %5 = icmp slt i64 %4, %len, !dbg !4943
  br i1 %5, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4944)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4946
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4946
  %8 = load i8, ptr %7, align 1, !dbg !4946
    #dbg_value(i8 %c, !4933, !DIExpression(), !4947)
  %9 = icmp eq i8 %8, %c, !dbg !4948
  br i1 %9, label %if.then, label %if.done, !dbg !4939

if.then:                                          ; preds = %lookup.next
  %10 = add i64 %3, 1, !dbg !4949
    #dbg_value(i64 %10, !4934, !DIExpression(), !4949)
  br label %if.done, !dbg !4939

if.done:                                          ; preds = %if.then, %lookup.next
  %11 = phi i64 [ %3, %lookup.next ], [ %10, %if.then ], !dbg !4937
  %12 = add i64 %4, 1, !dbg !4950
    #dbg_value(i64 %12, !4935, !DIExpression(), !4950)
  br label %for.loop, !dbg !4939

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4934, !DIExpression(), !4951)
  ret i64 %3, !dbg !4952

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946
}
