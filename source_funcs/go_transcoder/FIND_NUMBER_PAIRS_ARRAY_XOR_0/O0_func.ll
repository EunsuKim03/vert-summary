define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !6102
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !6102
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !6102
    #dbg_value(ptr %a.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 %a.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %a.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6102)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6103)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6104
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6104
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6104
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6104
    #dbg_value(i64 1, !6099, !DIExpression(), !6105)
    #dbg_value(i64 0, !6100, !DIExpression(), !6106)
    #dbg_value(i64 1, !6101, !DIExpression(), !6107)
  br label %for.loop, !dbg !6108

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 1, %entry ], [ %19, %if.done ], !dbg !6105
  %7 = phi i64 [ 0, %entry ], [ %20, %if.done ], !dbg !6106
  %8 = phi i64 [ 1, %entry ], [ %21, %if.done ], !dbg !6107
    #dbg_value(i64 %8, !6101, !DIExpression(), !6109)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6110)
  %9 = icmp slt i64 %8, %n, !dbg !6111
  br i1 %9, label %for.body, label %for.done, !dbg !6108

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6112)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6113)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6114
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6114
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !6114
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6114

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6114
  %12 = load i64, ptr %11, align 8, !dbg !6114
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6115)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6116)
  %13 = sub i64 %8, 1, !dbg !6117
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6118
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6118
  %14 = icmp uge i64 %13, %indexaddr.len2, !dbg !6118
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !6118

lookup.next4:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %13, !dbg !6118
  %16 = load i64, ptr %15, align 8, !dbg !6118
  %17 = icmp eq i64 %12, %16, !dbg !6119
  br i1 %17, label %if.then, label %if.else, !dbg !6108

if.then:                                          ; preds = %lookup.next4
  %18 = add i64 %6, 1, !dbg !6120
    #dbg_value(i64 %18, !6099, !DIExpression(), !6120)
  br label %if.done, !dbg !6108

if.done:                                          ; preds = %if.else, %if.then
  %19 = phi i64 [ %18, %if.then ], [ 1, %if.else ], !dbg !6105
  %20 = phi i64 [ %7, %if.then ], [ %28, %if.else ], !dbg !6106
  %21 = add i64 %8, 1, !dbg !6121
    #dbg_value(i64 %21, !6101, !DIExpression(), !6121)
  br label %for.loop, !dbg !6108

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %7, !6100, !DIExpression(), !6122)
    #dbg_value(i64 %6, !6099, !DIExpression(), !6123)
    #dbg_value(i64 %6, !6099, !DIExpression(), !6124)
  %22 = sub i64 %6, 1, !dbg !6125
  %23 = mul i64 %6, %22, !dbg !6126
  %24 = icmp eq i64 %23, -9223372036854775808, !dbg !6127
  %25 = and i1 false, %24, !dbg !6127
  %26 = select i1 %25, i64 1, i64 2, !dbg !6127
  %27 = sdiv i64 %23, %26, !dbg !6127
  %28 = add i64 %7, %27, !dbg !6128
    #dbg_value(i64 %28, !6100, !DIExpression(), !6129)
    #dbg_value(i64 1, !6099, !DIExpression(), !6130)
  br label %if.done, !dbg !6108

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !6100, !DIExpression(), !6131)
    #dbg_value(i64 %6, !6099, !DIExpression(), !6132)
    #dbg_value(i64 %6, !6099, !DIExpression(), !6133)
  %29 = sub i64 %6, 1, !dbg !6134
  %30 = mul i64 %6, %29, !dbg !6135
  %31 = icmp eq i64 %30, -9223372036854775808, !dbg !6136
  %32 = and i1 false, %31, !dbg !6136
  %33 = select i1 %32, i64 1, i64 2, !dbg !6136
  %34 = sdiv i64 %30, %33, !dbg !6136
  %35 = add i64 %7, %34, !dbg !6137
    #dbg_value(i64 %35, !6100, !DIExpression(), !6138)
    #dbg_value(i64 %35, !6100, !DIExpression(), !6139)
  ret i64 %35, !dbg !6140

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6114
  unreachable, !dbg !6114

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6118
  unreachable, !dbg !6118
}
