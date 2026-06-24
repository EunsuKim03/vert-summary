define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6101
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6101
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6101
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6101)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6101)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6101)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6101)
    #dbg_value(i64 0, !6099, !DIExpression(), !6102)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6103)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6104
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6104
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6104
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6104
    #dbg_value(i64 0, !6100, !DIExpression(), !6105)
  br label %for.loop, !dbg !6106

for.loop:                                         ; preds = %lookup.next4, %entry
  %6 = phi i64 [ 0, %entry ], [ %24, %lookup.next4 ], !dbg !6102
  %7 = phi i64 [ 0, %entry ], [ %25, %lookup.next4 ], !dbg !6105
    #dbg_value(i64 %7, !6100, !DIExpression(), !6107)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6108)
  %8 = icmp eq i64 %n, -9223372036854775808, !dbg !6109
  %9 = and i1 false, %8, !dbg !6109
  %10 = select i1 %9, i64 1, i64 2, !dbg !6109
  %11 = sdiv i64 %n, %10, !dbg !6109
  %12 = icmp slt i64 %7, %11, !dbg !6110
  br i1 %12, label %for.body, label %for.done, !dbg !6106

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6111)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6112)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6113
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6113
  %13 = icmp uge i64 %7, %indexaddr.len, !dbg !6113
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !6113

lookup.next:                                      ; preds = %for.body
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !6113
  %15 = load i64, ptr %14, align 8, !dbg !6113
  %16 = mul i64 %15, 2, !dbg !6114
  %17 = sub i64 %6, %16, !dbg !6115
    #dbg_value(i64 %17, !6099, !DIExpression(), !6115)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6116)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6117)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6118)
  %18 = sub i64 %n, %7, !dbg !6119
  %19 = sub i64 %18, 1, !dbg !6120
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6121
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6121
  %20 = icmp uge i64 %19, %indexaddr.len2, !dbg !6121
  br i1 %20, label %lookup.throw3, label %lookup.next4, !dbg !6121

lookup.next4:                                     ; preds = %lookup.next
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %19, !dbg !6121
  %22 = load i64, ptr %21, align 8, !dbg !6121
  %23 = mul i64 %22, 2, !dbg !6122
  %24 = add i64 %17, %23, !dbg !6123
    #dbg_value(i64 %24, !6099, !DIExpression(), !6123)
  %25 = add i64 %7, 1, !dbg !6124
    #dbg_value(i64 %25, !6100, !DIExpression(), !6124)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6125)
  ret i64 %6, !dbg !6126

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6113
  unreachable, !dbg !6113

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6121
  unreachable, !dbg !6121
}
