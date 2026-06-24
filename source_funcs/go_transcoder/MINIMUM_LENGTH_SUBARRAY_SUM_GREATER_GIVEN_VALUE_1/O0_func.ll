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

for.loop:                                         ; preds = %cond.true4, %for.loop3, %entry
  %4 = phi i64 [ 0, %entry ], [ %24, %for.loop3 ], [ %24, %cond.true4 ], !dbg !4944
  %5 = phi i64 [ %3, %entry ], [ %25, %for.loop3 ], [ %25, %cond.true4 ], !dbg !4947
  %6 = load i64, ptr %end, align 8, !dbg !4951
    #dbg_value(i64 %6, !4942, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %7 = icmp slt i64 %6, %n, !dbg !4953
  br i1 %7, label %for.loop1, label %for.done, !dbg !4950

for.loop1:                                        ; preds = %lookup.next, %for.loop
  %8 = phi i64 [ %4, %for.loop ], [ %23, %lookup.next ], !dbg !4944
    #dbg_value(i64 %8, !4939, !DIExpression(), !4954)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4955)
  %9 = icmp sle i64 %8, %x, !dbg !4956
  br i1 %9, label %cond.true, label %for.loop3, !dbg !4950

cond.true:                                        ; preds = %for.loop1
  %10 = load i64, ptr %end, align 8, !dbg !4957
    #dbg_value(i64 %10, !4942, !DIExpression(), !4957)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4958)
  %11 = icmp slt i64 %10, %n, !dbg !4959
  br i1 %11, label %for.body, label %for.loop3, !dbg !4950

for.body:                                         ; preds = %cond.true
    #dbg_value(i64 %8, !4939, !DIExpression(), !4960)
  %12 = icmp sle i64 %8, 0, !dbg !4961
  br i1 %12, label %cond.true2, label %if.done, !dbg !4950

cond.true2:                                       ; preds = %for.body
    #dbg_value(i64 %x, !4938, !DIExpression(), !4962)
  %13 = icmp sgt i64 %x, 0, !dbg !4963
  br i1 %13, label %if.then, label %if.done, !dbg !4950

if.then:                                          ; preds = %cond.true2
  %14 = load i64, ptr %end, align 8, !dbg !4964
    #dbg_value(i64 %14, !4942, !DIExpression(), !4964)
  store i64 %14, ptr %start, align 8, !dbg !4965
    #dbg_value(i64 %14, !4941, !DIExpression(), !4965)
    #dbg_value(i64 0, !4939, !DIExpression(), !4966)
  br label %if.done, !dbg !4950

if.done:                                          ; preds = %if.then, %cond.true2, %for.body
  %15 = phi i64 [ %8, %for.body ], [ %8, %cond.true2 ], [ 0, %if.then ], !dbg !4944
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4967)
  %16 = insertvalue { ptr, ptr } undef, ptr %end, 0, !dbg !4968
  %17 = insertvalue { ptr, ptr } %16, ptr @"main.f_gold$1", 1, !dbg !4968
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !4969
  %19 = call i64 @"main.f_gold$1"(ptr %18), !dbg !4969
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %20 = icmp uge i64 %19, %indexaddr.len, !dbg !4970
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !4970

lookup.next:                                      ; preds = %if.done
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %19, !dbg !4970
  %22 = load i64, ptr %21, align 8, !dbg !4970
  %23 = add i64 %15, %22, !dbg !4971
    #dbg_value(i64 %23, !4939, !DIExpression(), !4971)
  br label %for.loop1, !dbg !4950

for.loop3:                                        ; preds = %lookup.next11, %cond.true, %for.loop1
  %24 = phi i64 [ %8, %for.loop1 ], [ %44, %lookup.next11 ], [ %8, %cond.true ], !dbg !4944
  %25 = phi i64 [ %5, %for.loop1 ], [ %36, %lookup.next11 ], [ %5, %cond.true ], !dbg !4947
    #dbg_value(i64 %24, !4939, !DIExpression(), !4972)
    #dbg_value(i64 %x, !4938, !DIExpression(), !4973)
  %26 = icmp sgt i64 %24, %x, !dbg !4974
  br i1 %26, label %cond.true4, label %for.loop, !dbg !4950

cond.true4:                                       ; preds = %for.loop3
  %27 = load i64, ptr %start, align 8, !dbg !4975
    #dbg_value(i64 %27, !4941, !DIExpression(), !4975)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4976)
  %28 = icmp slt i64 %27, %n, !dbg !4977
  br i1 %28, label %for.body5, label %for.loop, !dbg !4950

for.body5:                                        ; preds = %cond.true4
  %29 = load i64, ptr %end, align 8, !dbg !4978
    #dbg_value(i64 %29, !4942, !DIExpression(), !4978)
  %30 = load i64, ptr %start, align 8, !dbg !4979
    #dbg_value(i64 %30, !4941, !DIExpression(), !4979)
  %31 = sub i64 %29, %30, !dbg !4980
    #dbg_value(i64 %25, !4940, !DIExpression(), !4981)
  %32 = icmp slt i64 %31, %25, !dbg !4982
  br i1 %32, label %if.then6, label %if.done7, !dbg !4950

if.then6:                                         ; preds = %for.body5
  %33 = load i64, ptr %end, align 8, !dbg !4983
    #dbg_value(i64 %33, !4942, !DIExpression(), !4983)
  %34 = load i64, ptr %start, align 8, !dbg !4984
    #dbg_value(i64 %34, !4941, !DIExpression(), !4984)
  %35 = sub i64 %33, %34, !dbg !4985
    #dbg_value(i64 %35, !4940, !DIExpression(), !4986)
  br label %if.done7, !dbg !4950

if.done7:                                         ; preds = %if.then6, %for.body5
  %36 = phi i64 [ %25, %for.body5 ], [ %35, %if.then6 ], !dbg !4947
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4987)
  %37 = insertvalue { ptr, ptr } undef, ptr %start, 0, !dbg !4988
  %38 = insertvalue { ptr, ptr } %37, ptr @"main.f_gold$2", 1, !dbg !4988
  %39 = extractvalue { ptr, ptr } %38, 0, !dbg !4989
  %40 = call i64 @"main.f_gold$2"(ptr %39), !dbg !4989
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4990
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4990
  %41 = icmp uge i64 %40, %indexaddr.len9, !dbg !4990
  br i1 %41, label %lookup.throw10, label %lookup.next11, !dbg !4990

lookup.next11:                                    ; preds = %if.done7
  %42 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %40, !dbg !4990
  %43 = load i64, ptr %42, align 8, !dbg !4990
  %44 = sub i64 %24, %43, !dbg !4991
    #dbg_value(i64 %44, !4939, !DIExpression(), !4991)
  br label %for.loop3, !dbg !4950

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4940, !DIExpression(), !4992)
  ret i64 %5, !dbg !4993

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

lookup.throw10:                                   ; preds = %if.done7
  call void @runtime.lookupPanic(ptr undef), !dbg !4990
  unreachable, !dbg !4990
}
