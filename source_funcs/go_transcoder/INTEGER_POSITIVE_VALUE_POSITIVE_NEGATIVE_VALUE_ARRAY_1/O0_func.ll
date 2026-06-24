define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !4956 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4971
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4971
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4971
    #dbg_value(ptr %arr.data, !4965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(i64 %arr.len, !4965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %arr.cap, !4965, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4971)
    #dbg_value(i64 %n, !4966, !DIExpression(), !4971)
    #dbg_value(i64 0, !4967, !DIExpression(), !4972)
    #dbg_value(i64 0, !4968, !DIExpression(), !4973)
    #dbg_value(i64 0, !4969, !DIExpression(), !4974)
    #dbg_value(i64 0, !4970, !DIExpression(), !4975)
  br label %for.loop, !dbg !4976

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %17, %if.done ], !dbg !4972
  %4 = phi i64 [ 0, %entry ], [ %18, %if.done ], !dbg !4973
  %5 = phi i64 [ 0, %entry ], [ %11, %if.done ], !dbg !4974
  %6 = phi i64 [ 0, %entry ], [ %19, %if.done ], !dbg !4975
    #dbg_value(i64 %6, !4970, !DIExpression(), !4977)
    #dbg_value(i64 %n, !4966, !DIExpression(), !4978)
  %7 = icmp slt i64 %6, %n, !dbg !4979
  br i1 %7, label %for.body, label %for.done, !dbg !4976

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4965, !DIExpression(), !4980)
    #dbg_value(i64 %6, !4970, !DIExpression(), !4981)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !4982
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4982

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !4982
  %10 = load i64, ptr %9, align 8, !dbg !4982
  %11 = add i64 %5, %10, !dbg !4983
    #dbg_value(i64 %11, !4969, !DIExpression(), !4983)
    #dbg_value({ ptr, i64, i64 } %2, !4965, !DIExpression(), !4984)
    #dbg_value(i64 %6, !4970, !DIExpression(), !4985)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4986
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4986
  %12 = icmp uge i64 %6, %indexaddr.len2, !dbg !4986
  br i1 %12, label %lookup.throw3, label %lookup.next4, !dbg !4986

lookup.next4:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %6, !dbg !4986
  %14 = load i64, ptr %13, align 8, !dbg !4986
  %15 = icmp slt i64 %14, 0, !dbg !4987
  br i1 %15, label %if.then, label %if.else, !dbg !4976

if.then:                                          ; preds = %lookup.next4
  %16 = add i64 %3, 1, !dbg !4988
    #dbg_value(i64 %16, !4967, !DIExpression(), !4988)
  br label %if.done, !dbg !4976

if.done:                                          ; preds = %if.else, %if.then
  %17 = phi i64 [ %16, %if.then ], [ %3, %if.else ], !dbg !4972
  %18 = phi i64 [ %4, %if.then ], [ %20, %if.else ], !dbg !4973
  %19 = add i64 %6, 1, !dbg !4989
    #dbg_value(i64 %19, !4970, !DIExpression(), !4989)
  br label %for.loop, !dbg !4976

if.else:                                          ; preds = %lookup.next4
  %20 = add i64 %4, 1, !dbg !4990
    #dbg_value(i64 %20, !4968, !DIExpression(), !4990)
  br label %if.done, !dbg !4976

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4969, !DIExpression(), !4991)
    #dbg_value(i64 %3, !4967, !DIExpression(), !4992)
    #dbg_value(i64 %4, !4968, !DIExpression(), !4993)
  %21 = sub i64 %3, %4, !dbg !4994
  %22 = sitofp i64 %21 to double, !dbg !4995
  %23 = call double @math.Abs(double %22, ptr undef), !dbg !4996
  %abovemin = fcmp ole double 0xC3E0000000000000, %23, !dbg !4997
  %belowmax = fcmp ole double %23, 0x43DFFFFFFFFFFFFE, !dbg !4997
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4997
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4997
  %isnan = fcmp uno double %23, %23, !dbg !4997
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4997
  %normal = fptosi double %23 to i64, !dbg !4997
  %24 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4997
  %25 = icmp eq i64 %24, 0, !dbg !4998
  br i1 %25, label %divbyzero.throw, label %divbyzero.next, !dbg !4998

divbyzero.next:                                   ; preds = %for.done
  %26 = icmp eq i64 %24, -1, !dbg !4998
  %27 = icmp eq i64 %5, -9223372036854775808, !dbg !4998
  %28 = and i1 %26, %27, !dbg !4998
  %29 = select i1 %28, i64 1, i64 %24, !dbg !4998
  %30 = sdiv i64 %5, %29, !dbg !4998
  ret i64 %30, !dbg !4999

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4986
  unreachable, !dbg !4986

divbyzero.throw:                                  ; preds = %for.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4998
  unreachable, !dbg !4998
}
