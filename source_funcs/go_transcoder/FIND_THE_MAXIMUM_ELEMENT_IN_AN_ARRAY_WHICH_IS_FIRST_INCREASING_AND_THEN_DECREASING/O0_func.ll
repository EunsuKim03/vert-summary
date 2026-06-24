define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4942)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4943)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4944
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4944
  %3 = icmp uge i64 %low, %indexaddr.len, !dbg !4944
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4944

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %low, !dbg !4944
  %5 = load i64, ptr %4, align 8, !dbg !4944
    #dbg_value(i64 %5, !4939, !DIExpression(), !4945)
    #dbg_value(i64 0, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4947)
  %6 = add i64 %low, 1, !dbg !4948
    #dbg_value(i64 %6, !4940, !DIExpression(), !4949)
  br label %for.loop, !dbg !4950

for.loop:                                         ; preds = %lookup.next8, %lookup.next
  %7 = phi i64 [ %5, %lookup.next ], [ %16, %lookup.next8 ], !dbg !4945
  %8 = phi i64 [ %6, %lookup.next ], [ %17, %lookup.next8 ], !dbg !4946
    #dbg_value(i64 %8, !4940, !DIExpression(), !4951)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4952)
  %9 = icmp sle i64 %8, %high, !dbg !4953
  br i1 %9, label %for.body, label %for.done, !dbg !4950

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4955)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %10 = icmp uge i64 %8, %indexaddr.len2, !dbg !4956
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4956

lookup.next4:                                     ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %8, !dbg !4956
  %12 = load i64, ptr %11, align 8, !dbg !4956
    #dbg_value(i64 %7, !4939, !DIExpression(), !4957)
  %13 = icmp sgt i64 %12, %7, !dbg !4958
  br i1 %13, label %if.then, label %for.done, !dbg !4950

if.then:                                          ; preds = %lookup.next4
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %8, !4940, !DIExpression(), !4960)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %14 = icmp uge i64 %8, %indexaddr.len6, !dbg !4961
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4961

lookup.next8:                                     ; preds = %if.then
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %8, !dbg !4961
  %16 = load i64, ptr %15, align 8, !dbg !4961
    #dbg_value(i64 %16, !4939, !DIExpression(), !4962)
  %17 = add i64 %8, 1, !dbg !4963
    #dbg_value(i64 %17, !4940, !DIExpression(), !4963)
  br label %for.loop, !dbg !4950

for.done:                                         ; preds = %lookup.next4, %for.loop
    #dbg_value(i64 %7, !4939, !DIExpression(), !4964)
  ret i64 %7, !dbg !4965

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw7:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961
}
