define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) #1 !dbg !4952 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4968
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4968
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4968
    #dbg_value(ptr %arr.data, !4961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(i64 %arr.len, !4961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4968)
    #dbg_value(i64 %arr.cap, !4961, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4968)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4968)
    #dbg_value(i64 %x, !4963, !DIExpression(), !4968)
    #dbg_value(i64 %y, !4964, !DIExpression(), !4968)
    #dbg_value(i64 0, !4965, !DIExpression(), !4969)
    #dbg_value(i64 0, !4966, !DIExpression(), !4970)
    #dbg_value(i64 9223372036854775807, !4967, !DIExpression(), !4971)
    #dbg_value(i64 0, !4965, !DIExpression(), !4972)
  br label %for.loop, !dbg !4973

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %37, %for.done ], !dbg !4969
  %4 = phi i64 [ 9223372036854775807, %entry ], [ %8, %for.done ], !dbg !4971
    #dbg_value(i64 %3, !4965, !DIExpression(), !4974)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4975)
  %5 = icmp slt i64 %3, %n, !dbg !4976
  br i1 %5, label %for.body, label %for.done5, !dbg !4973

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4965, !DIExpression(), !4977)
  %6 = add i64 %3, 1, !dbg !4978
    #dbg_value(i64 %6, !4966, !DIExpression(), !4979)
  br label %for.loop1, !dbg !4973

for.loop1:                                        ; preds = %if.done, %for.body
  %7 = phi i64 [ %6, %for.body ], [ %28, %if.done ], !dbg !4970
  %8 = phi i64 [ %4, %for.body ], [ %27, %if.done ], !dbg !4971
    #dbg_value(i64 %7, !4966, !DIExpression(), !4980)
    #dbg_value(i64 %n, !4962, !DIExpression(), !4981)
  %9 = icmp slt i64 %7, %n, !dbg !4982
  br i1 %9, label %for.body2, label %for.done, !dbg !4973

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %x, !4963, !DIExpression(), !4983)
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4984)
    #dbg_value(i64 %3, !4965, !DIExpression(), !4985)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4986
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4986
  %10 = icmp uge i64 %3, %indexaddr.len, !dbg !4986
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4986

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %3, !dbg !4986
  %12 = load i64, ptr %11, align 8, !dbg !4986
  %13 = icmp eq i64 %x, %12, !dbg !4987
  br i1 %13, label %cond.true, label %cond.false, !dbg !4973

cond.true:                                        ; preds = %lookup.next
    #dbg_value(i64 %y, !4964, !DIExpression(), !4988)
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !4989)
    #dbg_value(i64 %7, !4966, !DIExpression(), !4990)
  %indexaddr.ptr6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4991
  %indexaddr.len7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4991
  %14 = icmp uge i64 %7, %indexaddr.len7, !dbg !4991
  br i1 %14, label %lookup.throw8, label %lookup.next9, !dbg !4991

lookup.next9:                                     ; preds = %cond.true
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr6, i64 %7, !dbg !4991
  %16 = load i64, ptr %15, align 8, !dbg !4991
  %17 = icmp eq i64 %y, %16, !dbg !4992
  br i1 %17, label %cond.true3, label %cond.false, !dbg !4973

cond.true3:                                       ; preds = %lookup.next24, %lookup.next9
    #dbg_value(i64 %8, !4967, !DIExpression(), !4993)
    #dbg_value(i64 %3, !4965, !DIExpression(), !4994)
    #dbg_value(i64 %7, !4966, !DIExpression(), !4995)
  %18 = sub i64 %3, %7, !dbg !4996
  %19 = sitofp i64 %18 to double, !dbg !4997
  %20 = call double @math.Abs(double %19, ptr undef), !dbg !4998
  %abovemin = fcmp ole double 0xC3E0000000000000, %20, !dbg !4999
  %belowmax = fcmp ole double %20, 0x43DFFFFFFFFFFFFE, !dbg !4999
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4999
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4999
  %isnan = fcmp uno double %20, %20, !dbg !4999
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4999
  %normal = fptosi double %20 to i64, !dbg !4999
  %21 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4999
  %22 = icmp sgt i64 %8, %21, !dbg !5000
  br i1 %22, label %if.then, label %if.done, !dbg !4973

if.then:                                          ; preds = %cond.true3
    #dbg_value(i64 %3, !4965, !DIExpression(), !5001)
    #dbg_value(i64 %7, !4966, !DIExpression(), !5002)
  %23 = sub i64 %3, %7, !dbg !5003
  %24 = sitofp i64 %23 to double, !dbg !5004
  %25 = call double @math.Abs(double %24, ptr undef), !dbg !5005
  %abovemin10 = fcmp ole double 0xC3E0000000000000, %25, !dbg !5006
  %belowmax11 = fcmp ole double %25, 0x43DFFFFFFFFFFFFE, !dbg !5006
  %inbounds12 = and i1 %abovemin10, %belowmax11, !dbg !5006
  %saturated13 = select i1 %abovemin10, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5006
  %isnan14 = fcmp uno double %25, %25, !dbg !5006
  %remapped15 = select i1 %isnan14, i64 0, i64 %saturated13, !dbg !5006
  %normal16 = fptosi double %25 to i64, !dbg !5006
  %26 = select i1 %inbounds12, i64 %normal16, i64 %remapped15, !dbg !5006
    #dbg_value(i64 %26, !4967, !DIExpression(), !5007)
  br label %if.done, !dbg !4973

if.done:                                          ; preds = %lookup.next24, %lookup.next20, %if.then, %cond.true3
  %27 = phi i64 [ %8, %lookup.next20 ], [ %8, %lookup.next24 ], [ %8, %cond.true3 ], [ %26, %if.then ], !dbg !4971
  %28 = add i64 %7, 1, !dbg !5008
    #dbg_value(i64 %28, !4966, !DIExpression(), !5008)
  br label %for.loop1, !dbg !4973

cond.false:                                       ; preds = %lookup.next9, %lookup.next
    #dbg_value(i64 %y, !4964, !DIExpression(), !5009)
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5010)
    #dbg_value(i64 %3, !4965, !DIExpression(), !5011)
  %indexaddr.ptr17 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5012
  %indexaddr.len18 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5012
  %29 = icmp uge i64 %3, %indexaddr.len18, !dbg !5012
  br i1 %29, label %lookup.throw19, label %lookup.next20, !dbg !5012

lookup.next20:                                    ; preds = %cond.false
  %30 = getelementptr inbounds i64, ptr %indexaddr.ptr17, i64 %3, !dbg !5012
  %31 = load i64, ptr %30, align 8, !dbg !5012
  %32 = icmp eq i64 %y, %31, !dbg !5013
  br i1 %32, label %cond.true4, label %if.done, !dbg !4973

cond.true4:                                       ; preds = %lookup.next20
    #dbg_value(i64 %x, !4963, !DIExpression(), !5014)
    #dbg_value({ ptr, i64, i64 } %2, !4961, !DIExpression(), !5015)
    #dbg_value(i64 %7, !4966, !DIExpression(), !5016)
  %indexaddr.ptr21 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5017
  %indexaddr.len22 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5017
  %33 = icmp uge i64 %7, %indexaddr.len22, !dbg !5017
  br i1 %33, label %lookup.throw23, label %lookup.next24, !dbg !5017

lookup.next24:                                    ; preds = %cond.true4
  %34 = getelementptr inbounds i64, ptr %indexaddr.ptr21, i64 %7, !dbg !5017
  %35 = load i64, ptr %34, align 8, !dbg !5017
  %36 = icmp eq i64 %x, %35, !dbg !5018
  br i1 %36, label %cond.true3, label %if.done, !dbg !4973

for.done:                                         ; preds = %for.loop1
  %37 = add i64 %3, 1, !dbg !5019
    #dbg_value(i64 %37, !4965, !DIExpression(), !5019)
  br label %for.loop, !dbg !4973

for.done5:                                        ; preds = %for.loop
    #dbg_value(i64 %4, !4967, !DIExpression(), !5020)
  ret i64 %4, !dbg !5021

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4986
  unreachable, !dbg !4986

lookup.throw8:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4991
  unreachable, !dbg !4991

lookup.throw19:                                   ; preds = %cond.false
  call void @runtime.lookupPanic(ptr undef), !dbg !5012
  unreachable, !dbg !5012

lookup.throw23:                                   ; preds = %cond.true4
  call void @runtime.lookupPanic(ptr undef), !dbg !5017
  unreachable, !dbg !5017
}
