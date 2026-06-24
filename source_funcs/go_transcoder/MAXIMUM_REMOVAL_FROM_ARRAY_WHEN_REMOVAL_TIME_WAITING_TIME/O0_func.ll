define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6102
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6102
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6102
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6102)
    #dbg_value(i64 0, !6099, !DIExpression(), !6103)
    #dbg_value(i64 0, !6100, !DIExpression(), !6104)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6105)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6106
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6106
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6106
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6106
    #dbg_value(i64 0, !6101, !DIExpression(), !6107)
  br label %for.loop, !dbg !6108

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %19, %if.done ], !dbg !6103
  %7 = phi i64 [ 0, %entry ], [ %20, %if.done ], !dbg !6104
  %8 = phi i64 [ 0, %entry ], [ %21, %if.done ], !dbg !6107
    #dbg_value(i64 %8, !6101, !DIExpression(), !6109)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6110)
  %9 = icmp slt i64 %8, %n, !dbg !6111
  br i1 %9, label %for.body, label %for.done, !dbg !6108

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6112)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6113)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6114
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6114
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !6114
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6114

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6114
  %12 = load i64, ptr %11, align 8, !dbg !6114
    #dbg_value(i64 %7, !6100, !DIExpression(), !6115)
  %13 = icmp sge i64 %12, %7, !dbg !6116
  br i1 %13, label %if.then, label %if.done, !dbg !6108

if.then:                                          ; preds = %lookup.next
  %14 = add i64 %6, 1, !dbg !6117
    #dbg_value(i64 %14, !6099, !DIExpression(), !6117)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6118)
    #dbg_value(i64 %8, !6101, !DIExpression(), !6119)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6120
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6120
  %15 = icmp uge i64 %8, %indexaddr.len2, !dbg !6120
  br i1 %15, label %lookup.throw3, label %lookup.next4, !dbg !6120

lookup.next4:                                     ; preds = %if.then
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %8, !dbg !6120
  %17 = load i64, ptr %16, align 8, !dbg !6120
  %18 = add i64 %7, %17, !dbg !6121
    #dbg_value(i64 %18, !6100, !DIExpression(), !6121)
  br label %if.done, !dbg !6108

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %19 = phi i64 [ %6, %lookup.next ], [ %14, %lookup.next4 ], !dbg !6103
  %20 = phi i64 [ %7, %lookup.next ], [ %18, %lookup.next4 ], !dbg !6104
  %21 = add i64 %8, 1, !dbg !6122
    #dbg_value(i64 %21, !6101, !DIExpression(), !6122)
  br label %for.loop, !dbg !6108

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6123)
  ret i64 %6, !dbg !6124

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6114
  unreachable, !dbg !6114

lookup.throw3:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6120
  unreachable, !dbg !6120
}
