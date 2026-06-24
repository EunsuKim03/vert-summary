define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %key, i64 %capacity) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %key, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %capacity, !4939, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %capacity, !4939, !DIExpression(), !4943)
  %3 = icmp sge i64 %n, %capacity, !dbg !4944
  br i1 %3, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  ret i64 %n, !dbg !4947

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4940, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4949)
  %4 = sub i64 %n, 1, !dbg !4950
    #dbg_value(i64 %4, !4940, !DIExpression(), !4951)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %lookup.next8, %if.done
  %5 = phi i64 [ %4, %if.done ], [ %17, %lookup.next8 ], !dbg !4948
    #dbg_value(i64 %5, !4940, !DIExpression(), !4952)
  %6 = icmp sge i64 %5, 0, !dbg !4953
  br i1 %6, label %cond.true, label %for.done, !dbg !4945

cond.true:                                        ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4954)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4956
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %cond.true
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4956
  %9 = load i64, ptr %8, align 8, !dbg !4956
    #dbg_value(i64 %key, !4938, !DIExpression(), !4957)
  %10 = icmp sgt i64 %9, %key, !dbg !4958
  br i1 %10, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4960)
  %11 = add i64 %5, 1, !dbg !4961
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4963)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4964
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4964
  %12 = icmp uge i64 %5, %indexaddr.len2, !dbg !4964
  br i1 %12, label %lookup.throw3, label %lookup.next4, !dbg !4964

lookup.next4:                                     ; preds = %for.body
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %5, !dbg !4964
  %14 = load i64, ptr %13, align 8, !dbg !4964
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4965
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4965
  %15 = icmp uge i64 %11, %indexaddr.len6, !dbg !4965
  br i1 %15, label %lookup.throw7, label %lookup.next8, !dbg !4965

lookup.next8:                                     ; preds = %lookup.next4
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %11, !dbg !4965
  store i64 %14, ptr %16, align 8, !dbg !4965
  %17 = sub i64 %5, 1, !dbg !4966
    #dbg_value(i64 %17, !4940, !DIExpression(), !4966)
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %lookup.next, %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4967)
    #dbg_value(i64 %5, !4940, !DIExpression(), !4968)
  %18 = add i64 %5, 1, !dbg !4969
    #dbg_value(i64 %key, !4938, !DIExpression(), !4970)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %19 = icmp uge i64 %18, %indexaddr.len10, !dbg !4971
  br i1 %19, label %lookup.throw11, label %lookup.next12, !dbg !4971

lookup.next12:                                    ; preds = %for.done
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %18, !dbg !4971
  store i64 %key, ptr %20, align 8, !dbg !4971
    #dbg_value(i64 %n, !4937, !DIExpression(), !4972)
  %21 = add i64 %n, 1, !dbg !4973
  ret i64 %21, !dbg !4974

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964

lookup.throw7:                                    ; preds = %lookup.next4
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

lookup.throw11:                                   ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971
}
