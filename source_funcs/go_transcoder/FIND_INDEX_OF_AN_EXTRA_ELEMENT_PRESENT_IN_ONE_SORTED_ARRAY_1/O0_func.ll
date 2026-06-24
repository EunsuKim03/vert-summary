define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr1.data, 0, !dbg !4943
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr1.len, 1, !dbg !4943
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr1.cap, 2, !dbg !4943
    #dbg_value(ptr %arr1.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %arr1.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %arr1.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4943)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr2.data, 0, !dbg !4943
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %arr2.len, 1, !dbg !4943
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %arr2.cap, 2, !dbg !4943
    #dbg_value(ptr %arr2.data, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %arr2.len, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %arr2.cap, !4937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4943)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4945)
    #dbg_value(i64 0, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4938, !DIExpression(), !4947)
  %6 = sub i64 %n, 1, !dbg !4948
    #dbg_value(i64 %6, !4941, !DIExpression(), !4949)
  br label %for.loop, !dbg !4950

for.loop:                                         ; preds = %if.else, %if.then, %entry
  %7 = phi i64 [ %n, %entry ], [ %7, %if.then ], [ %15, %if.else ], !dbg !4945
  %8 = phi i64 [ 0, %entry ], [ %23, %if.then ], [ %8, %if.else ], !dbg !4946
  %9 = phi i64 [ %6, %entry ], [ %9, %if.then ], [ %24, %if.else ], !dbg !4949
    #dbg_value(i64 %8, !4940, !DIExpression(), !4951)
    #dbg_value(i64 %9, !4941, !DIExpression(), !4952)
  %10 = icmp sle i64 %8, %9, !dbg !4953
  br i1 %10, label %for.body, label %for.done, !dbg !4950

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %8, !4940, !DIExpression(), !4954)
    #dbg_value(i64 %9, !4941, !DIExpression(), !4955)
  %11 = add i64 %8, %9, !dbg !4956
  %12 = icmp eq i64 %11, -9223372036854775808, !dbg !4957
  %13 = and i1 false, %12, !dbg !4957
  %14 = select i1 %13, i64 1, i64 2, !dbg !4957
  %15 = sdiv i64 %11, %14, !dbg !4957
    #dbg_value(i64 %15, !4942, !DIExpression(), !4958)
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4959)
    #dbg_value(i64 %15, !4942, !DIExpression(), !4960)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4961
  %indexaddr.len = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4961
  %16 = icmp uge i64 %15, %indexaddr.len, !dbg !4961
  br i1 %16, label %lookup.throw, label %lookup.next, !dbg !4961

lookup.next:                                      ; preds = %for.body
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %15, !dbg !4961
  %18 = load i64, ptr %17, align 8, !dbg !4961
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %15, !4942, !DIExpression(), !4963)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %19 = icmp uge i64 %15, %indexaddr.len2, !dbg !4964
  br i1 %19, label %lookup.throw3, label %lookup.next4, !dbg !4964

lookup.next4:                                     ; preds = %lookup.next
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %15, !dbg !4964
  %21 = load i64, ptr %20, align 8, !dbg !4964
  %22 = icmp eq i64 %18, %21, !dbg !4965
  br i1 %22, label %if.then, label %if.else, !dbg !4950

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %15, !4942, !DIExpression(), !4966)
  %23 = add i64 %15, 1, !dbg !4967
    #dbg_value(i64 %23, !4940, !DIExpression(), !4968)
  br label %for.loop, !dbg !4950

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %15, !4942, !DIExpression(), !4969)
    #dbg_value(i64 %15, !4939, !DIExpression(), !4970)
    #dbg_value(i64 %15, !4942, !DIExpression(), !4971)
  %24 = sub i64 %15, 1, !dbg !4972
    #dbg_value(i64 %24, !4941, !DIExpression(), !4973)
  br label %for.loop, !dbg !4950

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4939, !DIExpression(), !4974)
  ret i64 %7, !dbg !4975

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964
}
