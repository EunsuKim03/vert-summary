define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4935
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
    #dbg_value(i64 %len, !4931, !DIExpression(), !4938)
    #dbg_value(i64 0, !4932, !DIExpression(), !4939)
    #dbg_value(i64 0, !4933, !DIExpression(), !4940)
    #dbg_value(i64 0, !4934, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %18, %if.done ], !dbg !4939
  %4 = phi i64 [ 0, %entry ], [ %19, %if.done ], !dbg !4940
  %5 = phi i64 [ 0, %entry ], [ %20, %if.done ], !dbg !4941
    #dbg_value(i64 %5, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %len, !4931, !DIExpression(), !4944)
  %6 = icmp slt i64 %5, %len, !dbg !4945
  br i1 %6, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4934, !DIExpression(), !4946)
  %7 = icmp eq i64 %5, -9223372036854775808, !dbg !4947
  %8 = and i1 false, %7, !dbg !4947
  %9 = select i1 %8, i64 1, i64 2, !dbg !4947
  %10 = srem i64 %5, %9, !dbg !4947
  %11 = icmp eq i64 %10, 0, !dbg !4948
  br i1 %11, label %if.then, label %if.else, !dbg !4942

if.then:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4949)
    #dbg_value(i64 %5, !4934, !DIExpression(), !4950)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4951
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4951
  %12 = icmp uge i64 %5, %indexaddr.len, !dbg !4951
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !4951

lookup.next:                                      ; preds = %if.then
  %13 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %5, !dbg !4951
  %14 = load i8, ptr %13, align 1, !dbg !4951
  %15 = sub i8 %14, 48, !dbg !4952
  %16 = zext i8 %15 to i64, !dbg !4953
  %17 = add i64 %3, %16, !dbg !4954
    #dbg_value(i64 %17, !4932, !DIExpression(), !4954)
  br label %if.done, !dbg !4942

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %18 = phi i64 [ %17, %lookup.next ], [ %3, %lookup.next4 ], !dbg !4939
  %19 = phi i64 [ %4, %lookup.next ], [ %26, %lookup.next4 ], !dbg !4940
  %20 = add i64 %5, 1, !dbg !4955
    #dbg_value(i64 %20, !4934, !DIExpression(), !4955)
  br label %for.loop, !dbg !4942

if.else:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4956)
    #dbg_value(i64 %5, !4934, !DIExpression(), !4957)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %21 = icmp uge i64 %5, %indexaddr.len2, !dbg !4958
  br i1 %21, label %lookup.throw3, label %lookup.next4, !dbg !4958

lookup.next4:                                     ; preds = %if.else
  %22 = getelementptr inbounds i8, ptr %indexaddr.ptr1, i64 %5, !dbg !4958
  %23 = load i8, ptr %22, align 1, !dbg !4958
  %24 = sub i8 %23, 48, !dbg !4959
  %25 = zext i8 %24 to i64, !dbg !4960
  %26 = add i64 %4, %25, !dbg !4961
    #dbg_value(i64 %26, !4933, !DIExpression(), !4961)
  br label %if.done, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4932, !DIExpression(), !4962)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4963)
  %27 = sub i64 %3, %4, !dbg !4964
  %28 = icmp eq i64 %27, -9223372036854775808, !dbg !4965
  %29 = and i1 false, %28, !dbg !4965
  %30 = select i1 %29, i64 1, i64 11, !dbg !4965
  %31 = srem i64 %27, %30, !dbg !4965
  ret i64 %31, !dbg !4966

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

lookup.throw3:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958
}
