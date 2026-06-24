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
  ret i64 0, !dbg !4945

if.done:                                          ; preds = %entry
    #dbg_value(i64 %high, !4938, !DIExpression(), !4946)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4947)
  %4 = icmp eq i64 %high, %low, !dbg !4948
  br i1 %4, label %if.then1, label %if.done2, !dbg !4944

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %low, !4937, !DIExpression(), !4949)
  ret i64 %low, !dbg !4950

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %low, !4937, !DIExpression(), !4951)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4952)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4953)
  %5 = sub i64 %high, %low, !dbg !4954
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !4955
  %7 = and i1 false, %6, !dbg !4955
  %8 = select i1 %7, i64 1, i64 2, !dbg !4955
  %9 = sdiv i64 %5, %8, !dbg !4955
  %10 = add i64 %low, %9, !dbg !4956
    #dbg_value(i64 %10, !4939, !DIExpression(), !4957)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4958)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4959)
  %11 = icmp slt i64 %10, %high, !dbg !4960
  br i1 %11, label %cond.true, label %if.done4, !dbg !4944

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4961)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4962)
  %12 = add i64 %10, 1, !dbg !4963
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %13 = icmp uge i64 %12, %indexaddr.len, !dbg !4964
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !4964

lookup.next:                                      ; preds = %cond.true
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %12, !dbg !4964
  %15 = load i64, ptr %14, align 8, !dbg !4964
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4966)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4967
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4967
  %16 = icmp uge i64 %10, %indexaddr.len11, !dbg !4967
  br i1 %16, label %lookup.throw12, label %lookup.next13, !dbg !4967

lookup.next13:                                    ; preds = %lookup.next
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %10, !dbg !4967
  %18 = load i64, ptr %17, align 8, !dbg !4967
  %19 = icmp slt i64 %15, %18, !dbg !4968
  br i1 %19, label %if.then3, label %if.done4, !dbg !4944

if.then3:                                         ; preds = %lookup.next13
    #dbg_value(i64 %10, !4939, !DIExpression(), !4969)
  %20 = add i64 %10, 1, !dbg !4970
  ret i64 %20, !dbg !4971

if.done4:                                         ; preds = %lookup.next13, %if.done2
    #dbg_value(i64 %10, !4939, !DIExpression(), !4972)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4973)
  %21 = icmp sgt i64 %10, %low, !dbg !4974
  br i1 %21, label %cond.true5, label %if.done7, !dbg !4944

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4975)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4976)
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %22 = icmp uge i64 %10, %indexaddr.len15, !dbg !4977
  br i1 %22, label %lookup.throw16, label %lookup.next17, !dbg !4977

lookup.next17:                                    ; preds = %cond.true5
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %10, !dbg !4977
  %24 = load i64, ptr %23, align 8, !dbg !4977
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4978)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4979)
  %25 = sub i64 %10, 1, !dbg !4980
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4981
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4981
  %26 = icmp uge i64 %25, %indexaddr.len19, !dbg !4981
  br i1 %26, label %lookup.throw20, label %lookup.next21, !dbg !4981

lookup.next21:                                    ; preds = %lookup.next17
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %25, !dbg !4981
  %28 = load i64, ptr %27, align 8, !dbg !4981
  %29 = icmp slt i64 %24, %28, !dbg !4982
  br i1 %29, label %if.then6, label %if.done7, !dbg !4944

if.then6:                                         ; preds = %lookup.next21
    #dbg_value(i64 %10, !4939, !DIExpression(), !4983)
  ret i64 %10, !dbg !4984

if.done7:                                         ; preds = %lookup.next21, %if.done4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4985)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4986)
  %indexaddr.ptr22 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4987
  %indexaddr.len23 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4987
  %30 = icmp uge i64 %high, %indexaddr.len23, !dbg !4987
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !4987

lookup.next25:                                    ; preds = %if.done7
  %31 = getelementptr inbounds i64, ptr %indexaddr.ptr22, i64 %high, !dbg !4987
  %32 = load i64, ptr %31, align 8, !dbg !4987
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4988)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4989)
  %indexaddr.ptr26 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4990
  %indexaddr.len27 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4990
  %33 = icmp uge i64 %10, %indexaddr.len27, !dbg !4990
  br i1 %33, label %lookup.throw28, label %lookup.next29, !dbg !4990

lookup.next29:                                    ; preds = %lookup.next25
  %34 = getelementptr inbounds i64, ptr %indexaddr.ptr26, i64 %10, !dbg !4990
  %35 = load i64, ptr %34, align 8, !dbg !4990
  %36 = icmp sgt i64 %32, %35, !dbg !4991
  br i1 %36, label %if.then8, label %if.done9, !dbg !4944

if.then8:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4992)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4993)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4994)
  %37 = sub i64 %10, 1, !dbg !4995
  %38 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4996
  %39 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4996
  %40 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4996
  %41 = call i64 @f_gold(ptr %38, i64 %39, i64 %40, i64 %low, i64 %37), !dbg !4996
  ret i64 %41, !dbg !4997

if.done9:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4998)
    #dbg_value(i64 %10, !4939, !DIExpression(), !4999)
  %42 = add i64 %10, 1, !dbg !5000
    #dbg_value(i64 %high, !4938, !DIExpression(), !5001)
  %43 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5002
  %44 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5002
  %45 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5002
  %46 = call i64 @f_gold(ptr %43, i64 %44, i64 %45, i64 %42, i64 %high), !dbg !5002
  ret i64 %46, !dbg !5003

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964

lookup.throw12:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967

lookup.throw16:                                   ; preds = %cond.true5
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

lookup.throw20:                                   ; preds = %lookup.next17
  call void @runtime.lookupPanic(ptr undef), !dbg !4981
  unreachable, !dbg !4981

lookup.throw24:                                   ; preds = %if.done7
  call void @runtime.lookupPanic(ptr undef), !dbg !4987
  unreachable, !dbg !4987

lookup.throw28:                                   ; preds = %lookup.next25
  call void @runtime.lookupPanic(ptr undef), !dbg !4990
  unreachable, !dbg !4990
}
