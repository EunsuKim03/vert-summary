define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, ptr nocapture %b.data, i64 %b.len, i64 %b.cap, i64 %n) #1 !dbg !6117 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !6127
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !6127
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !6127
    #dbg_value(ptr %a.data, !6122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6127)
    #dbg_value(i64 %a.len, !6122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6127)
    #dbg_value(i64 %a.cap, !6122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6127)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %b.data, 0, !dbg !6127
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %b.len, 1, !dbg !6127
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %b.cap, 2, !dbg !6127
    #dbg_value(ptr %b.data, !6123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6127)
    #dbg_value(i64 %b.len, !6123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6127)
    #dbg_value(i64 %b.cap, !6123, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6127)
    #dbg_value(i64 %n, !6124, !DIExpression(), !6127)
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6128)
  %6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6129
  %7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6129
  %8 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6129
  call void @sort.Ints(ptr %6, i64 %7, i64 %8, ptr undef), !dbg !6129
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6130)
  %9 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6131
  %10 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6131
  %11 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !6131
  call void @sort.Ints(ptr %9, i64 %10, i64 %11, ptr undef), !dbg !6131
    #dbg_value(i64 0, !6125, !DIExpression(), !6132)
    #dbg_value(i64 0, !6126, !DIExpression(), !6133)
  br label %for.loop, !dbg !6134

for.loop:                                         ; preds = %lookup.next4, %entry
  %12 = phi i64 [ 0, %entry ], [ %25, %lookup.next4 ], !dbg !6132
  %13 = phi i64 [ 0, %entry ], [ %26, %lookup.next4 ], !dbg !6133
    #dbg_value(i64 %13, !6126, !DIExpression(), !6135)
    #dbg_value(i64 %n, !6124, !DIExpression(), !6136)
  %14 = icmp slt i64 %13, %n, !dbg !6137
  br i1 %14, label %for.body, label %for.done, !dbg !6134

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %12, !6125, !DIExpression(), !6138)
    #dbg_value({ ptr, i64, i64 } %2, !6122, !DIExpression(), !6139)
    #dbg_value(i64 %13, !6126, !DIExpression(), !6140)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6141
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6141
  %15 = icmp uge i64 %13, %indexaddr.len, !dbg !6141
  br i1 %15, label %lookup.throw, label %lookup.next, !dbg !6141

lookup.next:                                      ; preds = %for.body
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %13, !dbg !6141
  %17 = load i64, ptr %16, align 8, !dbg !6141
    #dbg_value({ ptr, i64, i64 } %5, !6123, !DIExpression(), !6142)
    #dbg_value(i64 %13, !6126, !DIExpression(), !6143)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6144
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6144
  %18 = icmp uge i64 %13, %indexaddr.len2, !dbg !6144
  br i1 %18, label %lookup.throw3, label %lookup.next4, !dbg !6144

lookup.next4:                                     ; preds = %lookup.next
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %13, !dbg !6144
  %20 = load i64, ptr %19, align 8, !dbg !6144
  %21 = sub i64 %17, %20, !dbg !6145
  %22 = sitofp i64 %21 to double, !dbg !6146
  %23 = call double @math.Abs(double %22, ptr undef), !dbg !6147
  %abovemin = fcmp ole double 0xC3E0000000000000, %23, !dbg !6148
  %belowmax = fcmp ole double %23, 0x43DFFFFFFFFFFFFE, !dbg !6148
  %inbounds = and i1 %abovemin, %belowmax, !dbg !6148
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !6148
  %isnan = fcmp uno double %23, %23, !dbg !6148
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !6148
  %normal = fptosi double %23 to i64, !dbg !6148
  %24 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !6148
  %25 = add i64 %12, %24, !dbg !6149
    #dbg_value(i64 %25, !6125, !DIExpression(), !6150)
  %26 = add i64 %13, 1, !dbg !6151
    #dbg_value(i64 %26, !6126, !DIExpression(), !6151)
  br label %for.loop, !dbg !6134

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %12, !6125, !DIExpression(), !6152)
  ret i64 %12, !dbg !6153

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6141
  unreachable, !dbg !6141

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6144
  unreachable, !dbg !6144
}
