define i64 @f_gold(ptr nocapture %boxes.data, i64 %boxes.len, i64 %boxes.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %boxes.data, 0, !dbg !6105
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %boxes.len, 1, !dbg !6105
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %boxes.cap, 2, !dbg !6105
    #dbg_value(ptr %boxes.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6105)
    #dbg_value(i64 %boxes.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6105)
    #dbg_value(i64 %boxes.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6105)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6105)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6106)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6107
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6107
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6107
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6107
    #dbg_value(i64 1, !6099, !DIExpression(), !6108)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6109)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6110
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6110
  %6 = icmp uge i64 0, %indexaddr.len, !dbg !6110
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !6110

lookup.next:                                      ; preds = %entry
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !6110
  %8 = load i64, ptr %7, align 8, !dbg !6110
    #dbg_value(i64 %8, !6100, !DIExpression(), !6111)
    #dbg_value(i64 1, !6101, !DIExpression(), !6112)
    #dbg_value(i64 0, !6102, !DIExpression(), !6113)
    #dbg_value(i64 0, !6103, !DIExpression(), !6114)
    #dbg_value(i64 1, !6104, !DIExpression(), !6115)
  br label %for.loop, !dbg !6116

for.loop:                                         ; preds = %if.done, %lookup.next
  %9 = phi i64 [ 1, %lookup.next ], [ %24, %if.done ], !dbg !6108
  %10 = phi i64 [ %8, %lookup.next ], [ %25, %if.done ], !dbg !6111
  %11 = phi i64 [ 1, %lookup.next ], [ %26, %if.done ], !dbg !6112
  %12 = phi i64 [ 0, %lookup.next ], [ %27, %if.done ], !dbg !6113
  %13 = phi i64 [ 0, %lookup.next ], [ %28, %if.done ], !dbg !6114
  %14 = phi i64 [ 1, %lookup.next ], [ %29, %if.done ], !dbg !6115
    #dbg_value(i64 %14, !6104, !DIExpression(), !6117)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6118)
  %15 = icmp slt i64 %14, %n, !dbg !6119
  br i1 %15, label %for.body, label %for.done, !dbg !6116

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6120)
    #dbg_value(i64 %14, !6104, !DIExpression(), !6121)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6122
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6122
  %16 = icmp uge i64 %14, %indexaddr.len2, !dbg !6122
  br i1 %16, label %lookup.throw3, label %lookup.next4, !dbg !6122

lookup.next4:                                     ; preds = %for.body
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %14, !dbg !6122
  %18 = load i64, ptr %17, align 8, !dbg !6122
  %19 = add i64 %13, %18, !dbg !6123
    #dbg_value(i64 %19, !6103, !DIExpression(), !6123)
  %20 = add i64 %12, 1, !dbg !6124
    #dbg_value(i64 %20, !6102, !DIExpression(), !6124)
    #dbg_value(i64 %19, !6103, !DIExpression(), !6125)
    #dbg_value(i64 %10, !6100, !DIExpression(), !6126)
  %21 = icmp sgt i64 %19, %10, !dbg !6127
  br i1 %21, label %cond.true, label %if.done, !dbg !6116

cond.true:                                        ; preds = %lookup.next4
    #dbg_value(i64 %20, !6102, !DIExpression(), !6128)
    #dbg_value(i64 %11, !6101, !DIExpression(), !6129)
  %22 = icmp sgt i64 %20, %11, !dbg !6130
  br i1 %22, label %if.then, label %if.done, !dbg !6116

if.then:                                          ; preds = %cond.true
    #dbg_value(i64 %19, !6103, !DIExpression(), !6131)
    #dbg_value(i64 %19, !6100, !DIExpression(), !6132)
    #dbg_value(i64 %20, !6102, !DIExpression(), !6133)
    #dbg_value(i64 %20, !6101, !DIExpression(), !6134)
    #dbg_value(i64 0, !6102, !DIExpression(), !6135)
    #dbg_value(i64 0, !6103, !DIExpression(), !6136)
  %23 = add i64 %9, 1, !dbg !6137
    #dbg_value(i64 %23, !6099, !DIExpression(), !6137)
  br label %if.done, !dbg !6116

if.done:                                          ; preds = %if.then, %cond.true, %lookup.next4
  %24 = phi i64 [ %9, %lookup.next4 ], [ %9, %cond.true ], [ %23, %if.then ], !dbg !6108
  %25 = phi i64 [ %10, %lookup.next4 ], [ %10, %cond.true ], [ %19, %if.then ], !dbg !6111
  %26 = phi i64 [ %11, %lookup.next4 ], [ %11, %cond.true ], [ %20, %if.then ], !dbg !6112
  %27 = phi i64 [ %20, %lookup.next4 ], [ %20, %cond.true ], [ 0, %if.then ], !dbg !6113
  %28 = phi i64 [ %19, %lookup.next4 ], [ %19, %cond.true ], [ 0, %if.then ], !dbg !6114
  %29 = add i64 %14, 1, !dbg !6138
    #dbg_value(i64 %29, !6104, !DIExpression(), !6138)
  br label %for.loop, !dbg !6116

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %9, !6099, !DIExpression(), !6139)
  ret i64 %9, !dbg !6140

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !6110
  unreachable, !dbg !6110

lookup.throw3:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6122
  unreachable, !dbg !6122
}
