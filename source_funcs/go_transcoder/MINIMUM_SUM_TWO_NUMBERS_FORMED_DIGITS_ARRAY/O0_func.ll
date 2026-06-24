define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6102
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6102
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6102
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
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
  %6 = phi i64 [ 0, %entry ], [ %17, %if.done ], !dbg !6105
  %7 = phi i64 [ 0, %entry ], [ %18, %if.done ], !dbg !6106
  %8 = phi i64 [ 0, %entry ], [ %19, %if.done ], !dbg !6107
    #dbg_value(i64 %8, !6101, !DIExpression(), !6109)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6110)
  %9 = icmp slt i64 %8, %n, !dbg !6111
  br i1 %9, label %for.body, label %for.done, !dbg !6108

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %8, !6101, !DIExpression(), !6112)
  %10 = and i64 %8, 1, !dbg !6113
  %11 = icmp ne i64 %10, 0, !dbg !6114
  br i1 %11, label %if.then, label %if.else, !dbg !6108

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %6, !6099, !DIExpression(), !6115)
  %12 = mul i64 %6, 10, !dbg !6116
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6117)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6118)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6119
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6119
  %13 = icmp uge i64 %8, %indexaddr.len, !dbg !6119
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !6119

lookup.next:                                      ; preds = %if.then
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6119
  %15 = load i64, ptr %14, align 8, !dbg !6119
  %16 = add i64 %12, %15, !dbg !6120
    #dbg_value(i64 %16, !6099, !DIExpression(), !6121)
  br label %if.done, !dbg !6108

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %17 = phi i64 [ %16, %lookup.next ], [ %6, %lookup.next4 ], !dbg !6105
  %18 = phi i64 [ %7, %lookup.next ], [ %24, %lookup.next4 ], !dbg !6106
  %19 = add i64 %8, 1, !dbg !6122
    #dbg_value(i64 %19, !6101, !DIExpression(), !6122)
  br label %for.loop, !dbg !6108

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %7, !6100, !DIExpression(), !6123)
  %20 = mul i64 %7, 10, !dbg !6124
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6125)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6126)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6127
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6127
  %21 = icmp uge i64 %8, %indexaddr.len2, !dbg !6127
  br i1 %21, label %lookup.throw3, label %lookup.next4, !dbg !6127

lookup.next4:                                     ; preds = %if.else
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %8, !dbg !6127
  %23 = load i64, ptr %22, align 8, !dbg !6127
  %24 = add i64 %20, %23, !dbg !6128
    #dbg_value(i64 %24, !6100, !DIExpression(), !6129)
  br label %if.done, !dbg !6108

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6130)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6131)
  %25 = add i64 %6, %7, !dbg !6132
  ret i64 %25, !dbg !6133

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6119
  unreachable, !dbg !6119

lookup.throw3:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !6127
  unreachable, !dbg !6127
}
