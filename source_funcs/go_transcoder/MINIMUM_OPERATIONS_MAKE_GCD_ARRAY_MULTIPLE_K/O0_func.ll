define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) #0 !dbg !4947 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4960
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4960
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4960
    #dbg_value(ptr %a.data, !4955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4960)
    #dbg_value(i64 %a.len, !4955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4960)
    #dbg_value(i64 %a.cap, !4955, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4960)
    #dbg_value(i64 %n, !4956, !DIExpression(), !4960)
    #dbg_value(i64 %k, !4957, !DIExpression(), !4960)
    #dbg_value(i64 0, !4958, !DIExpression(), !4961)
    #dbg_value(i64 0, !4959, !DIExpression(), !4962)
  br label %for.loop, !dbg !4963

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %35, %if.done ], !dbg !4961
  %4 = phi i64 [ 0, %entry ], [ %36, %if.done ], !dbg !4962
    #dbg_value(i64 %4, !4959, !DIExpression(), !4964)
    #dbg_value(i64 %n, !4956, !DIExpression(), !4965)
  %5 = icmp slt i64 %4, %n, !dbg !4966
  br i1 %5, label %for.body, label %for.done, !dbg !4963

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4967)
    #dbg_value(i64 %4, !4959, !DIExpression(), !4968)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4969
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4969

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4969
  %8 = load i64, ptr %7, align 8, !dbg !4969
  %9 = icmp ne i64 %8, 1, !dbg !4970
  br i1 %9, label %cond.true, label %if.else, !dbg !4963

cond.true:                                        ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4971)
    #dbg_value(i64 %4, !4959, !DIExpression(), !4972)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %10 = icmp uge i64 %4, %indexaddr.len2, !dbg !4973
  br i1 %10, label %lookup.throw3, label %lookup.next4, !dbg !4973

lookup.next4:                                     ; preds = %cond.true
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %4, !dbg !4973
  %12 = load i64, ptr %11, align 8, !dbg !4973
    #dbg_value(i64 %k, !4957, !DIExpression(), !4974)
  %13 = icmp sgt i64 %12, %k, !dbg !4975
  br i1 %13, label %if.then, label %if.else, !dbg !4963

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %3, !4958, !DIExpression(), !4976)
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4977)
    #dbg_value(i64 %4, !4959, !DIExpression(), !4978)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4979
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4979
  %14 = icmp uge i64 %4, %indexaddr.len6, !dbg !4979
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !4979

lookup.next8:                                     ; preds = %if.then
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %4, !dbg !4979
  %16 = load i64, ptr %15, align 8, !dbg !4979
    #dbg_value(i64 %k, !4957, !DIExpression(), !4980)
  %17 = icmp eq i64 %k, 0, !dbg !4981
  br i1 %17, label %divbyzero.throw, label %divbyzero.next, !dbg !4981

divbyzero.next:                                   ; preds = %lookup.next8
  %18 = icmp eq i64 %k, -1, !dbg !4981
  %19 = icmp eq i64 %16, -9223372036854775808, !dbg !4981
  %20 = and i1 %18, %19, !dbg !4981
  %21 = select i1 %20, i64 1, i64 %k, !dbg !4981
  %22 = srem i64 %16, %21, !dbg !4981
    #dbg_value(i64 %k, !4957, !DIExpression(), !4982)
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4983)
    #dbg_value(i64 %4, !4959, !DIExpression(), !4984)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4985
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4985
  %23 = icmp uge i64 %4, %indexaddr.len10, !dbg !4985
  br i1 %23, label %lookup.throw11, label %lookup.next12, !dbg !4985

lookup.next12:                                    ; preds = %divbyzero.next
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %4, !dbg !4985
  %25 = load i64, ptr %24, align 8, !dbg !4985
    #dbg_value(i64 %k, !4957, !DIExpression(), !4986)
  %26 = icmp eq i64 %k, 0, !dbg !4987
  br i1 %26, label %divbyzero.throw13, label %divbyzero.next14, !dbg !4987

divbyzero.next14:                                 ; preds = %lookup.next12
  %27 = icmp eq i64 %k, -1, !dbg !4987
  %28 = icmp eq i64 %25, -9223372036854775808, !dbg !4987
  %29 = and i1 %27, %28, !dbg !4987
  %30 = select i1 %29, i64 1, i64 %k, !dbg !4987
  %31 = srem i64 %25, %30, !dbg !4987
  %32 = sub i64 %k, %31, !dbg !4988
  %33 = call i64 @main.min(i64 %22, i64 %32, ptr undef), !dbg !4989
  %34 = add i64 %3, %33, !dbg !4990
    #dbg_value(i64 %34, !4958, !DIExpression(), !4991)
  br label %if.done, !dbg !4963

if.done:                                          ; preds = %lookup.next18, %divbyzero.next14
  %35 = phi i64 [ %34, %divbyzero.next14 ], [ %41, %lookup.next18 ], !dbg !4961
  %36 = add i64 %4, 1, !dbg !4992
    #dbg_value(i64 %36, !4959, !DIExpression(), !4992)
  br label %for.loop, !dbg !4963

if.else:                                          ; preds = %lookup.next4, %lookup.next
    #dbg_value(i64 %3, !4958, !DIExpression(), !4993)
    #dbg_value(i64 %k, !4957, !DIExpression(), !4994)
  %37 = add i64 %3, %k, !dbg !4995
    #dbg_value({ ptr, i64, i64 } %2, !4955, !DIExpression(), !4996)
    #dbg_value(i64 %4, !4959, !DIExpression(), !4997)
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4998
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4998
  %38 = icmp uge i64 %4, %indexaddr.len16, !dbg !4998
  br i1 %38, label %lookup.throw17, label %lookup.next18, !dbg !4998

lookup.next18:                                    ; preds = %if.else
  %39 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %4, !dbg !4998
  %40 = load i64, ptr %39, align 8, !dbg !4998
  %41 = sub i64 %37, %40, !dbg !4999
    #dbg_value(i64 %41, !4958, !DIExpression(), !5000)
  br label %if.done, !dbg !4963

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4958, !DIExpression(), !5001)
  ret i64 %3, !dbg !5002

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969

lookup.throw3:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973

lookup.throw7:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4979
  unreachable, !dbg !4979

divbyzero.throw:                                  ; preds = %lookup.next8
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4981
  unreachable, !dbg !4981

lookup.throw11:                                   ; preds = %divbyzero.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985

divbyzero.throw13:                                ; preds = %lookup.next12
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4987
  unreachable, !dbg !4987

lookup.throw17:                                   ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4998
  unreachable, !dbg !4998
}
