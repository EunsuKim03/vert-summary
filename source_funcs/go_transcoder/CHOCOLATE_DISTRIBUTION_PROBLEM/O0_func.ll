define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %m) #1 !dbg !6092 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6103
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6103
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6103
    #dbg_value(ptr %arr.data, !6095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 %arr.len, !6095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6103)
    #dbg_value(i64 %arr.cap, !6095, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(i64 %n, !6096, !DIExpression(), !6103)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6103)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6104)
  %3 = icmp eq i64 %m, 0, !dbg !6105
  br i1 %3, label %if.then, label %cond.false, !dbg !6106

if.then:                                          ; preds = %cond.false, %entry
  ret i64 0, !dbg !6107

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !6096, !DIExpression(), !6108)
  %4 = icmp eq i64 %n, 0, !dbg !6109
  br i1 %4, label %if.then, label %if.done, !dbg !6106

if.done:                                          ; preds = %cond.false
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6110)
  %5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6111
  %6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6111
  %7 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6111
  call void @sort.Ints(ptr %5, i64 %6, i64 %7, ptr undef), !dbg !6111
    #dbg_value(i64 %n, !6096, !DIExpression(), !6112)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6113)
  %8 = icmp slt i64 %n, %m, !dbg !6114
  br i1 %8, label %if.then1, label %if.done2, !dbg !6106

if.then1:                                         ; preds = %if.done
  ret i64 -1, !dbg !6115

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 9223372036854775807, !6098, !DIExpression(), !6116)
    #dbg_value(i64 0, !6099, !DIExpression(), !6117)
    #dbg_value(i64 0, !6100, !DIExpression(), !6118)
    #dbg_value(i64 0, !6101, !DIExpression(), !6119)
  br label %for.loop, !dbg !6106

for.loop:                                         ; preds = %if.done4, %if.done2
  %9 = phi i64 [ 9223372036854775807, %if.done2 ], [ %28, %if.done4 ], !dbg !6116
  %10 = phi i64 [ 0, %if.done2 ], [ %29, %if.done4 ], !dbg !6117
  %11 = phi i64 [ 0, %if.done2 ], [ %30, %if.done4 ], !dbg !6118
  %12 = phi i64 [ 0, %if.done2 ], [ %31, %if.done4 ], !dbg !6119
    #dbg_value(i64 %12, !6101, !DIExpression(), !6120)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6121)
  %13 = add i64 %12, %m, !dbg !6122
  %14 = sub i64 %13, 1, !dbg !6123
    #dbg_value(i64 %n, !6096, !DIExpression(), !6124)
  %15 = icmp slt i64 %14, %n, !dbg !6125
  br i1 %15, label %for.body, label %for.done, !dbg !6106

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6126)
    #dbg_value(i64 %12, !6101, !DIExpression(), !6127)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6128)
  %16 = add i64 %12, %m, !dbg !6129
  %17 = sub i64 %16, 1, !dbg !6130
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6131
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6131
  %18 = icmp uge i64 %17, %indexaddr.len, !dbg !6131
  br i1 %18, label %lookup.throw, label %lookup.next, !dbg !6131

lookup.next:                                      ; preds = %for.body
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %17, !dbg !6131
  %20 = load i64, ptr %19, align 8, !dbg !6131
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6132)
    #dbg_value(i64 %12, !6101, !DIExpression(), !6133)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6134
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6134
  %21 = icmp uge i64 %12, %indexaddr.len6, !dbg !6134
  br i1 %21, label %lookup.throw7, label %lookup.next8, !dbg !6134

lookup.next8:                                     ; preds = %lookup.next
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %12, !dbg !6134
  %23 = load i64, ptr %22, align 8, !dbg !6134
  %24 = sub i64 %20, %23, !dbg !6135
    #dbg_value(i64 %24, !6102, !DIExpression(), !6136)
    #dbg_value(i64 %24, !6102, !DIExpression(), !6137)
    #dbg_value(i64 %9, !6098, !DIExpression(), !6138)
  %25 = icmp slt i64 %24, %9, !dbg !6139
  br i1 %25, label %if.then3, label %if.done4, !dbg !6106

if.then3:                                         ; preds = %lookup.next8
    #dbg_value(i64 %24, !6102, !DIExpression(), !6140)
    #dbg_value(i64 %24, !6098, !DIExpression(), !6141)
    #dbg_value(i64 %12, !6101, !DIExpression(), !6142)
    #dbg_value(i64 %12, !6099, !DIExpression(), !6143)
    #dbg_value(i64 %12, !6101, !DIExpression(), !6144)
    #dbg_value(i64 %m, !6097, !DIExpression(), !6145)
  %26 = add i64 %12, %m, !dbg !6146
  %27 = sub i64 %26, 1, !dbg !6147
    #dbg_value(i64 %27, !6100, !DIExpression(), !6148)
  br label %if.done4, !dbg !6106

if.done4:                                         ; preds = %if.then3, %lookup.next8
  %28 = phi i64 [ %9, %lookup.next8 ], [ %24, %if.then3 ], !dbg !6116
  %29 = phi i64 [ %10, %lookup.next8 ], [ %12, %if.then3 ], !dbg !6117
  %30 = phi i64 [ %11, %lookup.next8 ], [ %27, %if.then3 ], !dbg !6118
  %31 = add i64 %12, 1, !dbg !6149
    #dbg_value(i64 %31, !6101, !DIExpression(), !6149)
  br label %for.loop, !dbg !6106

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6150)
    #dbg_value(i64 %11, !6100, !DIExpression(), !6151)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6152
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6152
  %32 = icmp uge i64 %11, %indexaddr.len10, !dbg !6152
  br i1 %32, label %lookup.throw11, label %lookup.next12, !dbg !6152

lookup.next12:                                    ; preds = %for.done
  %33 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %11, !dbg !6152
  %34 = load i64, ptr %33, align 8, !dbg !6152
    #dbg_value({ ptr, i64, i64 } %2, !6095, !DIExpression(), !6153)
    #dbg_value(i64 %10, !6099, !DIExpression(), !6154)
  %indexaddr.ptr13 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6155
  %indexaddr.len14 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6155
  %35 = icmp uge i64 %10, %indexaddr.len14, !dbg !6155
  br i1 %35, label %lookup.throw15, label %lookup.next16, !dbg !6155

lookup.next16:                                    ; preds = %lookup.next12
  %36 = getelementptr inbounds i64, ptr %indexaddr.ptr13, i64 %10, !dbg !6155
  %37 = load i64, ptr %36, align 8, !dbg !6155
  %38 = sub i64 %34, %37, !dbg !6156
  ret i64 %38, !dbg !6157

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6131
  unreachable, !dbg !6131

lookup.throw7:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6134
  unreachable, !dbg !6134

lookup.throw11:                                   ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !6152
  unreachable, !dbg !6152

lookup.throw15:                                   ; preds = %lookup.next12
  call void @runtime.lookupPanic(ptr undef), !dbg !6155
  unreachable, !dbg !6155
}
