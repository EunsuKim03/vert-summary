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
    #dbg_value(i64 0, !6099, !DIExpression(), !6105)
    #dbg_value(i64 0, !6100, !DIExpression(), !6106)
    #dbg_value(i64 0, !6101, !DIExpression(), !6107)
  br label %for.loop, !dbg !6108

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %20, %if.done ], !dbg !6105
  %7 = phi i64 [ 0, %entry ], [ %21, %if.done ], !dbg !6106
  %8 = phi i64 [ 0, %entry ], [ %22, %if.done ], !dbg !6107
    #dbg_value(i64 %8, !6101, !DIExpression(), !6109)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6110)
  %9 = icmp slt i64 %8, %n, !dbg !6111
  br i1 %9, label %for.body, label %for.done, !dbg !6108

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %8, !6101, !DIExpression(), !6112)
  %10 = icmp eq i64 %8, -9223372036854775808, !dbg !6113
  %11 = and i1 false, %10, !dbg !6113
  %12 = select i1 %11, i64 1, i64 2, !dbg !6113
  %13 = srem i64 %8, %12, !dbg !6113
  %14 = icmp eq i64 %13, 0, !dbg !6114
  br i1 %14, label %if.then, label %if.else, !dbg !6108

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %6, !6099, !DIExpression(), !6115)
  %15 = mul i64 %6, 10, !dbg !6116
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6117)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6118)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6119
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6119
  %16 = icmp uge i64 %8, %indexaddr.len, !dbg !6119
  br i1 %16, label %lookup.throw, label %lookup.next, !dbg !6119

lookup.next:                                      ; preds = %if.then
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6119
  %18 = load i64, ptr %17, align 8, !dbg !6119
  %19 = add i64 %15, %18, !dbg !6120
    #dbg_value(i64 %19, !6099, !DIExpression(), !6121)
  br label %if.done, !dbg !6108

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %20 = phi i64 [ %19, %lookup.next ], [ %6, %lookup.next4 ], !dbg !6105
  %21 = phi i64 [ %7, %lookup.next ], [ %27, %lookup.next4 ], !dbg !6106
  %22 = add i64 %8, 1, !dbg !6122
    #dbg_value(i64 %22, !6101, !DIExpression(), !6122)
  br label %for.loop, !dbg !6108

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %7, !6100, !DIExpression(), !6123)
  %23 = mul i64 %7, 10, !dbg !6124
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6125)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6126)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6127
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6127
  %24 = icmp uge i64 %8, %indexaddr.len2, !dbg !6127
  br i1 %24, label %lookup.throw3, label %lookup.next4, !dbg !6127

lookup.next4:                                     ; preds = %if.else
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %8, !dbg !6127
  %26 = load i64, ptr %25, align 8, !dbg !6127
  %27 = add i64 %23, %26, !dbg !6128
    #dbg_value(i64 %27, !6100, !DIExpression(), !6129)
  br label %if.done, !dbg !6108

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !6100, !DIExpression(), !6130)
    #dbg_value(i64 %6, !6099, !DIExpression(), !6131)
  %28 = add i64 %7, %6, !dbg !6132
  ret i64 %28, !dbg !6133

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6119
  unreachable, !dbg !6119

lookup.throw3:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !6127
  unreachable, !dbg !6127
}
