define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !6106 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6115
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6115
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6115
    #dbg_value(ptr %arr.data, !6110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6115)
    #dbg_value(i64 %arr.len, !6110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6115)
    #dbg_value(i64 %arr.cap, !6110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6115)
    #dbg_value(i64 %n, !6111, !DIExpression(), !6115)
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6116)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6117
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6117
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6117
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6117
    #dbg_value(i64 9223372036854775807, !6112, !DIExpression(), !6118)
    #dbg_value(i64 0, !6113, !DIExpression(), !6119)
    #dbg_value(i64 0, !6114, !DIExpression(), !6120)
  br label %for.loop, !dbg !6121

for.loop:                                         ; preds = %lookup.next4, %entry
  %6 = phi i64 [ 9223372036854775807, %entry ], [ %18, %lookup.next4 ], !dbg !6118
  %7 = phi i64 [ 0, %entry ], [ %19, %lookup.next4 ], !dbg !6120
    #dbg_value(i64 %7, !6114, !DIExpression(), !6122)
    #dbg_value(i64 %n, !6111, !DIExpression(), !6123)
  %8 = sub i64 %n, 1, !dbg !6124
  %9 = icmp slt i64 %7, %8, !dbg !6125
  br i1 %9, label %for.body, label %for.done, !dbg !6121

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6126)
    #dbg_value(i64 %7, !6114, !DIExpression(), !6127)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6128
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6128
  %10 = icmp uge i64 %7, %indexaddr.len, !dbg !6128
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6128

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !6128
  %12 = load i64, ptr %11, align 8, !dbg !6128
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6129)
    #dbg_value(i64 %7, !6114, !DIExpression(), !6130)
  %13 = add i64 %7, 1, !dbg !6131
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6132
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6132
  %14 = icmp uge i64 %13, %indexaddr.len2, !dbg !6132
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !6132

lookup.next4:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %13, !dbg !6132
  %16 = load i64, ptr %15, align 8, !dbg !6132
  %17 = xor i64 %12, %16, !dbg !6133
    #dbg_value(i64 %17, !6113, !DIExpression(), !6134)
    #dbg_value(i64 %6, !6112, !DIExpression(), !6135)
    #dbg_value(i64 %17, !6113, !DIExpression(), !6136)
  %18 = call i64 @main.min(i64 %6, i64 %17, ptr undef), !dbg !6137
    #dbg_value(i64 %18, !6112, !DIExpression(), !6138)
  %19 = add i64 %7, 1, !dbg !6139
    #dbg_value(i64 %19, !6114, !DIExpression(), !6139)
  br label %for.loop, !dbg !6121

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6112, !DIExpression(), !6140)
  ret i64 %6, !dbg !6141

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6128
  unreachable, !dbg !6128

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6132
  unreachable, !dbg !6132
}
