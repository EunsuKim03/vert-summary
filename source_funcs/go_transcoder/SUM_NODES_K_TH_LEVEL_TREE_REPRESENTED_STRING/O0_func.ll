define i64 @f_gold(ptr nocapture %tree.data, i64 %tree.len, i64 %tree.cap, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %tree.data, 0, !dbg !4938
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %tree.len, 1, !dbg !4938
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %tree.cap, 2, !dbg !4938
    #dbg_value(ptr %tree.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4938)
    #dbg_value(i64 %tree.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4938)
    #dbg_value(i64 %tree.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4938)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4938)
    #dbg_value(i64 -1, !4934, !DIExpression(), !4939)
    #dbg_value(i64 0, !4935, !DIExpression(), !4940)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4941)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4942
    #dbg_value(i64 %len, !4936, !DIExpression(), !4943)
    #dbg_value(i64 0, !4937, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ -1, %entry ], [ %12, %if.done ], !dbg !4939
  %4 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4940
  %5 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4944
    #dbg_value(i64 %5, !4937, !DIExpression(), !4946)
    #dbg_value(i64 %len, !4936, !DIExpression(), !4947)
  %6 = icmp slt i64 %5, %len, !dbg !4948
  br i1 %6, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4949)
    #dbg_value(i64 %5, !4937, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4951
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %5, !dbg !4951
  %9 = load i8, ptr %8, align 1, !dbg !4951
  %10 = icmp eq i8 %9, 40, !dbg !4952
  br i1 %10, label %if.then, label %if.else, !dbg !4945

if.then:                                          ; preds = %lookup.next
  %11 = add i64 %3, 1, !dbg !4953
    #dbg_value(i64 %11, !4934, !DIExpression(), !4953)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %lookup.next11, %if.else2, %if.then1, %if.then
  %12 = phi i64 [ %11, %if.then ], [ %19, %if.then1 ], [ %3, %if.else2 ], [ %3, %lookup.next11 ], !dbg !4939
  %13 = phi i64 [ %4, %if.then ], [ %4, %if.then1 ], [ %4, %if.else2 ], [ %26, %lookup.next11 ], !dbg !4940
  %14 = add i64 %5, 1, !dbg !4954
    #dbg_value(i64 %14, !4937, !DIExpression(), !4954)
  br label %for.loop, !dbg !4945

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4955)
    #dbg_value(i64 %5, !4937, !DIExpression(), !4956)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %15 = icmp uge i64 %5, %indexaddr.len5, !dbg !4957
  br i1 %15, label %lookup.throw6, label %lookup.next7, !dbg !4957

lookup.next7:                                     ; preds = %if.else
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr4, i64 %5, !dbg !4957
  %17 = load i8, ptr %16, align 1, !dbg !4957
  %18 = icmp eq i8 %17, 41, !dbg !4958
  br i1 %18, label %if.then1, label %if.else2, !dbg !4945

if.then1:                                         ; preds = %lookup.next7
  %19 = sub i64 %3, 1, !dbg !4959
    #dbg_value(i64 %19, !4934, !DIExpression(), !4959)
  br label %if.done, !dbg !4945

if.else2:                                         ; preds = %lookup.next7
    #dbg_value(i64 %3, !4934, !DIExpression(), !4960)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4961)
  %20 = icmp eq i64 %3, %k, !dbg !4962
  br i1 %20, label %if.then3, label %if.done, !dbg !4945

if.then3:                                         ; preds = %if.else2
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4963)
    #dbg_value(i64 %5, !4937, !DIExpression(), !4964)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4965
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4965
  %21 = icmp uge i64 %5, %indexaddr.len9, !dbg !4965
  br i1 %21, label %lookup.throw10, label %lookup.next11, !dbg !4965

lookup.next11:                                    ; preds = %if.then3
  %22 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 %5, !dbg !4965
  %23 = load i8, ptr %22, align 1, !dbg !4965
  %24 = sub i8 %23, 48, !dbg !4966
  %25 = zext i8 %24 to i64, !dbg !4967
  %26 = add i64 %4, %25, !dbg !4968
    #dbg_value(i64 %26, !4935, !DIExpression(), !4968)
  br label %if.done, !dbg !4945

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4935, !DIExpression(), !4969)
  ret i64 %4, !dbg !4970

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw6:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957

lookup.throw10:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965
}
