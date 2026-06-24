define i64 @f_gold(i64 %W, ptr nocapture %wt.data, i64 %wt.len, i64 %wt.cap, ptr nocapture %val.data, i64 %val.len, i64 %val.cap, i64 %n) #0 !dbg !4943 {
entry:
    #dbg_value(i64 %W, !4951, !DIExpression(), !4955)
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %wt.data, 0, !dbg !4955
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %wt.len, 1, !dbg !4955
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %wt.cap, 2, !dbg !4955
    #dbg_value(ptr %wt.data, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4955)
    #dbg_value(i64 %wt.len, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4955)
    #dbg_value(i64 %wt.cap, !4952, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4955)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %val.data, 0, !dbg !4955
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %val.len, 1, !dbg !4955
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %val.cap, 2, !dbg !4955
    #dbg_value(ptr %val.data, !4953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4955)
    #dbg_value(i64 %val.len, !4953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4955)
    #dbg_value(i64 %val.cap, !4953, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4955)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4955)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4956)
  %6 = icmp eq i64 %n, 0, !dbg !4957
  br i1 %6, label %if.then, label %cond.false, !dbg !4958

if.then:                                          ; preds = %cond.false, %entry
  ret i64 0, !dbg !4959

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %W, !4951, !DIExpression(), !4960)
  %7 = icmp eq i64 %W, 0, !dbg !4961
  br i1 %7, label %if.then, label %if.done, !dbg !4958

if.done:                                          ; preds = %cond.false
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4962)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4963)
  %8 = sub i64 %n, 1, !dbg !4964
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4965
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4965
  %9 = icmp uge i64 %8, %indexaddr.len, !dbg !4965
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4965

lookup.next:                                      ; preds = %if.done
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4965
  %11 = load i64, ptr %10, align 8, !dbg !4965
    #dbg_value(i64 %W, !4951, !DIExpression(), !4966)
  %12 = icmp sgt i64 %11, %W, !dbg !4967
  br i1 %12, label %if.then1, label %if.else, !dbg !4958

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %W, !4951, !DIExpression(), !4968)
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4969)
    #dbg_value({ ptr, i64, i64 } %5, !4953, !DIExpression(), !4970)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4971)
  %13 = sub i64 %n, 1, !dbg !4972
  %14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %16 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4973
  %17 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4973
  %18 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4973
  %19 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !4973
  %20 = call i64 @f_gold(i64 %W, ptr %14, i64 %15, i64 %16, ptr %17, i64 %18, i64 %19, i64 %13), !dbg !4973
  ret i64 %20, !dbg !4974

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %5, !4953, !DIExpression(), !4975)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4976)
  %21 = sub i64 %n, 1, !dbg !4977
  %indexaddr.ptr2 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4978
  %indexaddr.len3 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4978
  %22 = icmp uge i64 %21, %indexaddr.len3, !dbg !4978
  br i1 %22, label %lookup.throw4, label %lookup.next5, !dbg !4978

lookup.next5:                                     ; preds = %if.else
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr2, i64 %21, !dbg !4978
  %24 = load i64, ptr %23, align 8, !dbg !4978
    #dbg_value(i64 %W, !4951, !DIExpression(), !4979)
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4980)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4981)
  %25 = sub i64 %n, 1, !dbg !4982
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4983
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4983
  %26 = icmp uge i64 %25, %indexaddr.len7, !dbg !4983
  br i1 %26, label %lookup.throw8, label %lookup.next9, !dbg !4983

lookup.next9:                                     ; preds = %lookup.next5
  %27 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %25, !dbg !4983
  %28 = load i64, ptr %27, align 8, !dbg !4983
  %29 = sub i64 %W, %28, !dbg !4984
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4985)
    #dbg_value({ ptr, i64, i64 } %5, !4953, !DIExpression(), !4986)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4987)
  %30 = sub i64 %n, 1, !dbg !4988
  %31 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4989
  %32 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4989
  %33 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4989
  %34 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4989
  %35 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4989
  %36 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !4989
  %37 = call i64 @f_gold(i64 %29, ptr %31, i64 %32, i64 %33, ptr %34, i64 %35, i64 %36, i64 %30), !dbg !4989
  %38 = add i64 %24, %37, !dbg !4990
    #dbg_value(i64 %W, !4951, !DIExpression(), !4991)
    #dbg_value({ ptr, i64, i64 } %2, !4952, !DIExpression(), !4992)
    #dbg_value({ ptr, i64, i64 } %5, !4953, !DIExpression(), !4993)
    #dbg_value(i64 %n, !4954, !DIExpression(), !4994)
  %39 = sub i64 %n, 1, !dbg !4995
  %40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4996
  %41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4996
  %42 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4996
  %43 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4996
  %44 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4996
  %45 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !4996
  %46 = call i64 @f_gold(i64 %W, ptr %40, i64 %41, i64 %42, ptr %43, i64 %44, i64 %45, i64 %39), !dbg !4996
  %47 = call i64 @main.max(i64 %38, i64 %46, ptr undef), !dbg !4997
  ret i64 %47, !dbg !4998

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

lookup.throw4:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4978
  unreachable, !dbg !4978

lookup.throw8:                                    ; preds = %lookup.next5
  call void @runtime.lookupPanic(ptr undef), !dbg !4983
  unreachable, !dbg !4983
}
