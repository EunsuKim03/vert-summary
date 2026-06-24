define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %key) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %key, !4939, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4943)
  %3 = icmp slt i64 %high, %low, !dbg !4944
  br i1 %3, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %entry
  ret i64 -1, !dbg !4946

if.done:                                          ; preds = %entry
    #dbg_value(i64 %low, !4937, !DIExpression(), !4947)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4948)
  %4 = add i64 %low, %high, !dbg !4949
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4950
  %6 = and i1 false, %5, !dbg !4950
  %7 = select i1 %6, i64 1, i64 2, !dbg !4950
  %8 = sdiv i64 %4, %7, !dbg !4950
    #dbg_value(i64 %8, !4940, !DIExpression(), !4951)
    #dbg_value(i64 %key, !4939, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4954)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %9 = icmp uge i64 %8, %indexaddr.len, !dbg !4955
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4955

lookup.next:                                      ; preds = %if.done
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4955
  %11 = load i64, ptr %10, align 8, !dbg !4955
  %12 = icmp eq i64 %key, %11, !dbg !4956
  br i1 %12, label %if.then1, label %if.done2, !dbg !4945

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %8, !4940, !DIExpression(), !4957)
  ret i64 %8, !dbg !4958

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %key, !4939, !DIExpression(), !4959)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4961)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %13 = icmp uge i64 %8, %indexaddr.len6, !dbg !4962
  br i1 %13, label %lookup.throw7, label %lookup.next8, !dbg !4962

lookup.next8:                                     ; preds = %if.done2
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %8, !dbg !4962
  %15 = load i64, ptr %14, align 8, !dbg !4962
  %16 = icmp sgt i64 %key, %15, !dbg !4963
  br i1 %16, label %if.then3, label %if.done4, !dbg !4945

if.then3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4964)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4965)
  %17 = add i64 %8, 1, !dbg !4966
    #dbg_value(i64 %high, !4938, !DIExpression(), !4967)
    #dbg_value(i64 %key, !4939, !DIExpression(), !4968)
  %18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %20 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4969
  %21 = call i64 @f_gold(ptr %18, i64 %19, i64 %20, i64 %17, i64 %high, i64 %key), !dbg !4969
  ret i64 %21, !dbg !4970

if.done4:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4971)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4972)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4973)
  %22 = sub i64 %8, 1, !dbg !4974
    #dbg_value(i64 %key, !4939, !DIExpression(), !4975)
  %23 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4976
  %24 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4976
  %25 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4976
  %26 = call i64 @f_gold(ptr %23, i64 %24, i64 %25, i64 %low, i64 %22, i64 %key), !dbg !4976
  ret i64 %26, !dbg !4977

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955

lookup.throw7:                                    ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
