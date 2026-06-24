define i1 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap, i8 %c) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4937
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4937
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4937
    #dbg_value(ptr %s.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4937)
    #dbg_value(i64 %s.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4937)
    #dbg_value(i64 %s.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4937)
    #dbg_value(i8 %c, !4933, !DIExpression(), !4937)
    #dbg_value(i1 false, !4934, !DIExpression(), !4938)
    #dbg_value(i64 0, !4935, !DIExpression(), !4939)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4940)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4941
    #dbg_value(i64 %len, !4936, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %if.else, %for.done, %entry
  %3 = phi i1 [ false, %entry ], [ true, %for.done ], [ %3, %if.else ], !dbg !4938
  %4 = phi i64 [ 0, %entry ], [ %10, %for.done ], [ %17, %if.else ], !dbg !4939
    #dbg_value(i64 %4, !4935, !DIExpression(), !4944)
    #dbg_value(i64 %len, !4936, !DIExpression(), !4945)
  %5 = icmp slt i64 %4, %len, !dbg !4946
  br i1 %5, label %for.body, label %for.done4, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4947)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4948)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4949
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4949
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4949
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4949

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4949
  %8 = load i8, ptr %7, align 1, !dbg !4949
    #dbg_value(i8 %c, !4933, !DIExpression(), !4950)
  %9 = icmp eq i8 %8, %c, !dbg !4951
  br i1 %9, label %if.then, label %if.else, !dbg !4943

if.then:                                          ; preds = %lookup.next
    #dbg_value(i1 %3, !4934, !DIExpression(), !4952)
  br i1 %3, label %if.then1, label %for.loop2, !dbg !4943

if.then1:                                         ; preds = %if.then
  ret i1 false, !dbg !4953

for.loop2:                                        ; preds = %for.body3, %if.then
  %10 = phi i64 [ %4, %if.then ], [ %16, %for.body3 ], !dbg !4939
    #dbg_value(i64 %10, !4935, !DIExpression(), !4954)
    #dbg_value(i64 %len, !4936, !DIExpression(), !4955)
  %11 = icmp slt i64 %10, %len, !dbg !4956
  br i1 %11, label %cond.true, label %for.done, !dbg !4943

cond.true:                                        ; preds = %for.loop2
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4957)
    #dbg_value(i64 %10, !4935, !DIExpression(), !4958)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %12 = icmp uge i64 %10, %indexaddr.len6, !dbg !4959
  br i1 %12, label %lookup.throw7, label %lookup.next8, !dbg !4959

lookup.next8:                                     ; preds = %cond.true
  %13 = getelementptr inbounds i8, ptr %indexaddr.ptr5, i64 %10, !dbg !4959
  %14 = load i8, ptr %13, align 1, !dbg !4959
    #dbg_value(i8 %c, !4933, !DIExpression(), !4960)
  %15 = icmp eq i8 %14, %c, !dbg !4961
  br i1 %15, label %for.body3, label %for.done, !dbg !4943

for.body3:                                        ; preds = %lookup.next8
  %16 = add i64 %10, 1, !dbg !4962
    #dbg_value(i64 %16, !4935, !DIExpression(), !4962)
  br label %for.loop2, !dbg !4943

for.done:                                         ; preds = %lookup.next8, %for.loop2
    #dbg_value(i1 true, !4934, !DIExpression(), !4963)
  br label %for.loop, !dbg !4943

if.else:                                          ; preds = %lookup.next
  %17 = add i64 %4, 1, !dbg !4964
    #dbg_value(i64 %17, !4935, !DIExpression(), !4964)
  br label %for.loop, !dbg !4943

for.done4:                                        ; preds = %for.loop
  ret i1 true, !dbg !4965

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

lookup.throw7:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959
}
