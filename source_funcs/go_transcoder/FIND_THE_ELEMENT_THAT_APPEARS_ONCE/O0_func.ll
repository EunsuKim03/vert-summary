define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 0, !4938, !DIExpression(), !4943)
    #dbg_value(i64 0, !4939, !DIExpression(), !4944)
    #dbg_value(i64 0, !4940, !DIExpression(), !4945)
    #dbg_value(i64 0, !4941, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %lookup.next4, %entry
  %3 = phi i64 [ 0, %entry ], [ %18, %lookup.next4 ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %19, %lookup.next4 ], !dbg !4944
  %5 = phi i64 [ 0, %entry ], [ %20, %lookup.next4 ], !dbg !4946
    #dbg_value(i64 %5, !4941, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %6 = icmp slt i64 %5, %n, !dbg !4950
  br i1 %6, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4951)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %5, !4941, !DIExpression(), !4954)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4955
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4955

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4955
  %9 = load i64, ptr %8, align 8, !dbg !4955
  %10 = and i64 %3, %9, !dbg !4956
  %11 = or i64 %4, %10, !dbg !4957
    #dbg_value(i64 %11, !4939, !DIExpression(), !4958)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4959)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %5, !4941, !DIExpression(), !4961)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %12 = icmp uge i64 %5, %indexaddr.len2, !dbg !4962
  br i1 %12, label %lookup.throw3, label %lookup.next4, !dbg !4962

lookup.next4:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %5, !dbg !4962
  %14 = load i64, ptr %13, align 8, !dbg !4962
  %15 = xor i64 %3, %14, !dbg !4963
    #dbg_value(i64 %15, !4938, !DIExpression(), !4964)
    #dbg_value(i64 %15, !4938, !DIExpression(), !4965)
    #dbg_value(i64 %11, !4939, !DIExpression(), !4966)
  %16 = and i64 %15, %11, !dbg !4967
  %17 = xor i64 %16, -1, !dbg !4968
    #dbg_value(i64 %17, !4940, !DIExpression(), !4969)
    #dbg_value(i64 %17, !4940, !DIExpression(), !4970)
  %18 = and i64 %15, %17, !dbg !4971
    #dbg_value(i64 %18, !4938, !DIExpression(), !4971)
    #dbg_value(i64 %17, !4940, !DIExpression(), !4972)
  %19 = and i64 %11, %17, !dbg !4973
    #dbg_value(i64 %19, !4939, !DIExpression(), !4973)
  %20 = add i64 %5, 1, !dbg !4974
    #dbg_value(i64 %20, !4941, !DIExpression(), !4974)
  br label %for.loop, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4975)
  ret i64 %3, !dbg !4976

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962
}
