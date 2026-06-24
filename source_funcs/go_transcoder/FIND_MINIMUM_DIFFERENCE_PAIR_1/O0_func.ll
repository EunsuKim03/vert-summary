define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6101
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6101
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6101
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6101)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6101)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6101)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6101)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6102)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6103
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6103
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6103
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6103
    #dbg_value(i64 9223372036854775807, !6099, !DIExpression(), !6104)
    #dbg_value(i64 0, !6100, !DIExpression(), !6105)
  br label %for.loop, !dbg !6106

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 9223372036854775807, %entry ], [ %27, %if.done ], !dbg !6104
  %7 = phi i64 [ 0, %entry ], [ %28, %if.done ], !dbg !6105
    #dbg_value(i64 %7, !6100, !DIExpression(), !6107)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6108)
  %8 = sub i64 %n, 1, !dbg !6109
  %9 = icmp slt i64 %7, %8, !dbg !6110
  br i1 %9, label %for.body, label %for.done, !dbg !6106

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6111)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6112)
  %10 = add i64 %7, 1, !dbg !6113
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6114
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6114
  %11 = icmp uge i64 %10, %indexaddr.len, !dbg !6114
  br i1 %11, label %lookup.throw, label %lookup.next, !dbg !6114

lookup.next:                                      ; preds = %for.body
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %10, !dbg !6114
  %13 = load i64, ptr %12, align 8, !dbg !6114
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6115)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6116)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6117
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6117
  %14 = icmp uge i64 %7, %indexaddr.len2, !dbg !6117
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !6117

lookup.next4:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %7, !dbg !6117
  %16 = load i64, ptr %15, align 8, !dbg !6117
  %17 = sub i64 %13, %16, !dbg !6118
    #dbg_value(i64 %6, !6099, !DIExpression(), !6119)
  %18 = icmp slt i64 %17, %6, !dbg !6120
  br i1 %18, label %if.then, label %if.done, !dbg !6106

if.then:                                          ; preds = %lookup.next4
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6121)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6122)
  %19 = add i64 %7, 1, !dbg !6123
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6124
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6124
  %20 = icmp uge i64 %19, %indexaddr.len6, !dbg !6124
  br i1 %20, label %lookup.throw7, label %lookup.next8, !dbg !6124

lookup.next8:                                     ; preds = %if.then
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %19, !dbg !6124
  %22 = load i64, ptr %21, align 8, !dbg !6124
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6125)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6126)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6127
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6127
  %23 = icmp uge i64 %7, %indexaddr.len10, !dbg !6127
  br i1 %23, label %lookup.throw11, label %lookup.next12, !dbg !6127

lookup.next12:                                    ; preds = %lookup.next8
  %24 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %7, !dbg !6127
  %25 = load i64, ptr %24, align 8, !dbg !6127
  %26 = sub i64 %22, %25, !dbg !6128
    #dbg_value(i64 %26, !6099, !DIExpression(), !6129)
  br label %if.done, !dbg !6106

if.done:                                          ; preds = %lookup.next12, %lookup.next4
  %27 = phi i64 [ %6, %lookup.next4 ], [ %26, %lookup.next12 ], !dbg !6104
  %28 = add i64 %7, 1, !dbg !6130
    #dbg_value(i64 %28, !6100, !DIExpression(), !6130)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6131)
  ret i64 %6, !dbg !6132

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6114
  unreachable, !dbg !6114

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6117
  unreachable, !dbg !6117

lookup.throw7:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6124
  unreachable, !dbg !6124

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !6127
  unreachable, !dbg !6127
}
