define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) #1 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4943
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4943
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4943
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4943)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %y, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
    #dbg_value(i64 9223372036854775807, !4941, !DIExpression(), !4945)
    #dbg_value(i64 0, !4942, !DIExpression(), !4946)
    #dbg_value(i64 0, !4940, !DIExpression(), !4947)
  br label %for.loop, !dbg !4948

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4944
    #dbg_value(i64 %3, !4940, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4950)
  %4 = icmp slt i64 %3, %n, !dbg !4951
  br i1 %4, label %for.body, label %for.loop1, !dbg !4948

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %3, !4940, !DIExpression(), !4953)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4954
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4954
  %5 = icmp uge i64 %3, %indexaddr.len, !dbg !4954
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4954

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4954
  %7 = load i64, ptr %6, align 8, !dbg !4954
    #dbg_value(i64 %x, !4938, !DIExpression(), !4955)
  %8 = icmp eq i64 %7, %x, !dbg !4956
  br i1 %8, label %if.then, label %cond.false, !dbg !4948

if.then:                                          ; preds = %lookup.next10, %lookup.next
    #dbg_value(i64 %3, !4940, !DIExpression(), !4957)
    #dbg_value(i64 %3, !4942, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4948

cond.false:                                       ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %3, !4940, !DIExpression(), !4960)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %9 = icmp uge i64 %3, %indexaddr.len8, !dbg !4961
  br i1 %9, label %lookup.throw9, label %lookup.next10, !dbg !4961

lookup.next10:                                    ; preds = %cond.false
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %3, !dbg !4961
  %11 = load i64, ptr %10, align 8, !dbg !4961
    #dbg_value(i64 %y, !4939, !DIExpression(), !4962)
  %12 = icmp eq i64 %11, %y, !dbg !4963
  br i1 %12, label %if.then, label %if.done, !dbg !4948

if.done:                                          ; preds = %lookup.next10
  %13 = add i64 %3, 1, !dbg !4964
    #dbg_value(i64 %13, !4940, !DIExpression(), !4964)
  br label %for.loop, !dbg !4948

for.loop1:                                        ; preds = %if.done5, %if.then, %for.loop
  %14 = phi i64 [ %3, %for.loop ], [ %34, %if.done5 ], [ %3, %if.then ], !dbg !4944
  %15 = phi i64 [ 9223372036854775807, %for.loop ], [ %32, %if.done5 ], [ 9223372036854775807, %if.then ], !dbg !4945
  %16 = phi i64 [ 0, %for.loop ], [ %33, %if.done5 ], [ %3, %if.then ], !dbg !4946
    #dbg_value(i64 %14, !4940, !DIExpression(), !4965)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4966)
  %17 = icmp slt i64 %14, %n, !dbg !4967
  br i1 %17, label %for.body2, label %for.done, !dbg !4948

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %14, !4940, !DIExpression(), !4969)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %18 = icmp uge i64 %14, %indexaddr.len12, !dbg !4970
  br i1 %18, label %lookup.throw13, label %lookup.next14, !dbg !4970

lookup.next14:                                    ; preds = %for.body2
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %14, !dbg !4970
  %20 = load i64, ptr %19, align 8, !dbg !4970
    #dbg_value(i64 %x, !4938, !DIExpression(), !4971)
  %21 = icmp eq i64 %20, %x, !dbg !4972
  br i1 %21, label %if.then3, label %cond.false6, !dbg !4948

if.then3:                                         ; preds = %lookup.next26, %lookup.next14
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4973)
    #dbg_value(i64 %16, !4942, !DIExpression(), !4974)
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4975
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4975
  %22 = icmp uge i64 %16, %indexaddr.len16, !dbg !4975
  br i1 %22, label %lookup.throw17, label %lookup.next18, !dbg !4975

lookup.next18:                                    ; preds = %if.then3
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %16, !dbg !4975
  %24 = load i64, ptr %23, align 8, !dbg !4975
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4976)
    #dbg_value(i64 %14, !4940, !DIExpression(), !4977)
  %indexaddr.ptr19 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4978
  %indexaddr.len20 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4978
  %25 = icmp uge i64 %14, %indexaddr.len20, !dbg !4978
  br i1 %25, label %lookup.throw21, label %lookup.next22, !dbg !4978

lookup.next22:                                    ; preds = %lookup.next18
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr19, i64 %14, !dbg !4978
  %27 = load i64, ptr %26, align 8, !dbg !4978
  %28 = icmp ne i64 %24, %27, !dbg !4979
  br i1 %28, label %cond.true, label %if.else, !dbg !4948

cond.true:                                        ; preds = %lookup.next22
    #dbg_value(i64 %14, !4940, !DIExpression(), !4980)
    #dbg_value(i64 %16, !4942, !DIExpression(), !4981)
  %29 = sub i64 %14, %16, !dbg !4982
    #dbg_value(i64 %15, !4941, !DIExpression(), !4983)
  %30 = icmp slt i64 %29, %15, !dbg !4984
  br i1 %30, label %if.then4, label %if.else, !dbg !4948

if.then4:                                         ; preds = %cond.true
    #dbg_value(i64 %14, !4940, !DIExpression(), !4985)
    #dbg_value(i64 %16, !4942, !DIExpression(), !4986)
  %31 = sub i64 %14, %16, !dbg !4987
    #dbg_value(i64 %31, !4941, !DIExpression(), !4988)
    #dbg_value(i64 %14, !4940, !DIExpression(), !4989)
    #dbg_value(i64 %14, !4942, !DIExpression(), !4990)
  br label %if.done5, !dbg !4948

if.else:                                          ; preds = %cond.true, %lookup.next22
    #dbg_value(i64 %14, !4940, !DIExpression(), !4991)
    #dbg_value(i64 %14, !4942, !DIExpression(), !4992)
  br label %if.done5, !dbg !4948

if.done5:                                         ; preds = %lookup.next26, %if.else, %if.then4
  %32 = phi i64 [ %15, %lookup.next26 ], [ %31, %if.then4 ], [ %15, %if.else ], !dbg !4945
  %33 = phi i64 [ %16, %lookup.next26 ], [ %14, %if.then4 ], [ %14, %if.else ], !dbg !4946
  %34 = add i64 %14, 1, !dbg !4993
    #dbg_value(i64 %34, !4940, !DIExpression(), !4993)
  br label %for.loop1, !dbg !4948

cond.false6:                                      ; preds = %lookup.next14
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4994)
    #dbg_value(i64 %14, !4940, !DIExpression(), !4995)
  %indexaddr.ptr23 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4996
  %indexaddr.len24 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4996
  %35 = icmp uge i64 %14, %indexaddr.len24, !dbg !4996
  br i1 %35, label %lookup.throw25, label %lookup.next26, !dbg !4996

lookup.next26:                                    ; preds = %cond.false6
  %36 = getelementptr inbounds i64, ptr %indexaddr.ptr23, i64 %14, !dbg !4996
  %37 = load i64, ptr %36, align 8, !dbg !4996
    #dbg_value(i64 %y, !4939, !DIExpression(), !4997)
  %38 = icmp eq i64 %37, %y, !dbg !4998
  br i1 %38, label %if.then3, label %if.done5, !dbg !4948

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %15, !4941, !DIExpression(), !4999)
  ret i64 %15, !dbg !5000

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

lookup.throw9:                                    ; preds = %cond.false
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw13:                                   ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

lookup.throw17:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975

lookup.throw21:                                   ; preds = %lookup.next18
  call void @runtime.lookupPanic(ptr undef), !dbg !4978
  unreachable, !dbg !4978

lookup.throw25:                                   ; preds = %cond.false6
  call void @runtime.lookupPanic(ptr undef), !dbg !4996
  unreachable, !dbg !4996
}
