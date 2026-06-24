define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %K) #1 !dbg !6106 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6114
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6114
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6114
    #dbg_value(ptr %arr.data, !6108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6114)
    #dbg_value(i64 %arr.len, !6108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6114)
    #dbg_value(i64 %arr.cap, !6108, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6114)
    #dbg_value(i64 %N, !6109, !DIExpression(), !6114)
    #dbg_value(i64 %K, !6110, !DIExpression(), !6114)
    #dbg_value({ ptr, i64, i64 } %2, !6108, !DIExpression(), !6115)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6116
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6116
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6116
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6116
    #dbg_value(i64 9223372036854775807, !6111, !DIExpression(), !6117)
    #dbg_value(i64 0, !6112, !DIExpression(), !6118)
  br label %for.loop, !dbg !6119

for.loop:                                         ; preds = %lookup.next4, %entry
  %6 = phi i64 [ 9223372036854775807, %entry ], [ %19, %lookup.next4 ], !dbg !6117
  %7 = phi i64 [ 0, %entry ], [ %20, %lookup.next4 ], !dbg !6118
    #dbg_value(i64 %7, !6112, !DIExpression(), !6120)
    #dbg_value(i64 %N, !6109, !DIExpression(), !6121)
    #dbg_value(i64 %K, !6110, !DIExpression(), !6122)
  %8 = sub i64 %N, %K, !dbg !6123
  %9 = icmp sle i64 %7, %8, !dbg !6124
  br i1 %9, label %for.body, label %for.done, !dbg !6119

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6108, !DIExpression(), !6125)
    #dbg_value(i64 %7, !6112, !DIExpression(), !6126)
    #dbg_value(i64 %K, !6110, !DIExpression(), !6127)
  %10 = add i64 %7, %K, !dbg !6128
  %11 = sub i64 %10, 1, !dbg !6129
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6130
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6130
  %12 = icmp uge i64 %11, %indexaddr.len, !dbg !6130
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !6130

lookup.next:                                      ; preds = %for.body
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %11, !dbg !6130
  %14 = load i64, ptr %13, align 8, !dbg !6130
    #dbg_value({ ptr, i64, i64 } %2, !6108, !DIExpression(), !6131)
    #dbg_value(i64 %7, !6112, !DIExpression(), !6132)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6133
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6133
  %15 = icmp uge i64 %7, %indexaddr.len2, !dbg !6133
  br i1 %15, label %lookup.throw3, label %lookup.next4, !dbg !6133

lookup.next4:                                     ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %7, !dbg !6133
  %17 = load i64, ptr %16, align 8, !dbg !6133
  %18 = sub i64 %14, %17, !dbg !6134
    #dbg_value(i64 %18, !6113, !DIExpression(), !6135)
    #dbg_value(i64 %6, !6111, !DIExpression(), !6136)
    #dbg_value(i64 %18, !6113, !DIExpression(), !6137)
  %19 = call i64 @main.min(i64 %6, i64 %18, ptr undef), !dbg !6138
    #dbg_value(i64 %19, !6111, !DIExpression(), !6139)
  %20 = add i64 %7, 1, !dbg !6140
    #dbg_value(i64 %20, !6112, !DIExpression(), !6140)
  br label %for.loop, !dbg !6119

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6111, !DIExpression(), !6141)
  ret i64 %6, !dbg !6142

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6130
  unreachable, !dbg !6130

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6133
  unreachable, !dbg !6133
}
