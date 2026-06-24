define i64 @f_gold(i64 %n, ptr nocapture %templeHeight.data, i64 %templeHeight.len, i64 %templeHeight.cap) #0 !dbg !4943 {
entry:
    #dbg_value(i64 %n, !4951, !DIExpression(), !4959)
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %templeHeight.data, 0, !dbg !4959
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %templeHeight.len, 1, !dbg !4959
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %templeHeight.cap, 2, !dbg !4959
    #dbg_value(ptr %templeHeight.data, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4959)
    #dbg_value(i64 %templeHeight.len, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4959)
    #dbg_value(i64 %templeHeight.cap, !4952, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4959)
    #dbg_value(i64 0, !4953, !DIExpression(), !4960)
    #dbg_value(i64 0, !4954, !DIExpression(), !4961)
  br label %for.loop, !dbg !4962

for.loop:                                         ; preds = %for.done6, %entry
  %3 = phi i64 [ 0, %entry ], [ %36, %for.done6 ], !dbg !4960
  %4 = phi i64 [ 0, %entry ], [ %37, %for.done6 ], !dbg !4961
    #dbg_value(i64 %4, !4954, !DIExpression(), !4963)
    #dbg_value(i64 %n, !4951, !DIExpression(), !4964)
  %5 = icmp slt i64 %4, %n, !dbg !4965
  br i1 %5, label %for.body, label %for.done7, !dbg !4962

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4955, !DIExpression(), !4966)
    #dbg_value(i64 0, !4956, !DIExpression(), !4967)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4968)
  %6 = sub i64 %4, 1, !dbg !4969
    #dbg_value(i64 %6, !4957, !DIExpression(), !4970)
  br label %for.loop1, !dbg !4962

for.loop1:                                        ; preds = %if.then, %for.body
  %7 = phi i64 [ 0, %for.body ], [ %18, %if.then ], !dbg !4966
  %8 = phi i64 [ %6, %for.body ], [ %19, %if.then ], !dbg !4970
    #dbg_value(i64 %8, !4957, !DIExpression(), !4971)
  %9 = icmp sge i64 %8, 0, !dbg !4972
  br i1 %9, label %for.body2, label %for.done, !dbg !4962

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4973)
    #dbg_value(i64 %8, !4957, !DIExpression(), !4974)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4975
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4975
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !4975
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4975

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4975
  %12 = load i64, ptr %11, align 8, !dbg !4975
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4976)
    #dbg_value(i64 %8, !4957, !DIExpression(), !4977)
  %13 = add i64 %8, 1, !dbg !4978
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4979
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4979
  %14 = icmp uge i64 %13, %indexaddr.len9, !dbg !4979
  br i1 %14, label %lookup.throw10, label %lookup.next11, !dbg !4979

lookup.next11:                                    ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %13, !dbg !4979
  %16 = load i64, ptr %15, align 8, !dbg !4979
  %17 = icmp slt i64 %12, %16, !dbg !4980
  br i1 %17, label %if.then, label %for.done, !dbg !4962

if.then:                                          ; preds = %lookup.next11
  %18 = add i64 %7, 1, !dbg !4981
    #dbg_value(i64 %18, !4955, !DIExpression(), !4981)
  %19 = sub i64 %8, 1, !dbg !4982
    #dbg_value(i64 %19, !4957, !DIExpression(), !4982)
  br label %for.loop1, !dbg !4962

for.done:                                         ; preds = %lookup.next11, %for.loop1
    #dbg_value(i64 %4, !4954, !DIExpression(), !4983)
  %20 = add i64 %4, 1, !dbg !4984
    #dbg_value(i64 %20, !4958, !DIExpression(), !4985)
  br label %for.loop3, !dbg !4962

for.loop3:                                        ; preds = %if.then5, %for.done
  %21 = phi i64 [ 0, %for.done ], [ %32, %if.then5 ], !dbg !4967
  %22 = phi i64 [ %20, %for.done ], [ %33, %if.then5 ], !dbg !4985
    #dbg_value(i64 %22, !4958, !DIExpression(), !4986)
    #dbg_value(i64 %n, !4951, !DIExpression(), !4987)
  %23 = icmp slt i64 %22, %n, !dbg !4988
  br i1 %23, label %for.body4, label %for.done6, !dbg !4962

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4989)
    #dbg_value(i64 %22, !4958, !DIExpression(), !4990)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4991
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4991
  %24 = icmp uge i64 %22, %indexaddr.len13, !dbg !4991
  br i1 %24, label %lookup.throw14, label %lookup.next15, !dbg !4991

lookup.next15:                                    ; preds = %for.body4
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %22, !dbg !4991
  %26 = load i64, ptr %25, align 8, !dbg !4991
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4992)
    #dbg_value(i64 %22, !4958, !DIExpression(), !4993)
  %27 = sub i64 %22, 1, !dbg !4994
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4995
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4995
  %28 = icmp uge i64 %27, %indexaddr.len17, !dbg !4995
  br i1 %28, label %lookup.throw18, label %lookup.next19, !dbg !4995

lookup.next19:                                    ; preds = %lookup.next15
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr16, i64 %27, !dbg !4995
  %30 = load i64, ptr %29, align 8, !dbg !4995
  %31 = icmp slt i64 %26, %30, !dbg !4996
  br i1 %31, label %if.then5, label %for.done6, !dbg !4962

if.then5:                                         ; preds = %lookup.next19
  %32 = add i64 %21, 1, !dbg !4997
    #dbg_value(i64 %32, !4956, !DIExpression(), !4997)
  %33 = add i64 %22, 1, !dbg !4998
    #dbg_value(i64 %33, !4958, !DIExpression(), !4998)
  br label %for.loop3, !dbg !4962

for.done6:                                        ; preds = %lookup.next19, %for.loop3
    #dbg_value(i64 %21, !4956, !DIExpression(), !4999)
    #dbg_value(i64 %7, !4955, !DIExpression(), !5000)
  %34 = call i64 @main.max(i64 %21, i64 %7, ptr undef), !dbg !5001
  %35 = add i64 %34, 1, !dbg !5002
  %36 = add i64 %3, %35, !dbg !5003
    #dbg_value(i64 %36, !4953, !DIExpression(), !5003)
  %37 = add i64 %4, 1, !dbg !5004
    #dbg_value(i64 %37, !4954, !DIExpression(), !5004)
  br label %for.loop, !dbg !4962

for.done7:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !5005)
  ret i64 %3, !dbg !5006

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4979
  unreachable, !dbg !4979

lookup.throw14:                                   ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

lookup.throw18:                                   ; preds = %lookup.next15
  call void @runtime.lookupPanic(ptr undef), !dbg !4995
  unreachable, !dbg !4995
}
