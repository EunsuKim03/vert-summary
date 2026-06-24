define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %X) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %X, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %X, !4938, !DIExpression(), !4942)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4943)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4944
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4944
  %3 = icmp uge i64 0, %indexaddr.len, !dbg !4944
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4944

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4944
  %5 = load i64, ptr %4, align 8, !dbg !4944
  %6 = icmp slt i64 %X, %5, !dbg !4945
  br i1 %6, label %if.then, label %if.else, !dbg !4946

if.then:                                          ; preds = %lookup.next
  ret i64 0, !dbg !4947

if.else:                                          ; preds = %lookup.next
    #dbg_value(i64 %X, !4938, !DIExpression(), !4948)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4950)
  %7 = sub i64 %n, 1, !dbg !4951
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %8 = icmp uge i64 %7, %indexaddr.len6, !dbg !4952
  br i1 %8, label %lookup.throw7, label %lookup.next8, !dbg !4952

lookup.next8:                                     ; preds = %if.else
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %7, !dbg !4952
  %10 = load i64, ptr %9, align 8, !dbg !4952
  %11 = icmp sgt i64 %X, %10, !dbg !4953
  br i1 %11, label %if.then1, label %if.done, !dbg !4946

if.then1:                                         ; preds = %lookup.next8
    #dbg_value(i64 %n, !4937, !DIExpression(), !4954)
  ret i64 %n, !dbg !4955

if.done:                                          ; preds = %lookup.next8
    #dbg_value(i64 0, !4939, !DIExpression(), !4956)
    #dbg_value(i64 1, !4940, !DIExpression(), !4957)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %for.body, %if.done
  %12 = phi i64 [ 0, %if.done ], [ %13, %for.body ], !dbg !4956
  %13 = phi i64 [ 1, %if.done ], [ %19, %for.body ], !dbg !4957
    #dbg_value(i64 %13, !4940, !DIExpression(), !4958)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4959)
  %14 = icmp slt i64 %13, %n, !dbg !4960
  br i1 %14, label %cond.true, label %for.loop2, !dbg !4946

cond.true:                                        ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4961)
    #dbg_value(i64 %13, !4940, !DIExpression(), !4962)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4963
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4963
  %15 = icmp uge i64 %13, %indexaddr.len10, !dbg !4963
  br i1 %15, label %lookup.throw11, label %lookup.next12, !dbg !4963

lookup.next12:                                    ; preds = %cond.true
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %13, !dbg !4963
  %17 = load i64, ptr %16, align 8, !dbg !4963
    #dbg_value(i64 %X, !4938, !DIExpression(), !4964)
  %18 = icmp slt i64 %17, %X, !dbg !4965
  br i1 %18, label %for.body, label %for.loop2, !dbg !4946

for.body:                                         ; preds = %lookup.next12
    #dbg_value(i64 %13, !4940, !DIExpression(), !4966)
    #dbg_value(i64 %13, !4939, !DIExpression(), !4967)
    #dbg_value(i64 %13, !4940, !DIExpression(), !4968)
  %19 = mul i64 %13, 2, !dbg !4969
    #dbg_value(i64 %19, !4940, !DIExpression(), !4970)
  br label %for.loop, !dbg !4946

for.loop2:                                        ; preds = %for.body4, %lookup.next12, %for.loop
  %20 = phi i64 [ %12, %for.loop ], [ %26, %for.body4 ], [ %12, %lookup.next12 ], !dbg !4956
    #dbg_value(i64 %20, !4939, !DIExpression(), !4971)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4972)
  %21 = icmp slt i64 %20, %n, !dbg !4973
  br i1 %21, label %cond.true3, label %for.done, !dbg !4946

cond.true3:                                       ; preds = %for.loop2
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4974)
    #dbg_value(i64 %20, !4939, !DIExpression(), !4975)
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %22 = icmp uge i64 %20, %indexaddr.len14, !dbg !4976
  br i1 %22, label %lookup.throw15, label %lookup.next16, !dbg !4976

lookup.next16:                                    ; preds = %cond.true3
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %20, !dbg !4976
  %24 = load i64, ptr %23, align 8, !dbg !4976
    #dbg_value(i64 %X, !4938, !DIExpression(), !4977)
  %25 = icmp slt i64 %24, %X, !dbg !4978
  br i1 %25, label %for.body4, label %for.done, !dbg !4946

for.body4:                                        ; preds = %lookup.next16
  %26 = add i64 %20, 1, !dbg !4979
    #dbg_value(i64 %26, !4939, !DIExpression(), !4979)
  br label %for.loop2, !dbg !4946

for.done:                                         ; preds = %lookup.next16, %for.loop2
    #dbg_value(i64 %20, !4939, !DIExpression(), !4980)
  ret i64 %20, !dbg !4981

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

lookup.throw7:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw11:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963

lookup.throw15:                                   ; preds = %cond.true3
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976
}
