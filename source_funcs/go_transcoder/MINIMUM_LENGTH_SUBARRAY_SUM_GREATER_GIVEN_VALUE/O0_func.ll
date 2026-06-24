define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4943
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4943
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4943
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4943)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4943)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4943)
    #dbg_value(i64 0, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4945)
  %3 = add i64 %n, 1, !dbg !4946
    #dbg_value(i64 %3, !4940, !DIExpression(), !4947)
  %start = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4948
  store i64 0, ptr %start, align 8, !dbg !4948
    #dbg_value(i64 0, !4941, !DIExpression(), !4948)
  %end = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4949
  store i64 0, ptr %end, align 8, !dbg !4949
    #dbg_value(i64 0, !4942, !DIExpression(), !4949)
  br label %for.loop, !dbg !4950

for.loop:                                         ; preds = %cond.true3, %for.loop2, %entry
  %4 = phi i64 [ 0, %entry ], [ %20, %for.loop2 ], [ %20, %cond.true3 ], !dbg !4944
  %5 = phi i64 [ %3, %entry ], [ %21, %for.loop2 ], [ %21, %cond.true3 ], !dbg !4947
  %6 = load i64, ptr %end, align 8, !dbg !4951
    #dbg_value(i64 %6, !4942, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %7 = icmp slt i64 %6, %n, !dbg !4953
  br i1 %7, label %for.loop1, label %for.done, !dbg !4950

for.loop1:                                        ; preds = %lookup.next, %for.loop
  %8 = phi i64 [ %4, %for.loop ], [ %19, %lookup.next ], !dbg !4944
    #dbg_value(i64 %8, !4939, !DIExpression(), !4954)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4955)
  %9 = icmp sle i64 %8, %x, !dbg !4956
  br i1 %9, label %cond.true, label %for.loop2, !dbg !4950

cond.true:                                        ; preds = %for.loop1
  %10 = load i64, ptr %end, align 8, !dbg !4957
    #dbg_value(i64 %10, !4942, !DIExpression(), !4957)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4958)
  %11 = icmp slt i64 %10, %n, !dbg !4959
  br i1 %11, label %for.body, label %for.loop2, !dbg !4950

for.body:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
  %12 = insertvalue { ptr, ptr } undef, ptr %end, 0, !dbg !4961
  %13 = insertvalue { ptr, ptr } %12, ptr @"main.f_gold$1", 1, !dbg !4961
  %14 = extractvalue { ptr, ptr } %13, 0, !dbg !4962
  %15 = call i64 @"main.f_gold$1"(ptr %14), !dbg !4962
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4963
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4963
  %16 = icmp uge i64 %15, %indexaddr.len, !dbg !4963
  br i1 %16, label %lookup.throw, label %lookup.next, !dbg !4963

lookup.next:                                      ; preds = %for.body
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %15, !dbg !4963
  %18 = load i64, ptr %17, align 8, !dbg !4963
  %19 = add i64 %8, %18, !dbg !4964
    #dbg_value(i64 %19, !4939, !DIExpression(), !4964)
  br label %for.loop1, !dbg !4950

for.loop2:                                        ; preds = %lookup.next8, %cond.true, %for.loop1
  %20 = phi i64 [ %8, %for.loop1 ], [ %40, %lookup.next8 ], [ %8, %cond.true ], !dbg !4944
  %21 = phi i64 [ %5, %for.loop1 ], [ %32, %lookup.next8 ], [ %5, %cond.true ], !dbg !4947
    #dbg_value(i64 %20, !4939, !DIExpression(), !4965)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4966)
  %22 = icmp sgt i64 %20, %x, !dbg !4967
  br i1 %22, label %cond.true3, label %for.loop, !dbg !4950

cond.true3:                                       ; preds = %for.loop2
  %23 = load i64, ptr %start, align 8, !dbg !4968
    #dbg_value(i64 %23, !4941, !DIExpression(), !4968)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4969)
  %24 = icmp slt i64 %23, %n, !dbg !4970
  br i1 %24, label %for.body4, label %for.loop, !dbg !4950

for.body4:                                        ; preds = %cond.true3
  %25 = load i64, ptr %end, align 8, !dbg !4971
    #dbg_value(i64 %25, !4942, !DIExpression(), !4971)
  %26 = load i64, ptr %start, align 8, !dbg !4972
    #dbg_value(i64 %26, !4941, !DIExpression(), !4972)
  %27 = sub i64 %25, %26, !dbg !4973
    #dbg_value(i64 %21, !4940, !DIExpression(), !4974)
  %28 = icmp slt i64 %27, %21, !dbg !4975
  br i1 %28, label %if.then, label %if.done, !dbg !4950

if.then:                                          ; preds = %for.body4
  %29 = load i64, ptr %end, align 8, !dbg !4976
    #dbg_value(i64 %29, !4942, !DIExpression(), !4976)
  %30 = load i64, ptr %start, align 8, !dbg !4977
    #dbg_value(i64 %30, !4941, !DIExpression(), !4977)
  %31 = sub i64 %29, %30, !dbg !4978
    #dbg_value(i64 %31, !4940, !DIExpression(), !4979)
  br label %if.done, !dbg !4950

if.done:                                          ; preds = %if.then, %for.body4
  %32 = phi i64 [ %21, %for.body4 ], [ %31, %if.then ], !dbg !4947
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4980)
  %33 = insertvalue { ptr, ptr } undef, ptr %start, 0, !dbg !4981
  %34 = insertvalue { ptr, ptr } %33, ptr @"main.f_gold$2", 1, !dbg !4981
  %35 = extractvalue { ptr, ptr } %34, 0, !dbg !4982
  %36 = call i64 @"main.f_gold$2"(ptr %35), !dbg !4982
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4983
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4983
  %37 = icmp uge i64 %36, %indexaddr.len6, !dbg !4983
  br i1 %37, label %lookup.throw7, label %lookup.next8, !dbg !4983

lookup.next8:                                     ; preds = %if.done
  %38 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %36, !dbg !4983
  %39 = load i64, ptr %38, align 8, !dbg !4983
  %40 = sub i64 %20, %39, !dbg !4984
    #dbg_value(i64 %40, !4939, !DIExpression(), !4984)
  br label %for.loop2, !dbg !4950

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4940, !DIExpression(), !4985)
  ret i64 %5, !dbg !4986

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963

lookup.throw7:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4983
  unreachable, !dbg !4983
}
