define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
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
    #dbg_value(i64 0, !6099, !DIExpression(), !6104)
    #dbg_value(i64 0, !6100, !DIExpression(), !6105)
  br label %for.loop, !dbg !6106

for.loop:                                         ; preds = %lookup.next, %entry
  %6 = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !6104
  %7 = phi i64 [ 0, %entry ], [ %14, %lookup.next ], !dbg !6105
    #dbg_value(i64 %7, !6100, !DIExpression(), !6107)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6108)
  %8 = icmp slt i64 %7, %n, !dbg !6109
  br i1 %8, label %for.body, label %for.done, !dbg !6106

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6110)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6111)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6112
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6112
  %9 = icmp uge i64 %7, %indexaddr.len, !dbg !6112
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !6112

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !6112
  %11 = load i64, ptr %10, align 8, !dbg !6112
    #dbg_value(i64 %7, !6100, !DIExpression(), !6113)
  %12 = mul i64 %11, %7, !dbg !6114
  %13 = add i64 %6, %12, !dbg !6115
    #dbg_value(i64 %13, !6099, !DIExpression(), !6115)
  %14 = add i64 %7, 1, !dbg !6116
    #dbg_value(i64 %14, !6100, !DIExpression(), !6116)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6117)
  ret i64 %6, !dbg !6118

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6112
  unreachable, !dbg !6112
}
