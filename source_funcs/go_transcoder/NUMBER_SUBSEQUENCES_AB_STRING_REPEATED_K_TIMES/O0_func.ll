define i64 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap, i64 %K) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4939
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4939
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4939
    #dbg_value(ptr %s.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(i64 %s.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i64 %s.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4939)
    #dbg_value(i64 %K, !4933, !DIExpression(), !4939)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4940)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4941
    #dbg_value(i64 %len, !4934, !DIExpression(), !4942)
    #dbg_value(i64 0, !4935, !DIExpression(), !4943)
    #dbg_value(i64 0, !4936, !DIExpression(), !4944)
    #dbg_value(i64 0, !4937, !DIExpression(), !4945)
    #dbg_value(i64 0, !4938, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %if.done2, %entry
  %3 = phi i64 [ 0, %entry ], [ %20, %if.done2 ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %13, %if.done2 ], !dbg !4944
  %5 = phi i64 [ 0, %entry ], [ %21, %if.done2 ], !dbg !4945
  %6 = phi i64 [ 0, %entry ], [ %22, %if.done2 ], !dbg !4946
    #dbg_value(i64 %6, !4938, !DIExpression(), !4948)
    #dbg_value(i64 %len, !4934, !DIExpression(), !4949)
  %7 = icmp slt i64 %6, %len, !dbg !4950
  br i1 %7, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4951)
    #dbg_value(i64 %6, !4938, !DIExpression(), !4952)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !4953
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4953

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !4953
  %10 = load i8, ptr %9, align 1, !dbg !4953
  %11 = icmp eq i8 %10, 97, !dbg !4954
  br i1 %11, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %lookup.next
  %12 = add i64 %4, 1, !dbg !4955
    #dbg_value(i64 %12, !4936, !DIExpression(), !4955)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %if.then, %lookup.next
  %13 = phi i64 [ %4, %lookup.next ], [ %12, %if.then ], !dbg !4944
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4956)
    #dbg_value(i64 %6, !4938, !DIExpression(), !4957)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %14 = icmp uge i64 %6, %indexaddr.len4, !dbg !4958
  br i1 %14, label %lookup.throw5, label %lookup.next6, !dbg !4958

lookup.next6:                                     ; preds = %if.done
  %15 = getelementptr inbounds i8, ptr %indexaddr.ptr3, i64 %6, !dbg !4958
  %16 = load i8, ptr %15, align 1, !dbg !4958
  %17 = icmp eq i8 %16, 98, !dbg !4959
  br i1 %17, label %if.then1, label %if.done2, !dbg !4947

if.then1:                                         ; preds = %lookup.next6
  %18 = add i64 %5, 1, !dbg !4960
    #dbg_value(i64 %18, !4937, !DIExpression(), !4960)
    #dbg_value(i64 %13, !4936, !DIExpression(), !4961)
  %19 = add i64 %3, %13, !dbg !4962
    #dbg_value(i64 %19, !4935, !DIExpression(), !4962)
  br label %if.done2, !dbg !4947

if.done2:                                         ; preds = %if.then1, %lookup.next6
  %20 = phi i64 [ %3, %lookup.next6 ], [ %19, %if.then1 ], !dbg !4943
  %21 = phi i64 [ %5, %lookup.next6 ], [ %18, %if.then1 ], !dbg !4945
  %22 = add i64 %6, 1, !dbg !4963
    #dbg_value(i64 %22, !4938, !DIExpression(), !4963)
  br label %for.loop, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4935, !DIExpression(), !4964)
    #dbg_value(i64 %K, !4933, !DIExpression(), !4965)
  %23 = mul i64 %3, %K, !dbg !4966
    #dbg_value(i64 %K, !4933, !DIExpression(), !4967)
    #dbg_value(i64 %K, !4933, !DIExpression(), !4968)
  %24 = sub i64 %K, 1, !dbg !4969
  %25 = mul i64 %K, %24, !dbg !4970
  %26 = icmp eq i64 %25, -9223372036854775808, !dbg !4971
  %27 = and i1 false, %26, !dbg !4971
  %28 = select i1 %27, i64 1, i64 2, !dbg !4971
  %29 = sdiv i64 %25, %28, !dbg !4971
    #dbg_value(i64 %4, !4936, !DIExpression(), !4972)
  %30 = mul i64 %29, %4, !dbg !4973
    #dbg_value(i64 %5, !4937, !DIExpression(), !4974)
  %31 = mul i64 %30, %5, !dbg !4975
  %32 = add i64 %23, %31, !dbg !4976
  ret i64 %32, !dbg !4977

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw5:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958
}
