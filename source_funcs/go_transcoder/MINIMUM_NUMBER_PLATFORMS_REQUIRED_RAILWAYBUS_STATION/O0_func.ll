define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, ptr nocapture %dep.data, i64 %dep.len, i64 %dep.cap, i64 %n) #0 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6104
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6104
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6104
    #dbg_value(ptr %arr.data, !6097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6104)
    #dbg_value(i64 %arr.len, !6097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6104)
    #dbg_value(i64 %arr.cap, !6097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6104)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %dep.data, 0, !dbg !6104
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %dep.len, 1, !dbg !6104
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %dep.cap, 2, !dbg !6104
    #dbg_value(ptr %dep.data, !6098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6104)
    #dbg_value(i64 %dep.len, !6098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6104)
    #dbg_value(i64 %dep.cap, !6098, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6104)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6104)
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6105)
  %6 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6106
  %7 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6106
  %8 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6106
  call void @sort.Ints(ptr %6, i64 %7, i64 %8, ptr undef), !dbg !6106
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6107)
  %9 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6108
  %10 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6108
  %11 = extractvalue { ptr, i64, i64 } %5, 2, !dbg !6108
  call void @sort.Ints(ptr %9, i64 %10, i64 %11, ptr undef), !dbg !6108
    #dbg_value(i64 1, !6100, !DIExpression(), !6109)
    #dbg_value(i64 1, !6101, !DIExpression(), !6110)
    #dbg_value(i64 1, !6102, !DIExpression(), !6111)
    #dbg_value(i64 0, !6103, !DIExpression(), !6112)
  br label %for.loop, !dbg !6113

for.loop:                                         ; preds = %if.else, %if.then1, %if.then, %entry
  %12 = phi i64 [ 1, %entry ], [ %25, %if.then ], [ %28, %if.else ], [ %25, %if.then1 ], !dbg !6109
  %13 = phi i64 [ 1, %entry ], [ %13, %if.then ], [ %13, %if.else ], [ %25, %if.then1 ], !dbg !6110
  %14 = phi i64 [ 1, %entry ], [ %26, %if.then ], [ %14, %if.else ], [ %26, %if.then1 ], !dbg !6111
  %15 = phi i64 [ 0, %entry ], [ %15, %if.then ], [ %29, %if.else ], [ %15, %if.then1 ], !dbg !6112
    #dbg_value(i64 %14, !6102, !DIExpression(), !6114)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6115)
  %16 = icmp slt i64 %14, %n, !dbg !6116
  br i1 %16, label %cond.true, label %for.done, !dbg !6113

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %15, !6103, !DIExpression(), !6117)
    #dbg_value(i64 %n, !6099, !DIExpression(), !6118)
  %17 = icmp slt i64 %15, %n, !dbg !6119
  br i1 %17, label %for.body, label %for.done, !dbg !6113

for.body:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %2, !6097, !DIExpression(), !6120)
    #dbg_value(i64 %14, !6102, !DIExpression(), !6121)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6122
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6122
  %18 = icmp uge i64 %14, %indexaddr.len, !dbg !6122
  br i1 %18, label %lookup.throw, label %lookup.next, !dbg !6122

lookup.next:                                      ; preds = %for.body
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %14, !dbg !6122
  %20 = load i64, ptr %19, align 8, !dbg !6122
    #dbg_value({ ptr, i64, i64 } %5, !6098, !DIExpression(), !6123)
    #dbg_value(i64 %15, !6103, !DIExpression(), !6124)
  %indexaddr.ptr2 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !6125
  %indexaddr.len3 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !6125
  %21 = icmp uge i64 %15, %indexaddr.len3, !dbg !6125
  br i1 %21, label %lookup.throw4, label %lookup.next5, !dbg !6125

lookup.next5:                                     ; preds = %lookup.next
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr2, i64 %15, !dbg !6125
  %23 = load i64, ptr %22, align 8, !dbg !6125
  %24 = icmp sle i64 %20, %23, !dbg !6126
  br i1 %24, label %if.then, label %if.else, !dbg !6113

if.then:                                          ; preds = %lookup.next5
  %25 = add i64 %12, 1, !dbg !6127
    #dbg_value(i64 %25, !6100, !DIExpression(), !6127)
  %26 = add i64 %14, 1, !dbg !6128
    #dbg_value(i64 %26, !6102, !DIExpression(), !6128)
    #dbg_value(i64 %25, !6100, !DIExpression(), !6129)
    #dbg_value(i64 %13, !6101, !DIExpression(), !6130)
  %27 = icmp sgt i64 %25, %13, !dbg !6131
  br i1 %27, label %if.then1, label %for.loop, !dbg !6113

if.then1:                                         ; preds = %if.then
    #dbg_value(i64 %25, !6100, !DIExpression(), !6132)
    #dbg_value(i64 %25, !6101, !DIExpression(), !6133)
  br label %for.loop, !dbg !6113

if.else:                                          ; preds = %lookup.next5
  %28 = sub i64 %12, 1, !dbg !6134
    #dbg_value(i64 %28, !6100, !DIExpression(), !6134)
  %29 = add i64 %15, 1, !dbg !6135
    #dbg_value(i64 %29, !6103, !DIExpression(), !6135)
  br label %for.loop, !dbg !6113

for.done:                                         ; preds = %cond.true, %for.loop
    #dbg_value(i64 %13, !6101, !DIExpression(), !6136)
  ret i64 %13, !dbg !6137

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6122
  unreachable, !dbg !6122

lookup.throw4:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6125
  unreachable, !dbg !6125
}
