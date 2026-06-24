define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !4968 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4982
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4982
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4982
    #dbg_value(ptr %arr.data, !4976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4982)
    #dbg_value(i64 %arr.len, !4976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4982)
    #dbg_value(i64 %arr.cap, !4976, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4982)
    #dbg_value(i64 %n, !4977, !DIExpression(), !4982)
    #dbg_value(i64 0, !4978, !DIExpression(), !4983)
    #dbg_value(i64 0, !4979, !DIExpression(), !4984)
    #dbg_value(i64 360, !4980, !DIExpression(), !4985)
    #dbg_value(i64 0, !4981, !DIExpression(), !4986)
  br label %for.loop, !dbg !4987

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %12, %for.done ], !dbg !4983
  %4 = phi i64 [ 0, %entry ], [ %13, %for.done ], !dbg !4984
  %5 = phi i64 [ 360, %entry ], [ %32, %for.done ], !dbg !4985
  %6 = phi i64 [ 0, %entry ], [ %33, %for.done ], !dbg !4986
    #dbg_value(i64 %6, !4981, !DIExpression(), !4988)
    #dbg_value(i64 %n, !4977, !DIExpression(), !4989)
  %7 = icmp slt i64 %6, %n, !dbg !4990
  br i1 %7, label %for.body, label %for.done3, !dbg !4987

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4976, !DIExpression(), !4991)
    #dbg_value(i64 %6, !4981, !DIExpression(), !4992)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4993
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4993
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !4993
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4993

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !4993
  %10 = load i64, ptr %9, align 8, !dbg !4993
  %11 = add i64 %4, %10, !dbg !4994
    #dbg_value(i64 %11, !4979, !DIExpression(), !4994)
  br label %for.loop1, !dbg !4987

for.loop1:                                        ; preds = %lookup.next7, %lookup.next
  %12 = phi i64 [ %3, %lookup.next ], [ %26, %lookup.next7 ], !dbg !4983
  %13 = phi i64 [ %11, %lookup.next ], [ %25, %lookup.next7 ], !dbg !4984
  %14 = phi i64 [ %5, %lookup.next ], [ %21, %lookup.next7 ], !dbg !4985
    #dbg_value(i64 %13, !4979, !DIExpression(), !4995)
  %15 = icmp sge i64 %13, 180, !dbg !4996
  br i1 %15, label %for.body2, label %for.done, !dbg !4987

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %14, !4980, !DIExpression(), !4997)
    #dbg_value(i64 %13, !4979, !DIExpression(), !4998)
  %16 = sub i64 180, %13, !dbg !4999
  %17 = sitofp i64 %16 to double, !dbg !5000
  %18 = call double @math.Abs(double %17, ptr undef), !dbg !5001
  %19 = fmul double %18, 2.000000e+00, !dbg !5002
  %abovemin = fcmp ole double 0xC3E0000000000000, %19, !dbg !5003
  %belowmax = fcmp ole double %19, 0x43DFFFFFFFFFFFFE, !dbg !5003
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5003
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5003
  %isnan = fcmp uno double %19, %19, !dbg !5003
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5003
  %normal = fptosi double %19 to i64, !dbg !5003
  %20 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5003
  %21 = call i64 @main.min(i64 %14, i64 %20, ptr undef), !dbg !5004
    #dbg_value(i64 %21, !4980, !DIExpression(), !5005)
    #dbg_value({ ptr, i64, i64 } %2, !4976, !DIExpression(), !5006)
    #dbg_value(i64 %12, !4978, !DIExpression(), !5007)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5008
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5008
  %22 = icmp uge i64 %12, %indexaddr.len5, !dbg !5008
  br i1 %22, label %lookup.throw6, label %lookup.next7, !dbg !5008

lookup.next7:                                     ; preds = %for.body2
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %12, !dbg !5008
  %24 = load i64, ptr %23, align 8, !dbg !5008
  %25 = sub i64 %13, %24, !dbg !5009
    #dbg_value(i64 %25, !4979, !DIExpression(), !5009)
  %26 = add i64 %12, 1, !dbg !5010
    #dbg_value(i64 %26, !4978, !DIExpression(), !5010)
  br label %for.loop1, !dbg !4987

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %14, !4980, !DIExpression(), !5011)
    #dbg_value(i64 %13, !4979, !DIExpression(), !5012)
  %27 = sub i64 180, %13, !dbg !5013
  %28 = sitofp i64 %27 to double, !dbg !5014
  %29 = call double @math.Abs(double %28, ptr undef), !dbg !5015
  %30 = fmul double %29, 2.000000e+00, !dbg !5016
  %abovemin8 = fcmp ole double 0xC3E0000000000000, %30, !dbg !5017
  %belowmax9 = fcmp ole double %30, 0x43DFFFFFFFFFFFFE, !dbg !5017
  %inbounds10 = and i1 %abovemin8, %belowmax9, !dbg !5017
  %saturated11 = select i1 %abovemin8, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5017
  %isnan12 = fcmp uno double %30, %30, !dbg !5017
  %remapped13 = select i1 %isnan12, i64 0, i64 %saturated11, !dbg !5017
  %normal14 = fptosi double %30 to i64, !dbg !5017
  %31 = select i1 %inbounds10, i64 %normal14, i64 %remapped13, !dbg !5017
  %32 = call i64 @main.min(i64 %14, i64 %31, ptr undef), !dbg !5018
    #dbg_value(i64 %32, !4980, !DIExpression(), !5019)
  %33 = add i64 %6, 1, !dbg !5020
    #dbg_value(i64 %33, !4981, !DIExpression(), !5020)
  br label %for.loop, !dbg !4987

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %5, !4980, !DIExpression(), !5021)
  ret i64 %5, !dbg !5022

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4993
  unreachable, !dbg !4993

lookup.throw6:                                    ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !5008
  unreachable, !dbg !5008
}
