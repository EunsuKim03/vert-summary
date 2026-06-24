define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %7, %for.done ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %29, %for.done ], !dbg !4944
    #dbg_value(i64 %4, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %5 = icmp slt i64 %4, %n, !dbg !4948
  br i1 %5, label %for.body, label %for.done3, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4940, !DIExpression(), !4949)
  %6 = add i64 %4, 1, !dbg !4950
    #dbg_value(i64 %6, !4941, !DIExpression(), !4951)
  br label %for.loop1, !dbg !4945

for.loop1:                                        ; preds = %if.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %19, %if.done ], !dbg !4943
  %8 = phi i64 [ %6, %for.body ], [ %20, %if.done ], !dbg !4951
    #dbg_value(i64 %8, !4941, !DIExpression(), !4952)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4953)
  %9 = icmp slt i64 %8, %n, !dbg !4954
  br i1 %9, label %for.body2, label %for.done, !dbg !4945

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4955)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4956)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4957
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4957
  %10 = icmp uge i64 %4, %indexaddr.len, !dbg !4957
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4957

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4957
  %12 = load i64, ptr %11, align 8, !dbg !4957
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4958)
    #dbg_value(i64 %8, !4941, !DIExpression(), !4959)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4960
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4960
  %13 = icmp uge i64 %8, %indexaddr.len5, !dbg !4960
  br i1 %13, label %lookup.throw6, label %lookup.next7, !dbg !4960

lookup.next7:                                     ; preds = %lookup.next
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %8, !dbg !4960
  %15 = load i64, ptr %14, align 8, !dbg !4960
  %16 = sub i64 %12, %15, !dbg !4961
    #dbg_value(i64 %k, !4938, !DIExpression(), !4962)
  %17 = icmp eq i64 %16, %k, !dbg !4963
  br i1 %17, label %if.then, label %cond.false, !dbg !4945

if.then:                                          ; preds = %lookup.next15, %lookup.next7
  %18 = add i64 %7, 1, !dbg !4964
    #dbg_value(i64 %18, !4939, !DIExpression(), !4964)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %lookup.next15, %if.then
  %19 = phi i64 [ %7, %lookup.next15 ], [ %18, %if.then ], !dbg !4943
  %20 = add i64 %8, 1, !dbg !4965
    #dbg_value(i64 %20, !4941, !DIExpression(), !4965)
  br label %for.loop1, !dbg !4945

cond.false:                                       ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4966)
    #dbg_value(i64 %8, !4941, !DIExpression(), !4967)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4968
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4968
  %21 = icmp uge i64 %8, %indexaddr.len9, !dbg !4968
  br i1 %21, label %lookup.throw10, label %lookup.next11, !dbg !4968

lookup.next11:                                    ; preds = %cond.false
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %8, !dbg !4968
  %23 = load i64, ptr %22, align 8, !dbg !4968
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4969)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4970)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %24 = icmp uge i64 %4, %indexaddr.len13, !dbg !4971
  br i1 %24, label %lookup.throw14, label %lookup.next15, !dbg !4971

lookup.next15:                                    ; preds = %lookup.next11
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %4, !dbg !4971
  %26 = load i64, ptr %25, align 8, !dbg !4971
  %27 = sub i64 %23, %26, !dbg !4972
    #dbg_value(i64 %k, !4938, !DIExpression(), !4973)
  %28 = icmp eq i64 %27, %k, !dbg !4974
  br i1 %28, label %if.then, label %if.done, !dbg !4945

for.done:                                         ; preds = %for.loop1
  %29 = add i64 %4, 1, !dbg !4975
    #dbg_value(i64 %29, !4940, !DIExpression(), !4975)
  br label %for.loop, !dbg !4945

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4939, !DIExpression(), !4976)
  ret i64 %3, !dbg !4977

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960

lookup.throw10:                                   ; preds = %cond.false
  call void @runtime.lookupPanic(ptr undef), !dbg !4968
  unreachable, !dbg !4968

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971
}
