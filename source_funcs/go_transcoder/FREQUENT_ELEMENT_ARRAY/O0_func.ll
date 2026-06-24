define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6103
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6103
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6103
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6103)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6103)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6104)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6105
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6105
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6105
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6105
    #dbg_value(i64 1, !6099, !DIExpression(), !6106)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6107)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6108
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6108
  %6 = icmp uge i64 0, %indexaddr.len, !dbg !6108
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !6108

lookup.next:                                      ; preds = %entry
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !6108
  %8 = load i64, ptr %7, align 8, !dbg !6108
    #dbg_value(i64 %8, !6100, !DIExpression(), !6109)
    #dbg_value(i64 1, !6101, !DIExpression(), !6110)
    #dbg_value(i64 1, !6102, !DIExpression(), !6111)
  br label %for.loop, !dbg !6112

for.loop:                                         ; preds = %if.done, %lookup.next
  %9 = phi i64 [ 1, %lookup.next ], [ %23, %if.done ], !dbg !6106
  %10 = phi i64 [ %8, %lookup.next ], [ %24, %if.done ], !dbg !6109
  %11 = phi i64 [ 1, %lookup.next ], [ %25, %if.done ], !dbg !6110
  %12 = phi i64 [ 1, %lookup.next ], [ %26, %if.done ], !dbg !6111
    #dbg_value(i64 %12, !6102, !DIExpression(), !6113)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6114)
  %13 = icmp slt i64 %12, %n, !dbg !6115
  br i1 %13, label %for.body, label %for.done, !dbg !6112

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6116)
    #dbg_value(i64 %12, !6102, !DIExpression(), !6117)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6118
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6118
  %14 = icmp uge i64 %12, %indexaddr.len6, !dbg !6118
  br i1 %14, label %lookup.throw7, label %lookup.next8, !dbg !6118

lookup.next8:                                     ; preds = %for.body
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %12, !dbg !6118
  %16 = load i64, ptr %15, align 8, !dbg !6118
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6119)
    #dbg_value(i64 %12, !6102, !DIExpression(), !6120)
  %17 = sub i64 %12, 1, !dbg !6121
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6122
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6122
  %18 = icmp uge i64 %17, %indexaddr.len10, !dbg !6122
  br i1 %18, label %lookup.throw11, label %lookup.next12, !dbg !6122

lookup.next12:                                    ; preds = %lookup.next8
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %17, !dbg !6122
  %20 = load i64, ptr %19, align 8, !dbg !6122
  %21 = icmp eq i64 %16, %20, !dbg !6123
  br i1 %21, label %if.then, label %if.else, !dbg !6112

if.then:                                          ; preds = %lookup.next12
  %22 = add i64 %11, 1, !dbg !6124
    #dbg_value(i64 %22, !6101, !DIExpression(), !6124)
  br label %if.done, !dbg !6112

if.done:                                          ; preds = %if.done2, %if.then
  %23 = phi i64 [ %9, %if.then ], [ %32, %if.done2 ], !dbg !6106
  %24 = phi i64 [ %10, %if.then ], [ %33, %if.done2 ], !dbg !6109
  %25 = phi i64 [ %22, %if.then ], [ 1, %if.done2 ], !dbg !6110
  %26 = add i64 %12, 1, !dbg !6125
    #dbg_value(i64 %26, !6102, !DIExpression(), !6125)
  br label %for.loop, !dbg !6112

if.else:                                          ; preds = %lookup.next12
    #dbg_value(i64 %11, !6101, !DIExpression(), !6126)
    #dbg_value(i64 %9, !6099, !DIExpression(), !6127)
  %27 = icmp sgt i64 %11, %9, !dbg !6128
  br i1 %27, label %if.then1, label %if.done2, !dbg !6112

if.then1:                                         ; preds = %if.else
    #dbg_value(i64 %11, !6101, !DIExpression(), !6129)
    #dbg_value(i64 %11, !6099, !DIExpression(), !6130)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6131)
    #dbg_value(i64 %12, !6102, !DIExpression(), !6132)
  %28 = sub i64 %12, 1, !dbg !6133
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6134
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6134
  %29 = icmp uge i64 %28, %indexaddr.len14, !dbg !6134
  br i1 %29, label %lookup.throw15, label %lookup.next16, !dbg !6134

lookup.next16:                                    ; preds = %if.then1
  %30 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %28, !dbg !6134
  %31 = load i64, ptr %30, align 8, !dbg !6134
    #dbg_value(i64 %31, !6100, !DIExpression(), !6135)
  br label %if.done2, !dbg !6112

if.done2:                                         ; preds = %lookup.next16, %if.else
  %32 = phi i64 [ %9, %if.else ], [ %11, %lookup.next16 ], !dbg !6106
  %33 = phi i64 [ %10, %if.else ], [ %31, %lookup.next16 ], !dbg !6109
    #dbg_value(i64 1, !6101, !DIExpression(), !6136)
  br label %if.done, !dbg !6112

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %11, !6101, !DIExpression(), !6137)
    #dbg_value(i64 %9, !6099, !DIExpression(), !6138)
  %34 = icmp sgt i64 %11, %9, !dbg !6139
  br i1 %34, label %if.then3, label %if.done4, !dbg !6112

if.then3:                                         ; preds = %for.done
    #dbg_value(i64 %11, !6101, !DIExpression(), !6140)
    #dbg_value(i64 %11, !6099, !DIExpression(), !6141)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6142)
    #dbg_value(i64 %n, !6098, !DIExpression(), !6143)
  %35 = sub i64 %n, 1, !dbg !6144
  %indexaddr.ptr17 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6145
  %indexaddr.len18 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6145
  %36 = icmp uge i64 %35, %indexaddr.len18, !dbg !6145
  br i1 %36, label %lookup.throw19, label %lookup.next20, !dbg !6145

lookup.next20:                                    ; preds = %if.then3
  %37 = getelementptr inbounds i64, ptr %indexaddr.ptr17, i64 %35, !dbg !6145
  %38 = load i64, ptr %37, align 8, !dbg !6145
    #dbg_value(i64 %38, !6100, !DIExpression(), !6146)
  br label %if.done4, !dbg !6112

if.done4:                                         ; preds = %lookup.next20, %for.done
  %39 = phi i64 [ %10, %for.done ], [ %38, %lookup.next20 ], !dbg !6109
    #dbg_value(i64 %39, !6100, !DIExpression(), !6147)
  ret i64 %39, !dbg !6148

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !6108
  unreachable, !dbg !6108

lookup.throw7:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6118
  unreachable, !dbg !6118

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !6122
  unreachable, !dbg !6122

lookup.throw15:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !6134
  unreachable, !dbg !6134

lookup.throw19:                                   ; preds = %if.then3
  call void @runtime.lookupPanic(ptr undef), !dbg !6145
  unreachable, !dbg !6145
}
