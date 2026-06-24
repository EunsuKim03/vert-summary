define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %l, i64 %r, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %l, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %r, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4941)
    #dbg_value(i64 %r, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %l, !4937, !DIExpression(), !4943)
  %3 = icmp sge i64 %r, %l, !dbg !4944
  br i1 %3, label %if.then, label %if.done4, !dbg !4945

if.then:                                          ; preds = %entry
    #dbg_value(i64 %l, !4937, !DIExpression(), !4946)
    #dbg_value(i64 %r, !4938, !DIExpression(), !4947)
    #dbg_value(i64 %l, !4937, !DIExpression(), !4948)
  %4 = sub i64 %r, %l, !dbg !4949
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4950
  %6 = and i1 false, %5, !dbg !4950
  %7 = select i1 %6, i64 1, i64 2, !dbg !4950
  %8 = sdiv i64 %4, %7, !dbg !4950
  %9 = add i64 %l, %8, !dbg !4951
    #dbg_value(i64 %9, !4940, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4954)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %10 = icmp uge i64 %9, %indexaddr.len, !dbg !4955
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4955

lookup.next:                                      ; preds = %if.then
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %9, !dbg !4955
  %12 = load i64, ptr %11, align 8, !dbg !4955
    #dbg_value(i64 %x, !4939, !DIExpression(), !4956)
  %13 = icmp eq i64 %12, %x, !dbg !4957
  br i1 %13, label %if.then1, label %if.done, !dbg !4945

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %9, !4940, !DIExpression(), !4958)
  ret i64 %9, !dbg !4959

if.done:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4961)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %14 = icmp uge i64 %9, %indexaddr.len6, !dbg !4962
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4962

lookup.next8:                                     ; preds = %if.done
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %9, !dbg !4962
  %16 = load i64, ptr %15, align 8, !dbg !4962
    #dbg_value(i64 %x, !4939, !DIExpression(), !4963)
  %17 = icmp sgt i64 %16, %x, !dbg !4964
  br i1 %17, label %if.then2, label %if.done3, !dbg !4945

if.then2:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %l, !4937, !DIExpression(), !4966)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4967)
  %18 = sub i64 %9, 1, !dbg !4968
    #dbg_value(i64 %x, !4939, !DIExpression(), !4969)
  %19 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %20 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %21 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4970
  %22 = call i64 @f_gold(ptr %19, i64 %20, i64 %21, i64 %l, i64 %18, i64 %x), !dbg !4970
  ret i64 %22, !dbg !4971

if.done3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4972)
    #dbg_value(i64 %9, !4940, !DIExpression(), !4973)
  %23 = add i64 %9, 1, !dbg !4974
    #dbg_value(i64 %r, !4938, !DIExpression(), !4975)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4976)
  %24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %26 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4977
  %27 = call i64 @f_gold(ptr %24, i64 %25, i64 %26, i64 %23, i64 %r, i64 %x), !dbg !4977
  ret i64 %27, !dbg !4978

if.done4:                                         ; preds = %entry
  ret i64 -1, !dbg !4979

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955

lookup.throw7:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
