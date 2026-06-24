define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4941
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4941)
    #dbg_value(i64 0, !4940, !DIExpression(), !4942)
    #dbg_value(i64 %x, !4939, !DIExpression(), !4943)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4944)
    #dbg_value(i64 %low, !4937, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %3 = icmp uge i64 %low, %indexaddr.len, !dbg !4946
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %low, !dbg !4946
  %5 = load i64, ptr %4, align 8, !dbg !4946
  %6 = icmp sle i64 %x, %5, !dbg !4947
  br i1 %6, label %if.then, label %if.done, !dbg !4948

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 %low, !4937, !DIExpression(), !4949)
  ret i64 %low, !dbg !4950

if.done:                                          ; preds = %lookup.next
    #dbg_value(i64 %low, !4937, !DIExpression(), !4951)
    #dbg_value(i64 %low, !4940, !DIExpression(), !4952)
  br label %for.loop, !dbg !4948

for.loop:                                         ; preds = %if.done4, %if.done
  %7 = phi i64 [ %low, %if.done ], [ %23, %if.done4 ], !dbg !4942
    #dbg_value(i64 %7, !4940, !DIExpression(), !4953)
    #dbg_value(i64 %high, !4938, !DIExpression(), !4954)
  %8 = icmp slt i64 %7, %high, !dbg !4955
  br i1 %8, label %for.body, label %for.done, !dbg !4948

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4956)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4957)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %9 = icmp uge i64 %7, %indexaddr.len6, !dbg !4958
  br i1 %9, label %lookup.throw7, label %lookup.next8, !dbg !4958

lookup.next8:                                     ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %7, !dbg !4958
  %11 = load i64, ptr %10, align 8, !dbg !4958
    #dbg_value(i64 %x, !4939, !DIExpression(), !4959)
  %12 = icmp eq i64 %11, %x, !dbg !4960
  br i1 %12, label %if.then1, label %if.done2, !dbg !4948

if.then1:                                         ; preds = %lookup.next8
    #dbg_value(i64 %7, !4940, !DIExpression(), !4961)
  ret i64 %7, !dbg !4962

if.done2:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4963)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4964)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4965
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4965
  %13 = icmp uge i64 %7, %indexaddr.len10, !dbg !4965
  br i1 %13, label %lookup.throw11, label %lookup.next12, !dbg !4965

lookup.next12:                                    ; preds = %if.done2
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %7, !dbg !4965
  %15 = load i64, ptr %14, align 8, !dbg !4965
    #dbg_value(i64 %x, !4939, !DIExpression(), !4966)
  %16 = icmp slt i64 %15, %x, !dbg !4967
  br i1 %16, label %cond.true, label %if.done4, !dbg !4948

cond.true:                                        ; preds = %lookup.next12
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4969)
  %17 = add i64 %7, 1, !dbg !4970
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %18 = icmp uge i64 %17, %indexaddr.len14, !dbg !4971
  br i1 %18, label %lookup.throw15, label %lookup.next16, !dbg !4971

lookup.next16:                                    ; preds = %cond.true
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %17, !dbg !4971
  %20 = load i64, ptr %19, align 8, !dbg !4971
    #dbg_value(i64 %x, !4939, !DIExpression(), !4972)
  %21 = icmp sge i64 %20, %x, !dbg !4973
  br i1 %21, label %if.then3, label %if.done4, !dbg !4948

if.then3:                                         ; preds = %lookup.next16
    #dbg_value(i64 %7, !4940, !DIExpression(), !4974)
  %22 = add i64 %7, 1, !dbg !4975
  ret i64 %22, !dbg !4976

if.done4:                                         ; preds = %lookup.next16, %lookup.next12
  %23 = add i64 %7, 1, !dbg !4977
    #dbg_value(i64 %23, !4940, !DIExpression(), !4977)
  br label %for.loop, !dbg !4948

for.done:                                         ; preds = %for.loop
  ret i64 -1, !dbg !4978

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

lookup.throw7:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw11:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

lookup.throw15:                                   ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971
}
