define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4957
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4957
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4957
    #dbg_value(ptr %arr.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4957)
    #dbg_value(i64 %arr.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4957)
    #dbg_value(i64 %arr.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4957)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4957)
    #dbg_value(i64 -1, !4953, !DIExpression(), !4958)
    #dbg_value(i64 0, !4954, !DIExpression(), !4959)
  br label %for.loop, !dbg !4960

for.loop:                                         ; preds = %for.done5, %entry
  %3 = phi i64 [ -1, %entry ], [ %6, %for.done5 ], !dbg !4958
  %4 = phi i64 [ 0, %entry ], [ %32, %for.done5 ], !dbg !4959
    #dbg_value(i64 %4, !4954, !DIExpression(), !4961)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4962)
  %5 = icmp slt i64 %4, %n, !dbg !4963
  br i1 %5, label %for.body, label %for.done6, !dbg !4960

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4955, !DIExpression(), !4964)
  br label %for.loop1, !dbg !4960

for.loop1:                                        ; preds = %for.done, %for.body
  %6 = phi i64 [ %3, %for.body ], [ %11, %for.done ], !dbg !4958
  %7 = phi i64 [ 0, %for.body ], [ %31, %for.done ], !dbg !4964
    #dbg_value(i64 %7, !4955, !DIExpression(), !4965)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4966)
  %8 = sub i64 %n, 1, !dbg !4967
  %9 = icmp slt i64 %7, %8, !dbg !4968
  br i1 %9, label %for.body2, label %for.done5, !dbg !4960

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %7, !4955, !DIExpression(), !4969)
  %10 = add i64 %7, 1, !dbg !4970
    #dbg_value(i64 %10, !4956, !DIExpression(), !4971)
  br label %for.loop3, !dbg !4960

for.loop3:                                        ; preds = %if.done, %for.body2
  %11 = phi i64 [ %6, %for.body2 ], [ %29, %if.done ], !dbg !4958
  %12 = phi i64 [ %10, %for.body2 ], [ %30, %if.done ], !dbg !4971
    #dbg_value(i64 %12, !4956, !DIExpression(), !4972)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4973)
  %13 = icmp slt i64 %12, %n, !dbg !4974
  br i1 %13, label %for.body4, label %for.done, !dbg !4960

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4975)
    #dbg_value(i64 %7, !4955, !DIExpression(), !4976)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %14 = icmp uge i64 %7, %indexaddr.len, !dbg !4977
  br i1 %14, label %lookup.throw, label %lookup.next, !dbg !4977

lookup.next:                                      ; preds = %for.body4
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4977
  %16 = load i64, ptr %15, align 8, !dbg !4977
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4978)
    #dbg_value(i64 %12, !4956, !DIExpression(), !4979)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4980
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4980
  %17 = icmp uge i64 %12, %indexaddr.len8, !dbg !4980
  br i1 %17, label %lookup.throw9, label %lookup.next10, !dbg !4980

lookup.next10:                                    ; preds = %lookup.next
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %12, !dbg !4980
  %19 = load i64, ptr %18, align 8, !dbg !4980
  %20 = mul i64 %16, %19, !dbg !4981
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4982)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4983)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4984
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4984
  %21 = icmp uge i64 %4, %indexaddr.len12, !dbg !4984
  br i1 %21, label %lookup.throw13, label %lookup.next14, !dbg !4984

lookup.next14:                                    ; preds = %lookup.next10
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %4, !dbg !4984
  %23 = load i64, ptr %22, align 8, !dbg !4984
  %24 = icmp eq i64 %20, %23, !dbg !4985
  br i1 %24, label %if.then, label %if.done, !dbg !4960

if.then:                                          ; preds = %lookup.next14
    #dbg_value(i64 %11, !4953, !DIExpression(), !4986)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4987)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4988)
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4989
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4989
  %25 = icmp uge i64 %4, %indexaddr.len16, !dbg !4989
  br i1 %25, label %lookup.throw17, label %lookup.next18, !dbg !4989

lookup.next18:                                    ; preds = %if.then
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %4, !dbg !4989
  %27 = load i64, ptr %26, align 8, !dbg !4989
  %28 = call i64 @main.max(i64 %11, i64 %27, ptr undef), !dbg !4990
    #dbg_value(i64 %28, !4953, !DIExpression(), !4991)
  br label %if.done, !dbg !4960

if.done:                                          ; preds = %lookup.next18, %lookup.next14
  %29 = phi i64 [ %11, %lookup.next14 ], [ %28, %lookup.next18 ], !dbg !4958
  %30 = add i64 %12, 1, !dbg !4992
    #dbg_value(i64 %30, !4956, !DIExpression(), !4992)
  br label %for.loop3, !dbg !4960

for.done:                                         ; preds = %for.loop3
  %31 = add i64 %7, 1, !dbg !4993
    #dbg_value(i64 %31, !4955, !DIExpression(), !4993)
  br label %for.loop1, !dbg !4960

for.done5:                                        ; preds = %for.loop1
  %32 = add i64 %4, 1, !dbg !4994
    #dbg_value(i64 %32, !4954, !DIExpression(), !4994)
  br label %for.loop, !dbg !4960

for.done6:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !4995)
  ret i64 %3, !dbg !4996

lookup.throw:                                     ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

lookup.throw9:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4980
  unreachable, !dbg !4980

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4984
  unreachable, !dbg !4984

lookup.throw17:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4989
  unreachable, !dbg !4989
}
