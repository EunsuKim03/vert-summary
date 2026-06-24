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
    #dbg_value(i64 1, !6099, !DIExpression(), !6104)
    #dbg_value(i64 0, !6100, !DIExpression(), !6105)
  br label %for.loop, !dbg !6106

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 1, %entry ], [ %20, %if.done ], !dbg !6104
  %7 = phi i64 [ 0, %entry ], [ %21, %if.done ], !dbg !6105
    #dbg_value(i64 %7, !6100, !DIExpression(), !6107)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6108)
  %8 = sub i64 %n, 1, !dbg !6109
  %9 = icmp slt i64 %7, %8, !dbg !6110
  br i1 %9, label %for.body, label %for.done, !dbg !6106

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6111)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6112)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6113
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6113
  %10 = icmp uge i64 %7, %indexaddr.len, !dbg !6113
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6113

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %7, !dbg !6113
  %12 = load i64, ptr %11, align 8, !dbg !6113
  %13 = add i64 %12, 1, !dbg !6114
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6115)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6116)
  %14 = add i64 %7, 1, !dbg !6117
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6118
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6118
  %15 = icmp uge i64 %14, %indexaddr.len2, !dbg !6118
  br i1 %15, label %lookup.throw3, label %lookup.next4, !dbg !6118

lookup.next4:                                     ; preds = %lookup.next
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %14, !dbg !6118
  %17 = load i64, ptr %16, align 8, !dbg !6118
  %18 = icmp ne i64 %13, %17, !dbg !6119
  br i1 %18, label %if.then, label %if.done, !dbg !6106

if.then:                                          ; preds = %lookup.next4
  %19 = add i64 %6, 1, !dbg !6120
    #dbg_value(i64 %19, !6099, !DIExpression(), !6120)
  br label %if.done, !dbg !6106

if.done:                                          ; preds = %if.then, %lookup.next4
  %20 = phi i64 [ %6, %lookup.next4 ], [ %19, %if.then ], !dbg !6104
  %21 = add i64 %7, 1, !dbg !6121
    #dbg_value(i64 %21, !6100, !DIExpression(), !6121)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6122)
  ret i64 %6, !dbg !6123

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6113
  unreachable, !dbg !6113

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6118
  unreachable, !dbg !6118
}
