define i1 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) #0 !dbg !4931 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4946
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4946
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4946
    #dbg_value(ptr %arr.data, !4940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(i64 %arr.len, !4940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %arr.cap, !4940, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
    #dbg_value(i64 %n, !4941, !DIExpression(), !4946)
    #dbg_value(i64 %x, !4942, !DIExpression(), !4946)
    #dbg_value(i64 0, !4943, !DIExpression(), !4947)
    #dbg_value(i64 0, !4943, !DIExpression(), !4948)
  br label %for.loop, !dbg !4949

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !4947
    #dbg_value(i64 %3, !4943, !DIExpression(), !4950)
    #dbg_value(i64 %n, !4941, !DIExpression(), !4951)
  %4 = sub i64 %n, 1, !dbg !4952
  %5 = icmp slt i64 %3, %4, !dbg !4953
  br i1 %5, label %for.body, label %for.done, !dbg !4949

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4954)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4955)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4956
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4956
  %6 = icmp uge i64 %3, %indexaddr.len, !dbg !4956
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4956

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4956
  %8 = load i64, ptr %7, align 8, !dbg !4956
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4957)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4958)
  %9 = add i64 %3, 1, !dbg !4959
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4960
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4960
  %10 = icmp uge i64 %9, %indexaddr.len7, !dbg !4960
  br i1 %10, label %lookup.throw8, label %lookup.next9, !dbg !4960

lookup.next9:                                     ; preds = %lookup.next
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %9, !dbg !4960
  %12 = load i64, ptr %11, align 8, !dbg !4960
  %13 = icmp sgt i64 %8, %12, !dbg !4961
  br i1 %13, label %for.done, label %if.done, !dbg !4949

if.done:                                          ; preds = %lookup.next9
  %14 = add i64 %3, 1, !dbg !4962
    #dbg_value(i64 %14, !4943, !DIExpression(), !4962)
  br label %for.loop, !dbg !4949

for.done:                                         ; preds = %lookup.next9, %for.loop
    #dbg_value(i64 %3, !4943, !DIExpression(), !4963)
  %15 = add i64 %3, 1, !dbg !4964
    #dbg_value(i64 %n, !4941, !DIExpression(), !4965)
  %16 = icmp eq i64 %n, 0, !dbg !4966
  br i1 %16, label %divbyzero.throw, label %divbyzero.next, !dbg !4966

divbyzero.next:                                   ; preds = %for.done
  %17 = icmp eq i64 %n, -1, !dbg !4966
  %18 = icmp eq i64 %15, -9223372036854775808, !dbg !4966
  %19 = and i1 %17, %18, !dbg !4966
  %20 = select i1 %19, i64 1, i64 %n, !dbg !4966
  %21 = srem i64 %15, %20, !dbg !4966
    #dbg_value(i64 %21, !4944, !DIExpression(), !4967)
    #dbg_value(i64 %3, !4943, !DIExpression(), !4968)
    #dbg_value(i64 %3, !4945, !DIExpression(), !4969)
  br label %for.loop1, !dbg !4949

for.loop1:                                        ; preds = %divbyzero.next29, %divbyzero.next27, %divbyzero.next
  %22 = phi i64 [ %21, %divbyzero.next ], [ %47, %divbyzero.next27 ], [ %22, %divbyzero.next29 ], !dbg !4967
  %23 = phi i64 [ %3, %divbyzero.next ], [ %23, %divbyzero.next27 ], [ %55, %divbyzero.next29 ], !dbg !4969
    #dbg_value(i64 %22, !4944, !DIExpression(), !4970)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4971)
  %24 = icmp ne i64 %22, %23, !dbg !4972
  br i1 %24, label %for.body2, label %for.done5, !dbg !4949

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4973)
    #dbg_value(i64 %22, !4944, !DIExpression(), !4974)
  %indexaddr.ptr10 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4975
  %indexaddr.len11 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4975
  %25 = icmp uge i64 %22, %indexaddr.len11, !dbg !4975
  br i1 %25, label %lookup.throw12, label %lookup.next13, !dbg !4975

lookup.next13:                                    ; preds = %for.body2
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr10, i64 %22, !dbg !4975
  %27 = load i64, ptr %26, align 8, !dbg !4975
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4976)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4977)
  %indexaddr.ptr14 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4978
  %indexaddr.len15 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4978
  %28 = icmp uge i64 %23, %indexaddr.len15, !dbg !4978
  br i1 %28, label %lookup.throw16, label %lookup.next17, !dbg !4978

lookup.next17:                                    ; preds = %lookup.next13
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr14, i64 %23, !dbg !4978
  %30 = load i64, ptr %29, align 8, !dbg !4978
  %31 = add i64 %27, %30, !dbg !4979
    #dbg_value(i64 %x, !4942, !DIExpression(), !4980)
  %32 = icmp eq i64 %31, %x, !dbg !4981
  br i1 %32, label %if.then, label %if.done3, !dbg !4949

if.then:                                          ; preds = %lookup.next17
  ret i1 true, !dbg !4982

if.done3:                                         ; preds = %lookup.next17
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4983)
    #dbg_value(i64 %22, !4944, !DIExpression(), !4984)
  %indexaddr.ptr18 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4985
  %indexaddr.len19 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4985
  %33 = icmp uge i64 %22, %indexaddr.len19, !dbg !4985
  br i1 %33, label %lookup.throw20, label %lookup.next21, !dbg !4985

lookup.next21:                                    ; preds = %if.done3
  %34 = getelementptr inbounds i64, ptr %indexaddr.ptr18, i64 %22, !dbg !4985
  %35 = load i64, ptr %34, align 8, !dbg !4985
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4986)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4987)
  %indexaddr.ptr22 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4988
  %indexaddr.len23 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4988
  %36 = icmp uge i64 %23, %indexaddr.len23, !dbg !4988
  br i1 %36, label %lookup.throw24, label %lookup.next25, !dbg !4988

lookup.next25:                                    ; preds = %lookup.next21
  %37 = getelementptr inbounds i64, ptr %indexaddr.ptr22, i64 %23, !dbg !4988
  %38 = load i64, ptr %37, align 8, !dbg !4988
  %39 = add i64 %35, %38, !dbg !4989
    #dbg_value(i64 %x, !4942, !DIExpression(), !4990)
  %40 = icmp slt i64 %39, %x, !dbg !4991
  br i1 %40, label %if.then4, label %if.else, !dbg !4949

if.then4:                                         ; preds = %lookup.next25
    #dbg_value(i64 %22, !4944, !DIExpression(), !4992)
  %41 = add i64 %22, 1, !dbg !4993
    #dbg_value(i64 %n, !4941, !DIExpression(), !4994)
  %42 = icmp eq i64 %n, 0, !dbg !4995
  br i1 %42, label %divbyzero.throw26, label %divbyzero.next27, !dbg !4995

divbyzero.next27:                                 ; preds = %if.then4
  %43 = icmp eq i64 %n, -1, !dbg !4995
  %44 = icmp eq i64 %41, -9223372036854775808, !dbg !4995
  %45 = and i1 %43, %44, !dbg !4995
  %46 = select i1 %45, i64 1, i64 %n, !dbg !4995
  %47 = srem i64 %41, %46, !dbg !4995
    #dbg_value(i64 %47, !4944, !DIExpression(), !4996)
  br label %for.loop1, !dbg !4949

if.else:                                          ; preds = %lookup.next25
    #dbg_value(i64 %n, !4941, !DIExpression(), !4997)
    #dbg_value(i64 %23, !4945, !DIExpression(), !4998)
  %48 = add i64 %n, %23, !dbg !4999
  %49 = sub i64 %48, 1, !dbg !5000
    #dbg_value(i64 %n, !4941, !DIExpression(), !5001)
  %50 = icmp eq i64 %n, 0, !dbg !5002
  br i1 %50, label %divbyzero.throw28, label %divbyzero.next29, !dbg !5002

divbyzero.next29:                                 ; preds = %if.else
  %51 = icmp eq i64 %n, -1, !dbg !5002
  %52 = icmp eq i64 %49, -9223372036854775808, !dbg !5002
  %53 = and i1 %51, %52, !dbg !5002
  %54 = select i1 %53, i64 1, i64 %n, !dbg !5002
  %55 = srem i64 %49, %54, !dbg !5002
    #dbg_value(i64 %55, !4945, !DIExpression(), !5003)
  br label %for.loop1, !dbg !4949

for.done5:                                        ; preds = %for.loop1
  ret i1 false, !dbg !5004

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

lookup.throw8:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960

divbyzero.throw:                                  ; preds = %for.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966

lookup.throw12:                                   ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975

lookup.throw16:                                   ; preds = %lookup.next13
  call void @runtime.lookupPanic(ptr undef), !dbg !4978
  unreachable, !dbg !4978

lookup.throw20:                                   ; preds = %if.done3
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985

lookup.throw24:                                   ; preds = %lookup.next21
  call void @runtime.lookupPanic(ptr undef), !dbg !4988
  unreachable, !dbg !4988

divbyzero.throw26:                                ; preds = %if.then4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4995
  unreachable, !dbg !4995

divbyzero.throw28:                                ; preds = %if.else
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !5002
  unreachable, !dbg !5002
}
