define i64 @f_gold(ptr nocapture %coin.data, i64 %coin.len, i64 %coin.cap, i64 %n, i64 %k) #1 !dbg !6097 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %coin.data, 0, !dbg !6106
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %coin.len, 1, !dbg !6106
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %coin.cap, 2, !dbg !6106
    #dbg_value(ptr %coin.data, !6100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6106)
    #dbg_value(i64 %coin.len, !6100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6106)
    #dbg_value(i64 %coin.cap, !6100, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6106)
    #dbg_value(i64 %n, !6101, !DIExpression(), !6106)
    #dbg_value(i64 %k, !6102, !DIExpression(), !6106)
    #dbg_value({ ptr, i64, i64 } %2, !6100, !DIExpression(), !6107)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6108
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6108
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6108
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6108
    #dbg_value(i64 %n, !6101, !DIExpression(), !6109)
  %6 = sitofp i64 %n to double, !dbg !6110
  %7 = fmul double %6, 1.000000e+00, !dbg !6111
    #dbg_value(i64 %k, !6102, !DIExpression(), !6112)
  %8 = add i64 %k, 1, !dbg !6113
  %9 = sitofp i64 %8 to double, !dbg !6114
  %10 = fdiv double %7, %9, !dbg !6115
  %11 = call double @math.Ceil(double %10, ptr undef), !dbg !6116
  %abovemin = fcmp ole double 0xC3E0000000000000, %11, !dbg !6117
  %belowmax = fcmp ole double %11, 0x43DFFFFFFFFFFFFE, !dbg !6117
  %inbounds = and i1 %abovemin, %belowmax, !dbg !6117
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !6117
  %isnan = fcmp uno double %11, %11, !dbg !6117
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !6117
  %normal = fptosi double %11 to i64, !dbg !6117
  %12 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !6117
    #dbg_value(i64 %12, !6103, !DIExpression(), !6118)
    #dbg_value(i64 0, !6104, !DIExpression(), !6119)
    #dbg_value(i64 0, !6105, !DIExpression(), !6120)
  br label %for.loop, !dbg !6121

for.loop:                                         ; preds = %lookup.next, %entry
  %13 = phi i64 [ 0, %entry ], [ %20, %lookup.next ], !dbg !6119
  %14 = phi i64 [ 0, %entry ], [ %21, %lookup.next ], !dbg !6120
    #dbg_value(i64 %14, !6105, !DIExpression(), !6122)
    #dbg_value(i64 %12, !6103, !DIExpression(), !6123)
  %15 = sub i64 %12, 1, !dbg !6124
  %16 = icmp sle i64 %14, %15, !dbg !6125
  br i1 %16, label %for.body, label %for.done, !dbg !6121

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6100, !DIExpression(), !6126)
    #dbg_value(i64 %14, !6105, !DIExpression(), !6127)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6128
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6128
  %17 = icmp uge i64 %14, %indexaddr.len, !dbg !6128
  br i1 %17, label %lookup.throw, label %lookup.next, !dbg !6128

lookup.next:                                      ; preds = %for.body
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %14, !dbg !6128
  %19 = load i64, ptr %18, align 8, !dbg !6128
  %20 = add i64 %13, %19, !dbg !6129
    #dbg_value(i64 %20, !6104, !DIExpression(), !6129)
  %21 = add i64 %14, 1, !dbg !6130
    #dbg_value(i64 %21, !6105, !DIExpression(), !6130)
  br label %for.loop, !dbg !6121

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %13, !6104, !DIExpression(), !6131)
  ret i64 %13, !dbg !6132

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6128
  unreachable, !dbg !6128
}
