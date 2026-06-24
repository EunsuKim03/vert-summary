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
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4942)
  %3 = icmp sgt i64 %low, %high, !dbg !4943
  br i1 %3, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %entry
  ret i64 -1, !dbg !4945

if.done:                                          ; preds = %entry
    #dbg_value(i64 %low, !4937, !DIExpression(), !4946)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4947)
  %4 = add i64 %low, %high, !dbg !4948
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4949
  %6 = and i1 false, %5, !dbg !4949
  %7 = select i1 %6, i64 1, i64 2, !dbg !4949
  %8 = sdiv i64 %4, %7, !dbg !4949
    #dbg_value(i64 %8, !4939, !DIExpression(), !4950)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4952)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %9 = icmp uge i64 %8, %indexaddr.len, !dbg !4953
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4953

lookup.next:                                      ; preds = %if.done
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4953
  %11 = load i64, ptr %10, align 8, !dbg !4953
    #dbg_value(i64 %8, !4939, !DIExpression(), !4954)
  %12 = add i64 %8, 1, !dbg !4955
  %13 = icmp ne i64 %11, %12, !dbg !4956
  br i1 %13, label %if.then1, label %if.done4, !dbg !4944

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %8, !4939, !DIExpression(), !4957)
  %14 = icmp sgt i64 %8, 0, !dbg !4958
  br i1 %14, label %cond.true, label %if.done3, !dbg !4944

cond.true:                                        ; preds = %if.then1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4960)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %15 = icmp uge i64 %8, %indexaddr.len6, !dbg !4961
  br i1 %15, label %lookup.throw7, label %lookup.next8, !dbg !4961

lookup.next8:                                     ; preds = %cond.true
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %8, !dbg !4961
  %17 = load i64, ptr %16, align 8, !dbg !4961
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4963)
  %18 = sub i64 %8, 1, !dbg !4964
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4965
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4965
  %19 = icmp uge i64 %18, %indexaddr.len10, !dbg !4965
  br i1 %19, label %lookup.throw11, label %lookup.next12, !dbg !4965

lookup.next12:                                    ; preds = %lookup.next8
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %18, !dbg !4965
  %21 = load i64, ptr %20, align 8, !dbg !4965
  %22 = icmp eq i64 %17, %21, !dbg !4966
  br i1 %22, label %if.then2, label %if.done3, !dbg !4944

if.then2:                                         ; preds = %lookup.next12
    #dbg_value(i64 %8, !4939, !DIExpression(), !4967)
  ret i64 %8, !dbg !4968

if.done3:                                         ; preds = %lookup.next12, %if.then1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4969)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4970)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4971)
  %23 = sub i64 %8, 1, !dbg !4972
  %24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %26 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4973
  %27 = call i64 @f_gold(ptr %24, i64 %25, i64 %26, i64 %low, i64 %23), !dbg !4973
  ret i64 %27, !dbg !4974

if.done4:                                         ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4975)
    #dbg_value(i64 %8, !4939, !DIExpression(), !4976)
  %28 = add i64 %8, 1, !dbg !4977
    #dbg_value(i64 %high, !4938, !DIExpression(), !4978)
  %29 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4979
  %30 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4979
  %31 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4979
  %32 = call i64 @f_gold(ptr %29, i64 %30, i64 %31, i64 %28, i64 %high), !dbg !4979
  ret i64 %32, !dbg !4980

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw7:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965
}
