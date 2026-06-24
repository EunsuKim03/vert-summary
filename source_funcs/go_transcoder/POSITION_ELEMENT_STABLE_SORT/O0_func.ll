define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %idx) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %idx, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
    #dbg_value(i64 0, !4940, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %if.done2, %entry
  %3 = phi i64 [ 0, %entry ], [ %24, %if.done2 ], !dbg !4942
  %4 = phi i64 [ 0, %entry ], [ %25, %if.done2 ], !dbg !4943
    #dbg_value(i64 %4, !4940, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  %5 = icmp slt i64 %4, %n, !dbg !4947
  br i1 %5, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4949)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4950
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4950
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4950
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4950

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4950
  %8 = load i64, ptr %7, align 8, !dbg !4950
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %idx, !4938, !DIExpression(), !4952)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4953
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4953
  %9 = icmp uge i64 %idx, %indexaddr.len4, !dbg !4953
  br i1 %9, label %lookup.throw5, label %lookup.next6, !dbg !4953

lookup.next6:                                     ; preds = %lookup.next
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %idx, !dbg !4953
  %11 = load i64, ptr %10, align 8, !dbg !4953
  %12 = icmp slt i64 %8, %11, !dbg !4954
  br i1 %12, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %lookup.next6
  %13 = add i64 %3, 1, !dbg !4955
    #dbg_value(i64 %13, !4939, !DIExpression(), !4955)
  br label %if.done, !dbg !4944

if.done:                                          ; preds = %if.then, %lookup.next6
  %14 = phi i64 [ %3, %lookup.next6 ], [ %13, %if.then ], !dbg !4942
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4957)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %15 = icmp uge i64 %4, %indexaddr.len8, !dbg !4958
  br i1 %15, label %lookup.throw9, label %lookup.next10, !dbg !4958

lookup.next10:                                    ; preds = %if.done
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %4, !dbg !4958
  %17 = load i64, ptr %16, align 8, !dbg !4958
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %idx, !4938, !DIExpression(), !4960)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %18 = icmp uge i64 %idx, %indexaddr.len12, !dbg !4961
  br i1 %18, label %lookup.throw13, label %lookup.next14, !dbg !4961

lookup.next14:                                    ; preds = %lookup.next10
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %idx, !dbg !4961
  %20 = load i64, ptr %19, align 8, !dbg !4961
  %21 = icmp eq i64 %17, %20, !dbg !4962
  br i1 %21, label %cond.true, label %if.done2, !dbg !4944

cond.true:                                        ; preds = %lookup.next14
    #dbg_value(i64 %4, !4940, !DIExpression(), !4963)
    #dbg_value(i64 %idx, !4938, !DIExpression(), !4964)
  %22 = icmp slt i64 %4, %idx, !dbg !4965
  br i1 %22, label %if.then1, label %if.done2, !dbg !4944

if.then1:                                         ; preds = %cond.true
  %23 = add i64 %14, 1, !dbg !4966
    #dbg_value(i64 %23, !4939, !DIExpression(), !4966)
  br label %if.done2, !dbg !4944

if.done2:                                         ; preds = %if.then1, %cond.true, %lookup.next14
  %24 = phi i64 [ %14, %lookup.next14 ], [ %14, %cond.true ], [ %23, %if.then1 ], !dbg !4942
  %25 = add i64 %4, 1, !dbg !4967
    #dbg_value(i64 %25, !4940, !DIExpression(), !4967)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4939, !DIExpression(), !4968)
  ret i64 %3, !dbg !4969

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

lookup.throw9:                                    ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961
}
