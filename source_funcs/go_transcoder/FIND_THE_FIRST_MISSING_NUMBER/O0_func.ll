define i64 @f_gold(ptr nocapture %array.data, i64 %array.len, i64 %array.cap, i64 %start, i64 %end) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %array.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %array.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %array.cap, 2, !dbg !4940
    #dbg_value(ptr %array.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %array.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %array.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %start, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %end, !4938, !DIExpression(), !4940)
    #dbg_value(i64 %start, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %end, !4938, !DIExpression(), !4942)
  %3 = icmp sgt i64 %start, %end, !dbg !4943
  br i1 %3, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %entry
    #dbg_value(i64 %end, !4938, !DIExpression(), !4945)
  %4 = add i64 %end, 1, !dbg !4946
  ret i64 %4, !dbg !4947

if.done:                                          ; preds = %entry
    #dbg_value(i64 %start, !4937, !DIExpression(), !4948)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %start, !4937, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %5 = icmp uge i64 %start, %indexaddr.len, !dbg !4951
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %if.done
  %6 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %start, !dbg !4951
  %7 = load i64, ptr %6, align 8, !dbg !4951
  %8 = icmp ne i64 %start, %7, !dbg !4952
  br i1 %8, label %if.then1, label %if.done2, !dbg !4944

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %start, !4937, !DIExpression(), !4953)
  ret i64 %start, !dbg !4954

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %start, !4937, !DIExpression(), !4955)
    #dbg_value(i64 %end, !4938, !DIExpression(), !4956)
  %9 = add i64 %start, %end, !dbg !4957
  %10 = icmp eq i64 %9, -9223372036854775808, !dbg !4958
  %11 = and i1 false, %10, !dbg !4958
  %12 = select i1 %11, i64 1, i64 2, !dbg !4958
  %13 = sdiv i64 %9, %12, !dbg !4958
    #dbg_value(i64 %13, !4939, !DIExpression(), !4959)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %13, !4939, !DIExpression(), !4961)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %14 = icmp uge i64 %13, %indexaddr.len6, !dbg !4962
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4962

lookup.next8:                                     ; preds = %if.done2
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %13, !dbg !4962
  %16 = load i64, ptr %15, align 8, !dbg !4962
    #dbg_value(i64 %13, !4939, !DIExpression(), !4963)
  %17 = icmp eq i64 %16, %13, !dbg !4964
  br i1 %17, label %if.then3, label %if.done4, !dbg !4944

if.then3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %13, !4939, !DIExpression(), !4966)
  %18 = add i64 %13, 1, !dbg !4967
    #dbg_value(i64 %end, !4938, !DIExpression(), !4968)
  %19 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %20 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %21 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4969
  %22 = call i64 @f_gold(ptr %19, i64 %20, i64 %21, i64 %18, i64 %end), !dbg !4969
  ret i64 %22, !dbg !4970

if.done4:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4971)
    #dbg_value(i64 %start, !4937, !DIExpression(), !4972)
    #dbg_value(i64 %13, !4939, !DIExpression(), !4973)
  %23 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4974
  %24 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4974
  %25 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4974
  %26 = call i64 @f_gold(ptr %23, i64 %24, i64 %25, i64 %start, i64 %13), !dbg !4974
  ret i64 %26, !dbg !4975

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw7:                                    ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
