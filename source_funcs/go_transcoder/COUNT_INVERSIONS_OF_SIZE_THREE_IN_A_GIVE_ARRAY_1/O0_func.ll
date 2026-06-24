define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4944
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4944
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4944
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4944)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4944)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4944)
    #dbg_value(i64 0, !4938, !DIExpression(), !4945)
    #dbg_value(i64 1, !4939, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.done7, %entry
  %3 = phi i64 [ 0, %entry ], [ %36, %for.done7 ], !dbg !4945
  %4 = phi i64 [ 1, %entry ], [ %37, %for.done7 ], !dbg !4946
    #dbg_value(i64 %4, !4939, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %5 = sub i64 %n, 1, !dbg !4950
  %6 = icmp slt i64 %4, %5, !dbg !4951
  br i1 %6, label %for.body, label %for.done8, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4940, !DIExpression(), !4952)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4953)
  %7 = add i64 %4, 1, !dbg !4954
    #dbg_value(i64 %7, !4941, !DIExpression(), !4955)
  br label %for.loop1, !dbg !4947

for.loop1:                                        ; preds = %if.done, %for.body
  %8 = phi i64 [ 0, %for.body ], [ %19, %if.done ], !dbg !4952
  %9 = phi i64 [ %7, %for.body ], [ %20, %if.done ], !dbg !4955
    #dbg_value(i64 %9, !4941, !DIExpression(), !4956)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4957)
  %10 = icmp slt i64 %9, %n, !dbg !4958
  br i1 %10, label %for.body2, label %for.done, !dbg !4947

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4960)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %11 = icmp uge i64 %4, %indexaddr.len, !dbg !4961
  br i1 %11, label %lookup.throw, label %lookup.next, !dbg !4961

lookup.next:                                      ; preds = %for.body2
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4961
  %13 = load i64, ptr %12, align 8, !dbg !4961
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %9, !4941, !DIExpression(), !4963)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %14 = icmp uge i64 %9, %indexaddr.len10, !dbg !4964
  br i1 %14, label %lookup.throw11, label %lookup.next12, !dbg !4964

lookup.next12:                                    ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %9, !dbg !4964
  %16 = load i64, ptr %15, align 8, !dbg !4964
  %17 = icmp sgt i64 %13, %16, !dbg !4965
  br i1 %17, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %lookup.next12
  %18 = add i64 %8, 1, !dbg !4966
    #dbg_value(i64 %18, !4940, !DIExpression(), !4966)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %if.then, %lookup.next12
  %19 = phi i64 [ %8, %lookup.next12 ], [ %18, %if.then ], !dbg !4952
  %20 = add i64 %9, 1, !dbg !4967
    #dbg_value(i64 %20, !4941, !DIExpression(), !4967)
  br label %for.loop1, !dbg !4947

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 0, !4942, !DIExpression(), !4968)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4969)
  %21 = sub i64 %4, 1, !dbg !4970
    #dbg_value(i64 %21, !4943, !DIExpression(), !4971)
  br label %for.loop3, !dbg !4947

for.loop3:                                        ; preds = %if.done6, %for.done
  %22 = phi i64 [ 0, %for.done ], [ %33, %if.done6 ], !dbg !4968
  %23 = phi i64 [ %21, %for.done ], [ %34, %if.done6 ], !dbg !4971
    #dbg_value(i64 %23, !4943, !DIExpression(), !4972)
  %24 = icmp sge i64 %23, 0, !dbg !4973
  br i1 %24, label %for.body4, label %for.done7, !dbg !4947

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4974)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4975)
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %25 = icmp uge i64 %4, %indexaddr.len14, !dbg !4976
  br i1 %25, label %lookup.throw15, label %lookup.next16, !dbg !4976

lookup.next16:                                    ; preds = %for.body4
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %4, !dbg !4976
  %27 = load i64, ptr %26, align 8, !dbg !4976
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4977)
    #dbg_value(i64 %23, !4943, !DIExpression(), !4978)
  %indexaddr.ptr17 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4979
  %indexaddr.len18 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4979
  %28 = icmp uge i64 %23, %indexaddr.len18, !dbg !4979
  br i1 %28, label %lookup.throw19, label %lookup.next20, !dbg !4979

lookup.next20:                                    ; preds = %lookup.next16
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr17, i64 %23, !dbg !4979
  %30 = load i64, ptr %29, align 8, !dbg !4979
  %31 = icmp slt i64 %27, %30, !dbg !4980
  br i1 %31, label %if.then5, label %if.done6, !dbg !4947

if.then5:                                         ; preds = %lookup.next20
  %32 = add i64 %22, 1, !dbg !4981
    #dbg_value(i64 %32, !4942, !DIExpression(), !4981)
  br label %if.done6, !dbg !4947

if.done6:                                         ; preds = %if.then5, %lookup.next20
  %33 = phi i64 [ %22, %lookup.next20 ], [ %32, %if.then5 ], !dbg !4968
  %34 = sub i64 %23, 1, !dbg !4982
    #dbg_value(i64 %34, !4943, !DIExpression(), !4982)
  br label %for.loop3, !dbg !4947

for.done7:                                        ; preds = %for.loop3
    #dbg_value(i64 %22, !4942, !DIExpression(), !4983)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4984)
  %35 = mul i64 %22, %8, !dbg !4985
  %36 = add i64 %3, %35, !dbg !4986
    #dbg_value(i64 %36, !4938, !DIExpression(), !4986)
  %37 = add i64 %4, 1, !dbg !4987
    #dbg_value(i64 %37, !4939, !DIExpression(), !4987)
  br label %for.loop, !dbg !4947

for.done8:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4988)
  ret i64 %3, !dbg !4989

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw11:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964

lookup.throw15:                                   ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976

lookup.throw19:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !4979
  unreachable, !dbg !4979
}
