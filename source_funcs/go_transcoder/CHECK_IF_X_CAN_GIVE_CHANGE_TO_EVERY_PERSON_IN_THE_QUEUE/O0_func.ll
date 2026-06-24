define i64 @f_gold(ptr nocapture %notes.data, i64 %notes.len, i64 %notes.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %notes.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %notes.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %notes.cap, 2, !dbg !4941
    #dbg_value(ptr %notes.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %notes.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %notes.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 0, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %12, %if.done ], !dbg !4942
  %4 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4943
  %5 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4944
    #dbg_value(i64 %5, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %6 = icmp slt i64 %5, %n, !dbg !4948
  br i1 %6, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4951
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4951
  %9 = load i64, ptr %8, align 8, !dbg !4951
  %10 = icmp eq i64 %9, 5, !dbg !4952
  br i1 %10, label %if.then, label %if.else, !dbg !4945

if.then:                                          ; preds = %lookup.next
  %11 = add i64 %3, 1, !dbg !4953
    #dbg_value(i64 %11, !4938, !DIExpression(), !4953)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %if.then7, %if.then5, %if.then2, %if.then
  %12 = phi i64 [ %11, %if.then ], [ %20, %if.then2 ], [ %24, %if.then5 ], [ %27, %if.then7 ], !dbg !4942
  %13 = phi i64 [ %4, %if.then ], [ %21, %if.then2 ], [ %25, %if.then5 ], [ %4, %if.then7 ], !dbg !4943
  %14 = add i64 %5, 1, !dbg !4954
    #dbg_value(i64 %14, !4940, !DIExpression(), !4954)
  br label %for.loop, !dbg !4945

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4956)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %15 = icmp uge i64 %5, %indexaddr.len10, !dbg !4957
  br i1 %15, label %lookup.throw11, label %lookup.next12, !dbg !4957

lookup.next12:                                    ; preds = %if.else
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %5, !dbg !4957
  %17 = load i64, ptr %16, align 8, !dbg !4957
  %18 = icmp eq i64 %17, 10, !dbg !4958
  br i1 %18, label %if.then1, label %if.else4, !dbg !4945

if.then1:                                         ; preds = %lookup.next12
    #dbg_value(i64 %3, !4938, !DIExpression(), !4959)
  %19 = icmp sgt i64 %3, 0, !dbg !4960
  br i1 %19, label %if.then2, label %if.else3, !dbg !4945

if.then2:                                         ; preds = %if.then1
  %20 = sub i64 %3, 1, !dbg !4961
    #dbg_value(i64 %20, !4938, !DIExpression(), !4961)
  %21 = add i64 %4, 1, !dbg !4962
    #dbg_value(i64 %21, !4939, !DIExpression(), !4962)
  br label %if.done, !dbg !4945

if.else3:                                         ; preds = %if.then1
  ret i64 0, !dbg !4963

if.else4:                                         ; preds = %lookup.next12
    #dbg_value(i64 %3, !4938, !DIExpression(), !4964)
  %22 = icmp sgt i64 %3, 0, !dbg !4965
  br i1 %22, label %cond.true, label %if.else6, !dbg !4945

cond.true:                                        ; preds = %if.else4
    #dbg_value(i64 %4, !4939, !DIExpression(), !4966)
  %23 = icmp sgt i64 %4, 0, !dbg !4967
  br i1 %23, label %if.then5, label %if.else6, !dbg !4945

if.then5:                                         ; preds = %cond.true
  %24 = sub i64 %3, 1, !dbg !4968
    #dbg_value(i64 %24, !4938, !DIExpression(), !4968)
  %25 = sub i64 %4, 1, !dbg !4969
    #dbg_value(i64 %25, !4939, !DIExpression(), !4969)
  br label %if.done, !dbg !4945

if.else6:                                         ; preds = %cond.true, %if.else4
    #dbg_value(i64 %3, !4938, !DIExpression(), !4970)
  %26 = icmp sge i64 %3, 3, !dbg !4971
  br i1 %26, label %if.then7, label %if.else8, !dbg !4945

if.then7:                                         ; preds = %if.else6
  %27 = sub i64 %3, 3, !dbg !4972
    #dbg_value(i64 %27, !4938, !DIExpression(), !4972)
  br label %if.done, !dbg !4945

if.else8:                                         ; preds = %if.else6
  ret i64 0, !dbg !4973

for.done:                                         ; preds = %for.loop
  ret i64 1, !dbg !4974

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw11:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957
}
