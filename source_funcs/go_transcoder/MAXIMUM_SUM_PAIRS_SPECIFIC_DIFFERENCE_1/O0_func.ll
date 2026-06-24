define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %k) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6100
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6100
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6100
    #dbg_value(ptr %arr.data, !6095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6100)
    #dbg_value(i64 %arr.len, !6095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6100)
    #dbg_value(i64 %arr.cap, !6095, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6100)
    #dbg_value(i64 %N, !6096, !DIExpression(), !6100)
    #dbg_value(i64 %k, !6097, !DIExpression(), !6100)
    #dbg_value(i64 0, !6098, !DIExpression(), !6101)
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6102)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6103
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6103
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6103
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6103
    #dbg_value(i64 %N, !6096, !DIExpression(), !6104)
  %6 = sub i64 %N, 1, !dbg !6105
    #dbg_value(i64 %6, !6099, !DIExpression(), !6106)
  br label %for.loop, !dbg !6107

for.loop:                                         ; preds = %if.done, %entry
  %7 = phi i64 [ 0, %entry ], [ %29, %if.done ], !dbg !6101
  %8 = phi i64 [ %6, %entry ], [ %31, %if.done ], !dbg !6106
    #dbg_value(i64 %8, !6099, !DIExpression(), !6108)
  %9 = icmp sgt i64 %8, 0, !dbg !6109
  br i1 %9, label %for.body, label %for.done, !dbg !6107

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6110)
    #dbg_value(i64 %8, !6099, !DIExpression(), !6111)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6112
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6112
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !6112
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6112

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6112
  %12 = load i64, ptr %11, align 8, !dbg !6112
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6113)
    #dbg_value(i64 %8, !6099, !DIExpression(), !6114)
  %13 = sub i64 %8, 1, !dbg !6115
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6116
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6116
  %14 = icmp uge i64 %13, %indexaddr.len2, !dbg !6116
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !6116

lookup.next4:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %13, !dbg !6116
  %16 = load i64, ptr %15, align 8, !dbg !6116
  %17 = sub i64 %12, %16, !dbg !6117
    #dbg_value(i64 %k, !6097, !DIExpression(), !6118)
  %18 = icmp slt i64 %17, %k, !dbg !6119
  br i1 %18, label %if.then, label %if.done, !dbg !6107

if.then:                                          ; preds = %lookup.next4
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6120)
    #dbg_value(i64 %8, !6099, !DIExpression(), !6121)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6122
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6122
  %19 = icmp uge i64 %8, %indexaddr.len6, !dbg !6122
  br i1 %19, label %lookup.throw7, label %lookup.next8, !dbg !6122

lookup.next8:                                     ; preds = %if.then
  %20 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %8, !dbg !6122
  %21 = load i64, ptr %20, align 8, !dbg !6122
  %22 = add i64 %7, %21, !dbg !6123
    #dbg_value(i64 %22, !6098, !DIExpression(), !6123)
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6124)
    #dbg_value(i64 %8, !6099, !DIExpression(), !6125)
  %23 = sub i64 %8, 1, !dbg !6126
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6127
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6127
  %24 = icmp uge i64 %23, %indexaddr.len10, !dbg !6127
  br i1 %24, label %lookup.throw11, label %lookup.next12, !dbg !6127

lookup.next12:                                    ; preds = %lookup.next8
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %23, !dbg !6127
  %26 = load i64, ptr %25, align 8, !dbg !6127
  %27 = add i64 %22, %26, !dbg !6128
    #dbg_value(i64 %27, !6098, !DIExpression(), !6128)
  %28 = sub i64 %8, 1, !dbg !6129
    #dbg_value(i64 %28, !6099, !DIExpression(), !6129)
  br label %if.done, !dbg !6107

if.done:                                          ; preds = %lookup.next12, %lookup.next4
  %29 = phi i64 [ %7, %lookup.next4 ], [ %27, %lookup.next12 ], !dbg !6101
  %30 = phi i64 [ %8, %lookup.next4 ], [ %28, %lookup.next12 ], !dbg !6106
  %31 = sub i64 %30, 1, !dbg !6130
    #dbg_value(i64 %31, !6099, !DIExpression(), !6130)
  br label %for.loop, !dbg !6107

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !6098, !DIExpression(), !6131)
  ret i64 %7, !dbg !6132

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6112
  unreachable, !dbg !6112

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6116
  unreachable, !dbg !6116

lookup.throw7:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6122
  unreachable, !dbg !6122

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !6127
  unreachable, !dbg !6127
}
