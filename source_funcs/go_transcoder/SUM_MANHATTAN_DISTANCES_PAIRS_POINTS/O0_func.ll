define i64 @f_gold(ptr nocapture %x.data, i64 %x.len, i64 %x.cap, ptr nocapture %y.data, i64 %y.len, i64 %y.cap, i64 %n) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.data, 0, !dbg !4967
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4967
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4967
    #dbg_value(ptr %x.data, !4961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4967)
    #dbg_value(i64 %x.len, !4961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4967)
    #dbg_value(i64 %x.cap, !4961, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4967)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %y.data, 0, !dbg !4967
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %y.len, 1, !dbg !4967
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %y.cap, 2, !dbg !4967
    #dbg_value(ptr %y.data, !4962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4967)
    #dbg_value(i64 %y.len, !4962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4967)
    #dbg_value(i64 %y.cap, !4962, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4967)
    #dbg_value(i64 %n, !4963, !DIExpression(), !4967)
    #dbg_value(i64 0, !4964, !DIExpression(), !4968)
    #dbg_value(i64 0, !4965, !DIExpression(), !4969)
  br label %for.loop, !dbg !4970

for.loop:                                         ; preds = %for.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %10, %for.done ], !dbg !4968
  %7 = phi i64 [ 0, %entry ], [ %35, %for.done ], !dbg !4969
    #dbg_value(i64 %7, !4965, !DIExpression(), !4971)
    #dbg_value(i64 %n, !4963, !DIExpression(), !4972)
  %8 = icmp slt i64 %7, %n, !dbg !4973
  br i1 %8, label %for.body, label %for.done3, !dbg !4970

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4965, !DIExpression(), !4974)
  %9 = add i64 %7, 1, !dbg !4975
    #dbg_value(i64 %9, !4966, !DIExpression(), !4976)
  br label %for.loop1, !dbg !4970

for.loop1:                                        ; preds = %lookup.next15, %for.body
  %10 = phi i64 [ %6, %for.body ], [ %33, %lookup.next15 ], !dbg !4968
  %11 = phi i64 [ %9, %for.body ], [ %34, %lookup.next15 ], !dbg !4976
    #dbg_value(i64 %11, !4966, !DIExpression(), !4977)
    #dbg_value(i64 %n, !4963, !DIExpression(), !4978)
  %12 = icmp slt i64 %11, %n, !dbg !4979
  br i1 %12, label %for.body2, label %for.done, !dbg !4970

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4980)
    #dbg_value(i64 %7, !4965, !DIExpression(), !4981)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4982
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4982
  %13 = icmp uge i64 %7, %indexaddr.len, !dbg !4982
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !4982

lookup.next:                                      ; preds = %for.body2
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !4982
  %15 = load i64, ptr %14, align 8, !dbg !4982
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4983)
    #dbg_value(i64 %11, !4966, !DIExpression(), !4984)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4985
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4985
  %16 = icmp uge i64 %11, %indexaddr.len5, !dbg !4985
  br i1 %16, label %lookup.throw6, label %lookup.next7, !dbg !4985

lookup.next7:                                     ; preds = %lookup.next
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %11, !dbg !4985
  %18 = load i64, ptr %17, align 8, !dbg !4985
  %19 = sub i64 %15, %18, !dbg !4986
  %20 = sitofp i64 %19 to double, !dbg !4987
  %21 = call double @math.Abs(double %20, ptr undef), !dbg !4988
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !4989)
    #dbg_value(i64 %7, !4965, !DIExpression(), !4990)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4991
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4991
  %22 = icmp uge i64 %7, %indexaddr.len9, !dbg !4991
  br i1 %22, label %lookup.throw10, label %lookup.next11, !dbg !4991

lookup.next11:                                    ; preds = %lookup.next7
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %7, !dbg !4991
  %24 = load i64, ptr %23, align 8, !dbg !4991
    #dbg_value({ ptr, i64, i64 } %5, !4962, !DIExpression(), !4992)
    #dbg_value(i64 %11, !4966, !DIExpression(), !4993)
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4994
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4994
  %25 = icmp uge i64 %11, %indexaddr.len13, !dbg !4994
  br i1 %25, label %lookup.throw14, label %lookup.next15, !dbg !4994

lookup.next15:                                    ; preds = %lookup.next11
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr12, i64 %11, !dbg !4994
  %27 = load i64, ptr %26, align 8, !dbg !4994
  %28 = sub i64 %24, %27, !dbg !4995
  %29 = sitofp i64 %28 to double, !dbg !4996
  %30 = call double @math.Abs(double %29, ptr undef), !dbg !4997
  %31 = fadd double %21, %30, !dbg !4998
  %abovemin = fcmp ole double 0xC3E0000000000000, %31, !dbg !4999
  %belowmax = fcmp ole double %31, 0x43DFFFFFFFFFFFFE, !dbg !4999
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4999
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4999
  %isnan = fcmp uno double %31, %31, !dbg !4999
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4999
  %normal = fptosi double %31 to i64, !dbg !4999
  %32 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4999
  %33 = add i64 %10, %32, !dbg !5000
    #dbg_value(i64 %33, !4964, !DIExpression(), !5000)
  %34 = add i64 %11, 1, !dbg !5001
    #dbg_value(i64 %34, !4966, !DIExpression(), !5001)
  br label %for.loop1, !dbg !4970

for.done:                                         ; preds = %for.loop1
  %35 = add i64 %7, 1, !dbg !5002
    #dbg_value(i64 %35, !4965, !DIExpression(), !5002)
  br label %for.loop, !dbg !4970

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %6, !4964, !DIExpression(), !5003)
  ret i64 %6, !dbg !5004

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4982
  unreachable, !dbg !4982

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4985
  unreachable, !dbg !4985

lookup.throw10:                                   ; preds = %lookup.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !4994
  unreachable, !dbg !4994
}
