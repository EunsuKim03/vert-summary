define i64 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4960
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4960
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4960
    #dbg_value(ptr %str.data, !4955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4960)
    #dbg_value(i64 %str.len, !4955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4960)
    #dbg_value(i64 %str.cap, !4955, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4960)
    #dbg_value(i64 0, !4956, !DIExpression(), !4961)
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4962)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4963
    #dbg_value(i64 %len, !4957, !DIExpression(), !4964)
    #dbg_value(i64 0, !4958, !DIExpression(), !4965)
  br label %for.loop, !dbg !4966

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %7, %for.done ], !dbg !4961
  %4 = phi i64 [ 0, %entry ], [ %26, %for.done ], !dbg !4965
    #dbg_value(i64 %4, !4958, !DIExpression(), !4967)
    #dbg_value(i64 %len, !4957, !DIExpression(), !4968)
  %5 = icmp slt i64 %4, %len, !dbg !4969
  br i1 %5, label %for.body, label %for.done3, !dbg !4966

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4958, !DIExpression(), !4970)
  %6 = add i64 %4, 1, !dbg !4971
    #dbg_value(i64 %6, !4959, !DIExpression(), !4972)
  br label %for.loop1, !dbg !4966

for.loop1:                                        ; preds = %if.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %24, %if.done ], !dbg !4961
  %8 = phi i64 [ %6, %for.body ], [ %25, %if.done ], !dbg !4972
    #dbg_value(i64 %8, !4959, !DIExpression(), !4973)
    #dbg_value(i64 %len, !4957, !DIExpression(), !4974)
  %9 = icmp slt i64 %8, %len, !dbg !4975
  br i1 %9, label %for.body2, label %for.done, !dbg !4966

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4976)
    #dbg_value(i64 %4, !4958, !DIExpression(), !4977)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4978
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4978
  %10 = icmp uge i64 %4, %indexaddr.len, !dbg !4978
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4978

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4978
  %12 = load i8, ptr %11, align 1, !dbg !4978
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4979)
    #dbg_value(i64 %8, !4959, !DIExpression(), !4980)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4981
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4981
  %13 = icmp uge i64 %8, %indexaddr.len5, !dbg !4981
  br i1 %13, label %lookup.throw6, label %lookup.next7, !dbg !4981

lookup.next7:                                     ; preds = %lookup.next
  %14 = getelementptr inbounds i8, ptr %indexaddr.ptr4, i64 %8, !dbg !4981
  %15 = load i8, ptr %14, align 1, !dbg !4981
  %16 = sub i8 %12, %15, !dbg !4982
  %17 = uitofp i8 %16 to double, !dbg !4983
  %18 = call double @math.Abs(double %17, ptr undef), !dbg !4984
    #dbg_value(i64 %4, !4958, !DIExpression(), !4985)
    #dbg_value(i64 %8, !4959, !DIExpression(), !4986)
  %19 = sub i64 %4, %8, !dbg !4987
  %20 = sitofp i64 %19 to double, !dbg !4988
  %21 = call double @math.Abs(double %20, ptr undef), !dbg !4989
  %22 = fcmp oeq double %18, %21, !dbg !4990
  br i1 %22, label %if.then, label %if.done, !dbg !4966

if.then:                                          ; preds = %lookup.next7
  %23 = add i64 %7, 1, !dbg !4991
    #dbg_value(i64 %23, !4956, !DIExpression(), !4991)
  br label %if.done, !dbg !4966

if.done:                                          ; preds = %if.then, %lookup.next7
  %24 = phi i64 [ %7, %lookup.next7 ], [ %23, %if.then ], !dbg !4961
  %25 = add i64 %8, 1, !dbg !4992
    #dbg_value(i64 %25, !4959, !DIExpression(), !4992)
  br label %for.loop1, !dbg !4966

for.done:                                         ; preds = %for.loop1
  %26 = add i64 %4, 1, !dbg !4993
    #dbg_value(i64 %26, !4958, !DIExpression(), !4993)
  br label %for.loop, !dbg !4966

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4956, !DIExpression(), !4994)
  ret i64 %3, !dbg !4995

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4978
  unreachable, !dbg !4978

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4981
  unreachable, !dbg !4981
}
