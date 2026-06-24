define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4966
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4966
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4966
    #dbg_value(ptr %arr.data, !4961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4966)
    #dbg_value(i64 %arr.len, !4961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4966)
    #dbg_value(i64 %arr.cap, !4961, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4966)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4966)
    #dbg_value(i64 9223372036854775807, !4963, !DIExpression(), !4967)
    #dbg_value(i64 0, !4964, !DIExpression(), !4968)
  br label %for.loop, !dbg !4969

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 9223372036854775807, %entry ], [ %8, %for.done ], !dbg !4967
  %4 = phi i64 [ 0, %entry ], [ %34, %for.done ], !dbg !4968
    #dbg_value(i64 %4, !4964, !DIExpression(), !4970)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4971)
  %5 = sub i64 %n, 1, !dbg !4972
  %6 = icmp slt i64 %4, %5, !dbg !4973
  br i1 %6, label %for.body, label %for.done3, !dbg !4969

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4964, !DIExpression(), !4974)
  %7 = add i64 %4, 1, !dbg !4975
    #dbg_value(i64 %7, !4965, !DIExpression(), !4976)
  br label %for.loop1, !dbg !4969

for.loop1:                                        ; preds = %if.done, %for.body
  %8 = phi i64 [ %3, %for.body ], [ %32, %if.done ], !dbg !4967
  %9 = phi i64 [ %7, %for.body ], [ %33, %if.done ], !dbg !4976
    #dbg_value(i64 %9, !4965, !DIExpression(), !4977)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4978)
  %10 = icmp slt i64 %9, %n, !dbg !4979
  br i1 %10, label %for.body2, label %for.done, !dbg !4969

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4980)
    #dbg_value(i64 %4, !4964, !DIExpression(), !4981)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %11 = icmp uge i64 %4, %indexaddr.len, !dbg !4982
  br i1 %11, label %lookup.throw, label %lookup.next, !dbg !4982

lookup.next:                                      ; preds = %for.body2
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4982
  %13 = load i64, ptr %12, align 8, !dbg !4982
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4983)
    #dbg_value(i64 %9, !4965, !DIExpression(), !4984)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4985
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4985
  %14 = icmp uge i64 %9, %indexaddr.len5, !dbg !4985
  br i1 %14, label %lookup.throw6, label %lookup.next7, !dbg !4985

lookup.next7:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %9, !dbg !4985
  %16 = load i64, ptr %15, align 8, !dbg !4985
  %17 = sub i64 %13, %16, !dbg !4986
  %18 = sitofp i64 %17 to double, !dbg !4987
  %19 = call double @math.Abs(double %18, ptr undef), !dbg !4988
    #dbg_value(i64 %8, !4963, !DIExpression(), !4989)
  %20 = sitofp i64 %8 to double, !dbg !4990
  %21 = fcmp olt double %19, %20, !dbg !4991
  br i1 %21, label %if.then, label %if.done, !dbg !4969

if.then:                                          ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4992)
    #dbg_value(i64 %4, !4964, !DIExpression(), !4993)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4994
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4994
  %22 = icmp uge i64 %4, %indexaddr.len9, !dbg !4994
  br i1 %22, label %lookup.throw10, label %lookup.next11, !dbg !4994

lookup.next11:                                    ; preds = %if.then
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %4, !dbg !4994
  %24 = load i64, ptr %23, align 8, !dbg !4994
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4995)
    #dbg_value(i64 %9, !4965, !DIExpression(), !4996)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4997
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4997
  %25 = icmp uge i64 %9, %indexaddr.len13, !dbg !4997
  br i1 %25, label %lookup.throw14, label %lookup.next15, !dbg !4997

lookup.next15:                                    ; preds = %lookup.next11
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %9, !dbg !4997
  %27 = load i64, ptr %26, align 8, !dbg !4997
  %28 = sub i64 %24, %27, !dbg !4998
  %29 = sitofp i64 %28 to double, !dbg !4999
  %30 = call double @math.Abs(double %29, ptr undef), !dbg !5000
  %abovemin = fcmp ole double 0xC3E0000000000000, %30, !dbg !5001
  %belowmax = fcmp ole double %30, 0x43DFFFFFFFFFFFFE, !dbg !5001
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5001
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5001
  %isnan = fcmp uno double %30, %30, !dbg !5001
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5001
  %normal = fptosi double %30 to i64, !dbg !5001
  %31 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5001
    #dbg_value(i64 %31, !4963, !DIExpression(), !5002)
  br label %if.done, !dbg !4969

if.done:                                          ; preds = %lookup.next15, %lookup.next7
  %32 = phi i64 [ %8, %lookup.next7 ], [ %31, %lookup.next15 ], !dbg !4967
  %33 = add i64 %9, 1, !dbg !5003
    #dbg_value(i64 %33, !4965, !DIExpression(), !5003)
  br label %for.loop1, !dbg !4969

for.done:                                         ; preds = %for.loop1
  %34 = add i64 %4, 1, !dbg !5004
    #dbg_value(i64 %34, !4964, !DIExpression(), !5004)
  br label %for.loop, !dbg !4969

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4963, !DIExpression(), !5005)
  ret i64 %3, !dbg !5006

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985

lookup.throw10:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4994
  unreachable, !dbg !4994

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !4997
  unreachable, !dbg !4997
}
