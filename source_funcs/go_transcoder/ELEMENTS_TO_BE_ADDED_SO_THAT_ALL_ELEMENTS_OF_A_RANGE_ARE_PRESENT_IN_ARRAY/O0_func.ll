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

for.loop:                                         ; preds = %if.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %37, %if.done ], !dbg !6102
  %7 = phi i64 [ 0, %entry ], [ %38, %if.done ], !dbg !6105
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
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6114)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6115)
  %13 = add i64 %7, 1, !dbg !6116
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6117
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6117
  %14 = icmp uge i64 %13, %indexaddr.len2, !dbg !6117
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !6117

lookup.next4:                                     ; preds = %lookup.next
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %13, !dbg !6117
  %16 = load i64, ptr %15, align 8, !dbg !6117
  %17 = icmp ne i64 %12, %16, !dbg !6118
  br i1 %17, label %cond.true, label %if.done, !dbg !6106

cond.true:                                        ; preds = %lookup.next4
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6119)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6120)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6121
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6121
  %18 = icmp uge i64 %7, %indexaddr.len6, !dbg !6121
  br i1 %18, label %lookup.throw7, label %lookup.next8, !dbg !6121

lookup.next8:                                     ; preds = %cond.true
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %7, !dbg !6121
  %20 = load i64, ptr %19, align 8, !dbg !6121
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6122)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6123)
  %21 = add i64 %7, 1, !dbg !6124
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6125
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6125
  %22 = icmp uge i64 %21, %indexaddr.len10, !dbg !6125
  br i1 %22, label %lookup.throw11, label %lookup.next12, !dbg !6125

lookup.next12:                                    ; preds = %lookup.next8
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %21, !dbg !6125
  %24 = load i64, ptr %23, align 8, !dbg !6125
  %25 = sub i64 %24, 1, !dbg !6126
  %26 = icmp ne i64 %20, %25, !dbg !6127
  br i1 %26, label %if.then, label %if.done, !dbg !6106

if.then:                                          ; preds = %lookup.next12
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6128)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6129)
  %27 = add i64 %7, 1, !dbg !6130
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6131
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6131
  %28 = icmp uge i64 %27, %indexaddr.len14, !dbg !6131
  br i1 %28, label %lookup.throw15, label %lookup.next16, !dbg !6131

lookup.next16:                                    ; preds = %if.then
  %29 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %27, !dbg !6131
  %30 = load i64, ptr %29, align 8, !dbg !6131
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6132)
    #dbg_value(i64 %7, !6100, !DIExpression(), !6133)
  %indexaddr.ptr17 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6134
  %indexaddr.len18 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6134
  %31 = icmp uge i64 %7, %indexaddr.len18, !dbg !6134
  br i1 %31, label %lookup.throw19, label %lookup.next20, !dbg !6134

lookup.next20:                                    ; preds = %lookup.next16
  %32 = getelementptr inbounds i64, ptr %indexaddr.ptr17, i64 %7, !dbg !6134
  %33 = load i64, ptr %32, align 8, !dbg !6134
  %34 = sub i64 %30, %33, !dbg !6135
  %35 = sub i64 %34, 1, !dbg !6136
  %36 = add i64 %6, %35, !dbg !6137
    #dbg_value(i64 %36, !6099, !DIExpression(), !6137)
  br label %if.done, !dbg !6106

if.done:                                          ; preds = %lookup.next20, %lookup.next12, %lookup.next4
  %37 = phi i64 [ %6, %lookup.next4 ], [ %6, %lookup.next12 ], [ %36, %lookup.next20 ], !dbg !6102
  %38 = add i64 %7, 1, !dbg !6138
    #dbg_value(i64 %38, !6100, !DIExpression(), !6138)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !6099, !DIExpression(), !6139)
  ret i64 %6, !dbg !6140

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6113
  unreachable, !dbg !6113

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6117
  unreachable, !dbg !6117

lookup.throw7:                                    ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !6121
  unreachable, !dbg !6121

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !6125
  unreachable, !dbg !6125

lookup.throw15:                                   ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !6131
  unreachable, !dbg !6131

lookup.throw19:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !6134
  unreachable, !dbg !6134
}
