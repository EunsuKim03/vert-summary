define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4940
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4940)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4942)
  %3 = icmp slt i64 %high, %low, !dbg !4943
  br i1 %3, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %4 = icmp uge i64 0, %indexaddr.len, !dbg !4946
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %if.then
  %5 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4946
  %6 = load i64, ptr %5, align 8, !dbg !4946
  ret i64 %6, !dbg !4947

if.done:                                          ; preds = %entry
    #dbg_value(i64 %high, !4938, !DIExpression(), !4948)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4949)
  %7 = icmp eq i64 %high, %low, !dbg !4950
  br i1 %7, label %if.then1, label %if.done2, !dbg !4944

if.then1:                                         ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4952)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %8 = icmp uge i64 %low, %indexaddr.len11, !dbg !4953
  br i1 %8, label %lookup.throw12, label %lookup.next13, !dbg !4953

lookup.next13:                                    ; preds = %if.then1
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %low, !dbg !4953
  %10 = load i64, ptr %9, align 8, !dbg !4953
  ret i64 %10, !dbg !4954

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %low, !4937, !DIExpression(), !4955)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4956)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4957)
  %11 = sub i64 %high, %low, !dbg !4958
  %12 = icmp eq i64 %11, -9223372036854775808, !dbg !4959
  %13 = and i1 false, %12, !dbg !4959
  %14 = select i1 %13, i64 1, i64 2, !dbg !4959
  %15 = sdiv i64 %11, %14, !dbg !4959
  %16 = add i64 %low, %15, !dbg !4960
    #dbg_value(i64 %16, !4939, !DIExpression(), !4961)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4962)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4963)
  %17 = icmp slt i64 %16, %high, !dbg !4964
  br i1 %17, label %cond.true, label %if.done4, !dbg !4944

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4966)
  %18 = add i64 %16, 1, !dbg !4967
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4968
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4968
  %19 = icmp uge i64 %18, %indexaddr.len15, !dbg !4968
  br i1 %19, label %lookup.throw16, label %lookup.next17, !dbg !4968

lookup.next17:                                    ; preds = %cond.true
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %18, !dbg !4968
  %21 = load i64, ptr %20, align 8, !dbg !4968
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4969)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4970)
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %22 = icmp uge i64 %16, %indexaddr.len19, !dbg !4971
  br i1 %22, label %lookup.throw20, label %lookup.next21, !dbg !4971

lookup.next21:                                    ; preds = %lookup.next17
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %16, !dbg !4971
  %24 = load i64, ptr %23, align 8, !dbg !4971
  %25 = icmp slt i64 %21, %24, !dbg !4972
  br i1 %25, label %if.then3, label %if.done4, !dbg !4944

if.then3:                                         ; preds = %lookup.next21
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4973)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4974)
  %26 = add i64 %16, 1, !dbg !4975
  %indexaddr.ptr22 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %indexaddr.len23 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %27 = icmp uge i64 %26, %indexaddr.len23, !dbg !4976
  br i1 %27, label %lookup.throw24, label %lookup.next25, !dbg !4976

lookup.next25:                                    ; preds = %if.then3
  %28 = getelementptr inbounds i64, ptr %indexaddr.ptr22, i64 %26, !dbg !4976
  %29 = load i64, ptr %28, align 8, !dbg !4976
  ret i64 %29, !dbg !4977

if.done4:                                         ; preds = %lookup.next21, %if.done2
    #dbg_value(i64 %16, !4939, !DIExpression(), !4978)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4979)
  %30 = icmp sgt i64 %16, %low, !dbg !4980
  br i1 %30, label %cond.true5, label %if.done7, !dbg !4944

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4981)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4982)
  %indexaddr.ptr26 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4983
  %indexaddr.len27 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4983
  %31 = icmp uge i64 %16, %indexaddr.len27, !dbg !4983
  br i1 %31, label %lookup.throw28, label %lookup.next29, !dbg !4983

lookup.next29:                                    ; preds = %cond.true5
  %32 = getelementptr inbounds i64, ptr %indexaddr.ptr26, i64 %16, !dbg !4983
  %33 = load i64, ptr %32, align 8, !dbg !4983
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4984)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4985)
  %34 = sub i64 %16, 1, !dbg !4986
  %indexaddr.ptr30 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4987
  %indexaddr.len31 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4987
  %35 = icmp uge i64 %34, %indexaddr.len31, !dbg !4987
  br i1 %35, label %lookup.throw32, label %lookup.next33, !dbg !4987

lookup.next33:                                    ; preds = %lookup.next29
  %36 = getelementptr inbounds i64, ptr %indexaddr.ptr30, i64 %34, !dbg !4987
  %37 = load i64, ptr %36, align 8, !dbg !4987
  %38 = icmp slt i64 %33, %37, !dbg !4988
  br i1 %38, label %if.then6, label %if.done7, !dbg !4944

if.then6:                                         ; preds = %lookup.next33
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4989)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4990)
  %indexaddr.ptr34 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4991
  %indexaddr.len35 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4991
  %39 = icmp uge i64 %16, %indexaddr.len35, !dbg !4991
  br i1 %39, label %lookup.throw36, label %lookup.next37, !dbg !4991

lookup.next37:                                    ; preds = %if.then6
  %40 = getelementptr inbounds i64, ptr %indexaddr.ptr34, i64 %16, !dbg !4991
  %41 = load i64, ptr %40, align 8, !dbg !4991
  ret i64 %41, !dbg !4992

if.done7:                                         ; preds = %lookup.next33, %if.done4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4993)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4994)
  %indexaddr.ptr38 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4995
  %indexaddr.len39 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4995
  %42 = icmp uge i64 %high, %indexaddr.len39, !dbg !4995
  br i1 %42, label %lookup.throw40, label %lookup.next41, !dbg !4995

lookup.next41:                                    ; preds = %if.done7
  %43 = getelementptr inbounds i64, ptr %indexaddr.ptr38, i64 %high, !dbg !4995
  %44 = load i64, ptr %43, align 8, !dbg !4995
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4996)
    #dbg_value(i64 %16, !4939, !DIExpression(), !4997)
  %indexaddr.ptr42 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4998
  %indexaddr.len43 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4998
  %45 = icmp uge i64 %16, %indexaddr.len43, !dbg !4998
  br i1 %45, label %lookup.throw44, label %lookup.next45, !dbg !4998

lookup.next45:                                    ; preds = %lookup.next41
  %46 = getelementptr inbounds i64, ptr %indexaddr.ptr42, i64 %16, !dbg !4998
  %47 = load i64, ptr %46, align 8, !dbg !4998
  %48 = icmp sgt i64 %44, %47, !dbg !4999
  br i1 %48, label %if.then8, label %if.done9, !dbg !4944

if.then8:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !5000)
    #dbg_value(i64 %low, !4937, !DIExpression(), !5001)
    #dbg_value(i64 %16, !4939, !DIExpression(), !5002)
  %49 = sub i64 %16, 1, !dbg !5003
  %50 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5004
  %51 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5004
  %52 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5004
  %53 = call i64 @f_gold(ptr %50, i64 %51, i64 %52, i64 %low, i64 %49), !dbg !5004
  ret i64 %53, !dbg !5005

if.done9:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !5006)
    #dbg_value(i64 %16, !4939, !DIExpression(), !5007)
  %54 = add i64 %16, 1, !dbg !5008
    #dbg_value(i64 %high, !4938, !DIExpression(), !5009)
  %55 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5010
  %56 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5010
  %57 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5010
  %58 = call i64 @f_gold(ptr %55, i64 %56, i64 %57, i64 %54, i64 %high), !dbg !5010
  ret i64 %58, !dbg !5011

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

lookup.throw12:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw16:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4968
  unreachable, !dbg !4968

lookup.throw20:                                   ; preds = %lookup.next17
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971

lookup.throw24:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976

lookup.throw28:                                   ; preds = %cond.true5
  call void @runtime.lookupPanic(ptr undef), !dbg !4983
  unreachable, !dbg !4983

lookup.throw32:                                   ; preds = %lookup.next29
  call void @runtime.lookupPanic(ptr undef), !dbg !4987
  unreachable, !dbg !4987

lookup.throw36:                                   ; preds = %if.then6
  call void @runtime.lookupPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

lookup.throw40:                                   ; preds = %if.done7
  call void @runtime.lookupPanic(ptr undef), !dbg !4995
  unreachable, !dbg !4995

lookup.throw44:                                   ; preds = %lookup.next41
  call void @runtime.lookupPanic(ptr undef), !dbg !4998
  unreachable, !dbg !4998
}
