define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, i64 %N, i64 %M) #0 !dbg !4931 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %A.data, 0, !dbg !4948
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %A.len, 1, !dbg !4948
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %A.cap, 2, !dbg !4948
    #dbg_value(ptr %A.data, !4940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4948)
    #dbg_value(i64 %A.len, !4940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4948)
    #dbg_value(i64 %A.cap, !4940, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4948)
    #dbg_value(i64 %N, !4941, !DIExpression(), !4948)
    #dbg_value(i64 %M, !4942, !DIExpression(), !4948)
    #dbg_value(i64 0, !4943, !DIExpression(), !4949)
    #dbg_value(i64 0, !4944, !DIExpression(), !4950)
    #dbg_value(i64 0, !4945, !DIExpression(), !4951)
  br label %for.loop, !dbg !4952

for.loop:                                         ; preds = %for.done5, %entry
  %3 = phi i64 [ 0, %entry ], [ %7, %for.done5 ], !dbg !4950
  %4 = phi i64 [ 0, %entry ], [ %36, %for.done5 ], !dbg !4951
    #dbg_value(i64 %4, !4945, !DIExpression(), !4953)
    #dbg_value(i64 %N, !4941, !DIExpression(), !4954)
  %5 = icmp slt i64 %4, %N, !dbg !4955
  br i1 %5, label %for.body, label %for.done6, !dbg !4952

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4945, !DIExpression(), !4956)
  %6 = add i64 %4, 1, !dbg !4957
    #dbg_value(i64 %6, !4946, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4952

for.loop1:                                        ; preds = %for.done, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %11, %for.done ], !dbg !4950
  %8 = phi i64 [ %6, %for.body ], [ %35, %for.done ], !dbg !4958
    #dbg_value(i64 %8, !4946, !DIExpression(), !4959)
    #dbg_value(i64 %N, !4941, !DIExpression(), !4960)
  %9 = icmp slt i64 %8, %N, !dbg !4961
  br i1 %9, label %for.body2, label %for.done5, !dbg !4952

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %8, !4946, !DIExpression(), !4962)
  %10 = add i64 %8, 1, !dbg !4963
    #dbg_value(i64 %10, !4947, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4952

for.loop3:                                        ; preds = %if.done, %for.body2
  %11 = phi i64 [ %7, %for.body2 ], [ %33, %if.done ], !dbg !4950
  %12 = phi i64 [ %10, %for.body2 ], [ %34, %if.done ], !dbg !4964
    #dbg_value(i64 %12, !4947, !DIExpression(), !4965)
    #dbg_value(i64 %N, !4941, !DIExpression(), !4966)
  %13 = icmp slt i64 %12, %N, !dbg !4967
  br i1 %13, label %for.body4, label %for.done, !dbg !4952

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4968)
    #dbg_value(i64 %4, !4945, !DIExpression(), !4969)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %14 = icmp uge i64 %4, %indexaddr.len, !dbg !4970
  br i1 %14, label %lookup.throw, label %lookup.next, !dbg !4970

lookup.next:                                      ; preds = %for.body4
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4970
  %16 = load i64, ptr %15, align 8, !dbg !4970
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4971)
    #dbg_value(i64 %8, !4946, !DIExpression(), !4972)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4973
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4973
  %17 = icmp uge i64 %8, %indexaddr.len8, !dbg !4973
  br i1 %17, label %lookup.throw9, label %lookup.next10, !dbg !4973

lookup.next10:                                    ; preds = %lookup.next
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %8, !dbg !4973
  %19 = load i64, ptr %18, align 8, !dbg !4973
  %20 = add i64 %16, %19, !dbg !4974
    #dbg_value({ ptr, i64, i64 } %2, !4940, !DIExpression(), !4975)
    #dbg_value(i64 %12, !4947, !DIExpression(), !4976)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %21 = icmp uge i64 %12, %indexaddr.len12, !dbg !4977
  br i1 %21, label %lookup.throw13, label %lookup.next14, !dbg !4977

lookup.next14:                                    ; preds = %lookup.next10
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %12, !dbg !4977
  %23 = load i64, ptr %22, align 8, !dbg !4977
  %24 = add i64 %20, %23, !dbg !4978
    #dbg_value(i64 %24, !4943, !DIExpression(), !4979)
    #dbg_value(i64 %24, !4943, !DIExpression(), !4980)
    #dbg_value(i64 %M, !4942, !DIExpression(), !4981)
  %25 = icmp eq i64 %M, 0, !dbg !4982
  br i1 %25, label %divbyzero.throw, label %divbyzero.next, !dbg !4982

divbyzero.next:                                   ; preds = %lookup.next14
  %26 = icmp eq i64 %M, -1, !dbg !4982
  %27 = icmp eq i64 %24, -9223372036854775808, !dbg !4982
  %28 = and i1 %26, %27, !dbg !4982
  %29 = select i1 %28, i64 1, i64 %M, !dbg !4982
  %30 = srem i64 %24, %29, !dbg !4982
  %31 = icmp eq i64 %30, 0, !dbg !4983
  br i1 %31, label %if.then, label %if.done, !dbg !4952

if.then:                                          ; preds = %divbyzero.next
  %32 = add i64 %11, 1, !dbg !4984
    #dbg_value(i64 %32, !4944, !DIExpression(), !4984)
  br label %if.done, !dbg !4952

if.done:                                          ; preds = %if.then, %divbyzero.next
  %33 = phi i64 [ %11, %divbyzero.next ], [ %32, %if.then ], !dbg !4950
  %34 = add i64 %12, 1, !dbg !4985
    #dbg_value(i64 %34, !4947, !DIExpression(), !4985)
  br label %for.loop3, !dbg !4952

for.done:                                         ; preds = %for.loop3
  %35 = add i64 %8, 1, !dbg !4986
    #dbg_value(i64 %35, !4946, !DIExpression(), !4986)
  br label %for.loop1, !dbg !4952

for.done5:                                        ; preds = %for.loop1
  %36 = add i64 %4, 1, !dbg !4987
    #dbg_value(i64 %36, !4945, !DIExpression(), !4987)
  br label %for.loop, !dbg !4952

for.done6:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4944, !DIExpression(), !4988)
  ret i64 %3, !dbg !4989

lookup.throw:                                     ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

lookup.throw9:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

divbyzero.throw:                                  ; preds = %lookup.next14
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982
}
