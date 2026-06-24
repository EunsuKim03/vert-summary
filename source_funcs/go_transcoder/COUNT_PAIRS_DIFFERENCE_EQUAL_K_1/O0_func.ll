define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6101
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6101
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6101
    #dbg_value(ptr %arr.data, !6095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6101)
    #dbg_value(i64 %arr.len, !6095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6101)
    #dbg_value(i64 %arr.cap, !6095, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6101)
    #dbg_value(i64 %n, !6096, !DIExpression(), !6101)
    #dbg_value(i64 %k, !6097, !DIExpression(), !6101)
    #dbg_value(i64 0, !6098, !DIExpression(), !6102)
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6103)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6104
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6104
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6104
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6104
    #dbg_value(i64 0, !6099, !DIExpression(), !6105)
    #dbg_value(i64 0, !6100, !DIExpression(), !6106)
  br label %for.loop, !dbg !6107

for.loop:                                         ; preds = %if.else2, %if.then1, %if.then, %entry
  %6 = phi i64 [ 0, %entry ], [ %18, %if.then ], [ %6, %if.then1 ], [ %6, %if.else2 ], !dbg !6102
  %7 = phi i64 [ 0, %entry ], [ %19, %if.then ], [ %29, %if.then1 ], [ %7, %if.else2 ], !dbg !6105
  %8 = phi i64 [ 0, %entry ], [ %20, %if.then ], [ %8, %if.then1 ], [ %30, %if.else2 ], !dbg !6106
    #dbg_value(i64 %8, !6100, !DIExpression(), !6108)
    #dbg_value(i64 %n, !6096, !DIExpression(), !6109)
  %9 = icmp slt i64 %8, %n, !dbg !6110
  br i1 %9, label %for.body, label %for.done, !dbg !6107

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6111)
    #dbg_value(i64 %8, !6100, !DIExpression(), !6112)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6113
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6113
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !6113
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !6113

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !6113
  %12 = load i64, ptr %11, align 8, !dbg !6113
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6114)
    #dbg_value(i64 %7, !6099, !DIExpression(), !6115)
  %indexaddr.ptr3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6116
  %indexaddr.len4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6116
  %13 = icmp uge i64 %7, %indexaddr.len4, !dbg !6116
  br i1 %13, label %lookup.throw5, label %lookup.next6, !dbg !6116

lookup.next6:                                     ; preds = %lookup.next
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr3, i64 %7, !dbg !6116
  %15 = load i64, ptr %14, align 8, !dbg !6116
  %16 = sub i64 %12, %15, !dbg !6117
    #dbg_value(i64 %k, !6097, !DIExpression(), !6118)
  %17 = icmp eq i64 %16, %k, !dbg !6119
  br i1 %17, label %if.then, label %if.else, !dbg !6107

if.then:                                          ; preds = %lookup.next6
  %18 = add i64 %6, 1, !dbg !6120
    #dbg_value(i64 %18, !6098, !DIExpression(), !6120)
  %19 = add i64 %7, 1, !dbg !6121
    #dbg_value(i64 %19, !6099, !DIExpression(), !6121)
  %20 = add i64 %8, 1, !dbg !6122
    #dbg_value(i64 %20, !6100, !DIExpression(), !6122)
  br label %for.loop, !dbg !6107

if.else:                                          ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6123)
    #dbg_value(i64 %8, !6100, !DIExpression(), !6124)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6125
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6125
  %21 = icmp uge i64 %8, %indexaddr.len8, !dbg !6125
  br i1 %21, label %lookup.throw9, label %lookup.next10, !dbg !6125

lookup.next10:                                    ; preds = %if.else
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %8, !dbg !6125
  %23 = load i64, ptr %22, align 8, !dbg !6125
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6126)
    #dbg_value(i64 %7, !6099, !DIExpression(), !6127)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6128
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6128
  %24 = icmp uge i64 %7, %indexaddr.len12, !dbg !6128
  br i1 %24, label %lookup.throw13, label %lookup.next14, !dbg !6128

lookup.next14:                                    ; preds = %lookup.next10
  %25 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %7, !dbg !6128
  %26 = load i64, ptr %25, align 8, !dbg !6128
  %27 = sub i64 %23, %26, !dbg !6129
    #dbg_value(i64 %k, !6097, !DIExpression(), !6130)
  %28 = icmp sgt i64 %27, %k, !dbg !6131
  br i1 %28, label %if.then1, label %if.else2, !dbg !6107

if.then1:                                         ; preds = %lookup.next14
  %29 = add i64 %7, 1, !dbg !6132
    #dbg_value(i64 %29, !6099, !DIExpression(), !6132)
  br label %for.loop, !dbg !6107

if.else2:                                         ; preds = %lookup.next14
  %30 = add i64 %8, 1, !dbg !6133
    #dbg_value(i64 %30, !6100, !DIExpression(), !6133)
  br label %for.loop, !dbg !6107

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6098, !DIExpression(), !6134)
  ret i64 %6, !dbg !6135

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6113
  unreachable, !dbg !6113

lookup.throw5:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6116
  unreachable, !dbg !6116

lookup.throw9:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !6125
  unreachable, !dbg !6125

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !6128
  unreachable, !dbg !6128
}
