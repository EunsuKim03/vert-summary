define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %A.data, 0, !dbg !6102
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %A.len, 1, !dbg !6102
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %A.cap, 2, !dbg !6102
    #dbg_value(ptr %A.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 %A.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %A.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %B.data, 0, !dbg !6102
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %B.len, 1, !dbg !6102
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %B.cap, 2, !dbg !6102
    #dbg_value(ptr %B.data, !6098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 %B.len, !6098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %B.cap, !6098, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6102)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6103)
  %6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6104
  %7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6104
  %8 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6104
  call void @sort.Ints(ptr %6, i64 %7, i64 %8, ptr undef), !dbg !6104
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6105)
  %9 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6106
  %10 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6106
  %11 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !6106
  call void @sort.Ints(ptr %9, i64 %10, i64 %11, ptr undef), !dbg !6106
    #dbg_value(i64 0, !6100, !DIExpression(), !6107)
    #dbg_value(i64 0, !6101, !DIExpression(), !6108)
  br label %for.loop, !dbg !6109

for.loop:                                         ; preds = %lookup.next4, %entry
  %12 = phi i64 [ 0, %entry ], [ %24, %lookup.next4 ], !dbg !6107
  %13 = phi i64 [ 0, %entry ], [ %25, %lookup.next4 ], !dbg !6108
    #dbg_value(i64 %13, !6101, !DIExpression(), !6110)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6111)
  %14 = icmp slt i64 %13, %n, !dbg !6112
  br i1 %14, label %for.body, label %for.done, !dbg !6109

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6113)
    #dbg_value(i64 %13, !6101, !DIExpression(), !6114)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6115
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6115
  %15 = icmp uge i64 %13, %indexaddr.len, !dbg !6115
  br i1 %15, label %lookup.throw, label %lookup.next, !dbg !6115

lookup.next:                                      ; preds = %for.body
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %13, !dbg !6115
  %17 = load i64, ptr %16, align 8, !dbg !6115
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6116)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6117)
    #dbg_value(i64 %13, !6101, !DIExpression(), !6118)
  %18 = sub i64 %n, %13, !dbg !6119
  %19 = sub i64 %18, 1, !dbg !6120
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6121
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6121
  %20 = icmp uge i64 %19, %indexaddr.len2, !dbg !6121
  br i1 %20, label %lookup.throw3, label %lookup.next4, !dbg !6121

lookup.next4:                                     ; preds = %lookup.next
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %19, !dbg !6121
  %22 = load i64, ptr %21, align 8, !dbg !6121
  %23 = mul i64 %17, %22, !dbg !6122
  %24 = add i64 %12, %23, !dbg !6123
    #dbg_value(i64 %24, !6100, !DIExpression(), !6123)
  %25 = add i64 %13, 1, !dbg !6124
    #dbg_value(i64 %25, !6101, !DIExpression(), !6124)
  br label %for.loop, !dbg !6109

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %12, !6100, !DIExpression(), !6125)
  ret i64 %12, !dbg !6126

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6115
  unreachable, !dbg !6115

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6121
  unreachable, !dbg !6121
}
