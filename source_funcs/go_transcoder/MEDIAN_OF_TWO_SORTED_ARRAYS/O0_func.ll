define i64 @f_gold(ptr nocapture %ar1.data, i64 %ar1.len, i64 %ar1.cap, ptr nocapture %ar2.data, i64 %ar2.len, i64 %ar2.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %ar1.data, 0, !dbg !4944
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %ar1.len, 1, !dbg !4944
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %ar1.cap, 2, !dbg !4944
    #dbg_value(ptr %ar1.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4944)
    #dbg_value(i64 %ar1.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4944)
    #dbg_value(i64 %ar1.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4944)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %ar2.data, 0, !dbg !4944
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %ar2.len, 1, !dbg !4944
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %ar2.cap, 2, !dbg !4944
    #dbg_value(ptr %ar2.data, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4944)
    #dbg_value(i64 %ar2.len, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4944)
    #dbg_value(i64 %ar2.cap, !4937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4944)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4944)
    #dbg_value(i64 0, !4939, !DIExpression(), !4945)
    #dbg_value(i64 0, !4940, !DIExpression(), !4946)
    #dbg_value(i64 0, !4941, !DIExpression(), !4947)
    #dbg_value(i64 -1, !4942, !DIExpression(), !4948)
    #dbg_value(i64 -1, !4943, !DIExpression(), !4949)
    #dbg_value(i64 0, !4941, !DIExpression(), !4950)
  br label %for.loop, !dbg !4951

for.loop:                                         ; preds = %if.done3, %entry
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done3 ], !dbg !4945
  %7 = phi i64 [ 0, %entry ], [ %32, %if.done3 ], !dbg !4946
  %8 = phi i64 [ 0, %entry ], [ %35, %if.done3 ], !dbg !4947
  %9 = phi i64 [ -1, %entry ], [ %33, %if.done3 ], !dbg !4948
  %10 = phi i64 [ -1, %entry ], [ %34, %if.done3 ], !dbg !4949
    #dbg_value(i64 %8, !4941, !DIExpression(), !4952)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4953)
  %11 = icmp sle i64 %8, %n, !dbg !4954
  br i1 %11, label %for.body, label %for.done, !dbg !4951

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4939, !DIExpression(), !4955)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4956)
  %12 = icmp eq i64 %6, %n, !dbg !4957
  br i1 %12, label %if.then, label %if.else, !dbg !4951

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %10, !4943, !DIExpression(), !4958)
    #dbg_value(i64 %10, !4942, !DIExpression(), !4959)
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4960)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4961
  %indexaddr.len = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4961
  %13 = icmp uge i64 0, %indexaddr.len, !dbg !4961
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !4961

lookup.next:                                      ; preds = %if.then
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4961
  %15 = load i64, ptr %14, align 8, !dbg !4961
    #dbg_value(i64 %15, !4943, !DIExpression(), !4962)
  br label %for.done, !dbg !4951

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %7, !4940, !DIExpression(), !4963)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4964)
  %16 = icmp eq i64 %7, %n, !dbg !4965
  br i1 %16, label %if.then1, label %if.done, !dbg !4951

if.then1:                                         ; preds = %if.else
    #dbg_value(i64 %10, !4943, !DIExpression(), !4966)
    #dbg_value(i64 %10, !4942, !DIExpression(), !4967)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %17 = icmp uge i64 0, %indexaddr.len6, !dbg !4969
  br i1 %17, label %lookup.throw7, label %lookup.next8, !dbg !4969

lookup.next8:                                     ; preds = %if.then1
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 0, !dbg !4969
  %19 = load i64, ptr %18, align 8, !dbg !4969
    #dbg_value(i64 %19, !4943, !DIExpression(), !4970)
  br label %for.done, !dbg !4951

if.done:                                          ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4971)
    #dbg_value(i64 %6, !4939, !DIExpression(), !4972)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %20 = icmp uge i64 %6, %indexaddr.len10, !dbg !4973
  br i1 %20, label %lookup.throw11, label %lookup.next12, !dbg !4973

lookup.next12:                                    ; preds = %if.done
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %6, !dbg !4973
  %22 = load i64, ptr %21, align 8, !dbg !4973
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4974)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4975)
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4976
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4976
  %23 = icmp uge i64 %7, %indexaddr.len14, !dbg !4976
  br i1 %23, label %lookup.throw15, label %lookup.next16, !dbg !4976

lookup.next16:                                    ; preds = %lookup.next12
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %7, !dbg !4976
  %25 = load i64, ptr %24, align 8, !dbg !4976
  %26 = icmp slt i64 %22, %25, !dbg !4977
  br i1 %26, label %if.then2, label %if.else4, !dbg !4951

if.then2:                                         ; preds = %lookup.next16
    #dbg_value(i64 %10, !4943, !DIExpression(), !4978)
    #dbg_value(i64 %10, !4942, !DIExpression(), !4979)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4980)
    #dbg_value(i64 %6, !4939, !DIExpression(), !4981)
  %indexaddr.ptr17 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len18 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %27 = icmp uge i64 %6, %indexaddr.len18, !dbg !4982
  br i1 %27, label %lookup.throw19, label %lookup.next20, !dbg !4982

lookup.next20:                                    ; preds = %if.then2
  %28 = getelementptr inbounds i64, ptr %indexaddr.ptr17, i64 %6, !dbg !4982
  %29 = load i64, ptr %28, align 8, !dbg !4982
    #dbg_value(i64 %29, !4943, !DIExpression(), !4983)
  %30 = add i64 %6, 1, !dbg !4984
    #dbg_value(i64 %30, !4939, !DIExpression(), !4984)
  br label %if.done3, !dbg !4951

if.done3:                                         ; preds = %lookup.next24, %lookup.next20
  %31 = phi i64 [ %30, %lookup.next20 ], [ %6, %lookup.next24 ], !dbg !4945
  %32 = phi i64 [ %7, %lookup.next20 ], [ %39, %lookup.next24 ], !dbg !4946
  %33 = phi i64 [ %10, %lookup.next20 ], [ %10, %lookup.next24 ], !dbg !4948
  %34 = phi i64 [ %29, %lookup.next20 ], [ %38, %lookup.next24 ], !dbg !4949
  %35 = add i64 %8, 1, !dbg !4985
    #dbg_value(i64 %35, !4941, !DIExpression(), !4985)
  br label %for.loop, !dbg !4951

if.else4:                                         ; preds = %lookup.next16
    #dbg_value(i64 %10, !4943, !DIExpression(), !4986)
    #dbg_value(i64 %10, !4942, !DIExpression(), !4987)
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4988)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4989)
  %indexaddr.ptr21 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4990
  %indexaddr.len22 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4990
  %36 = icmp uge i64 %7, %indexaddr.len22, !dbg !4990
  br i1 %36, label %lookup.throw23, label %lookup.next24, !dbg !4990

lookup.next24:                                    ; preds = %if.else4
  %37 = getelementptr inbounds i64, ptr %indexaddr.ptr21, i64 %7, !dbg !4990
  %38 = load i64, ptr %37, align 8, !dbg !4990
    #dbg_value(i64 %38, !4943, !DIExpression(), !4991)
  %39 = add i64 %7, 1, !dbg !4992
    #dbg_value(i64 %39, !4940, !DIExpression(), !4992)
  br label %if.done3, !dbg !4951

for.done:                                         ; preds = %lookup.next8, %lookup.next, %for.loop
  %40 = phi i64 [ %9, %for.loop ], [ %10, %lookup.next ], [ %10, %lookup.next8 ], !dbg !4948
  %41 = phi i64 [ %10, %for.loop ], [ %15, %lookup.next ], [ %19, %lookup.next8 ], !dbg !4949
    #dbg_value(i64 %40, !4942, !DIExpression(), !4993)
    #dbg_value(i64 %41, !4943, !DIExpression(), !4994)
  %42 = add i64 %40, %41, !dbg !4995
  %43 = icmp eq i64 %42, -9223372036854775808, !dbg !4996
  %44 = and i1 false, %43, !dbg !4996
  %45 = select i1 %44, i64 1, i64 2, !dbg !4996
  %46 = sdiv i64 %42, %45, !dbg !4996
  ret i64 %46, !dbg !4997

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw7:                                    ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969

lookup.throw11:                                   ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973

lookup.throw15:                                   ; preds = %lookup.next12
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976

lookup.throw19:                                   ; preds = %if.then2
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw23:                                   ; preds = %if.else4
  call void @runtime.lookupPanic(ptr undef), !dbg !4990
  unreachable, !dbg !4990
}
