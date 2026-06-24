define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4943)
  %3 = icmp sgt i64 %low, %high, !dbg !4944
  br i1 %3, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %entry
  ret i64 -1, !dbg !4946

if.done:                                          ; preds = %entry
    #dbg_value(i64 %x, !4939, !DIExpression(), !4947)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4949)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4950
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4950
  %4 = icmp uge i64 %high, %indexaddr.len, !dbg !4950
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !4950

lookup.next:                                      ; preds = %if.done
  %5 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %high, !dbg !4950
  %6 = load i64, ptr %5, align 8, !dbg !4950
  %7 = icmp sge i64 %x, %6, !dbg !4951
  br i1 %7, label %if.then1, label %if.done2, !dbg !4945

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %high, !4938, !DIExpression(), !4952)
  ret i64 %high, !dbg !4953

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %low, !4937, !DIExpression(), !4954)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4955)
  %8 = add i64 %low, %high, !dbg !4956
  %9 = icmp eq i64 %8, -9223372036854775808, !dbg !4957
  %10 = and i1 false, %9, !dbg !4957
  %11 = select i1 %10, i64 1, i64 2, !dbg !4957
  %12 = sdiv i64 %8, %11, !dbg !4957
    #dbg_value(i64 %12, !4940, !DIExpression(), !4958)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4960)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %13 = icmp uge i64 %12, %indexaddr.len11, !dbg !4961
  br i1 %13, label %lookup.throw12, label %lookup.next13, !dbg !4961

lookup.next13:                                    ; preds = %if.done2
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %12, !dbg !4961
  %15 = load i64, ptr %14, align 8, !dbg !4961
    #dbg_value(i64 %x, !4939, !DIExpression(), !4962)
  %16 = icmp eq i64 %15, %x, !dbg !4963
  br i1 %16, label %if.then3, label %if.done4, !dbg !4945

if.then3:                                         ; preds = %lookup.next13
    #dbg_value(i64 %12, !4940, !DIExpression(), !4964)
  ret i64 %12, !dbg !4965

if.done4:                                         ; preds = %lookup.next13
    #dbg_value(i64 %12, !4940, !DIExpression(), !4966)
  %17 = icmp sgt i64 %12, 0, !dbg !4967
  br i1 %17, label %cond.true, label %if.done7, !dbg !4945

cond.true:                                        ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4969)
  %18 = sub i64 %12, 1, !dbg !4970
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %19 = icmp uge i64 %18, %indexaddr.len15, !dbg !4971
  br i1 %19, label %lookup.throw16, label %lookup.next17, !dbg !4971

lookup.next17:                                    ; preds = %cond.true
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %18, !dbg !4971
  %21 = load i64, ptr %20, align 8, !dbg !4971
    #dbg_value(i64 %x, !4939, !DIExpression(), !4972)
  %22 = icmp sle i64 %21, %x, !dbg !4973
  br i1 %22, label %cond.true5, label %if.done7, !dbg !4945

cond.true5:                                       ; preds = %lookup.next17
    #dbg_value(i64 %x, !4939, !DIExpression(), !4974)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4975)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4976)
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %23 = icmp uge i64 %12, %indexaddr.len19, !dbg !4977
  br i1 %23, label %lookup.throw20, label %lookup.next21, !dbg !4977

lookup.next21:                                    ; preds = %cond.true5
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %12, !dbg !4977
  %25 = load i64, ptr %24, align 8, !dbg !4977
  %26 = icmp slt i64 %x, %25, !dbg !4978
  br i1 %26, label %if.then6, label %if.done7, !dbg !4945

if.then6:                                         ; preds = %lookup.next21
    #dbg_value(i64 %12, !4940, !DIExpression(), !4979)
  %27 = sub i64 %12, 1, !dbg !4980
  ret i64 %27, !dbg !4981

if.done7:                                         ; preds = %lookup.next21, %lookup.next17, %if.done4
    #dbg_value(i64 %x, !4939, !DIExpression(), !4982)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4983)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4984)
  %indexaddr.ptr22 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4985
  %indexaddr.len23 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4985
  %28 = icmp uge i64 %12, %indexaddr.len23, !dbg !4985
  br i1 %28, label %lookup.throw24, label %lookup.next25, !dbg !4985

lookup.next25:                                    ; preds = %if.done7
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr22, i64 %12, !dbg !4985
  %30 = load i64, ptr %29, align 8, !dbg !4985
  %31 = icmp slt i64 %x, %30, !dbg !4986
  br i1 %31, label %if.then8, label %if.done9, !dbg !4945

if.then8:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4987)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4988)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4989)
  %32 = sub i64 %12, 1, !dbg !4990
    #dbg_value(i64 %x, !4939, !DIExpression(), !4991)
  %33 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4992
  %34 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4992
  %35 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4992
  %36 = call i64 @f_gold(ptr %33, i64 %34, i64 %35, i64 %low, i64 %32, i64 %x), !dbg !4992
  ret i64 %36, !dbg !4993

if.done9:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4994)
    #dbg_value(i64 %12, !4940, !DIExpression(), !4995)
  %37 = add i64 %12, 1, !dbg !4996
    #dbg_value(i64 %high, !4938, !DIExpression(), !4997)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4998)
  %38 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4999
  %39 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4999
  %40 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4999
  %41 = call i64 @f_gold(ptr %38, i64 %39, i64 %40, i64 %37, i64 %high, i64 %x), !dbg !4999
  ret i64 %41, !dbg !5000

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

lookup.throw12:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw16:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971

lookup.throw20:                                   ; preds = %cond.true5
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

lookup.throw24:                                   ; preds = %if.done7
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985
}
