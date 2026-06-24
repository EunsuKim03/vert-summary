define i64 @f_gold(ptr nocapture %high.data, i64 %high.len, i64 %high.cap, ptr nocapture %low.data, i64 %low.len, i64 %low.cap, i64 %n) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %high.data, 0, !dbg !4954
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %high.len, 1, !dbg !4954
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %high.cap, 2, !dbg !4954
    #dbg_value(ptr %high.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4954)
    #dbg_value(i64 %high.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4954)
    #dbg_value(i64 %high.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4954)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %low.data, 0, !dbg !4954
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %low.len, 1, !dbg !4954
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %low.cap, 2, !dbg !4954
    #dbg_value(ptr %low.data, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4954)
    #dbg_value(i64 %low.len, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4954)
    #dbg_value(i64 %low.cap, !4952, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4954)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4954)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4955)
  %6 = icmp sle i64 %n, 0, !dbg !4956
  br i1 %6, label %if.then, label %if.done, !dbg !4957

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4958

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4959)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4960)
  %7 = sub i64 %n, 1, !dbg !4961
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %8 = icmp uge i64 %7, %indexaddr.len, !dbg !4962
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4962

lookup.next:                                      ; preds = %if.done
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4962
  %10 = load i64, ptr %9, align 8, !dbg !4962
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4963)
    #dbg_value({ ptr, i64, i64 } %5, !4952, !DIExpression(), !4964)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4965)
  %11 = sub i64 %n, 2, !dbg !4966
  %12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4967
  %13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4967
  %14 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4967
  %15 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4967
  %16 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4967
  %17 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !4967
  %18 = call i64 @f_gold(ptr %12, i64 %13, i64 %14, ptr %15, i64 %16, i64 %17, i64 %11), !dbg !4967
  %19 = add i64 %10, %18, !dbg !4968
    #dbg_value({ ptr, i64, i64 } %5, !4952, !DIExpression(), !4969)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4970)
  %20 = sub i64 %n, 1, !dbg !4971
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4972
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4972
  %21 = icmp uge i64 %20, %indexaddr.len2, !dbg !4972
  br i1 %21, label %lookup.throw3, label %lookup.next4, !dbg !4972

lookup.next4:                                     ; preds = %lookup.next
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %20, !dbg !4972
  %23 = load i64, ptr %22, align 8, !dbg !4972
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4973)
    #dbg_value({ ptr, i64, i64 } %5, !4952, !DIExpression(), !4974)
    #dbg_value(i64 %n, !4953, !DIExpression(), !4975)
  %24 = sub i64 %n, 1, !dbg !4976
  %25 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %26 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %27 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4977
  %28 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4977
  %29 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4977
  %30 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !4977
  %31 = call i64 @f_gold(ptr %25, i64 %26, i64 %27, ptr %28, i64 %29, i64 %30, i64 %24), !dbg !4977
  %32 = add i64 %23, %31, !dbg !4978
  %33 = call i64 @main.max(i64 %19, i64 %32, ptr undef), !dbg !4979
  ret i64 %33, !dbg !4980

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972
}
