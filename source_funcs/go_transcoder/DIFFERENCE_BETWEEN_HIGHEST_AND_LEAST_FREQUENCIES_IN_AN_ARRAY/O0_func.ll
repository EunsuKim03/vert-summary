define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !6119 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !6129
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !6129
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !6129
    #dbg_value(ptr %arr.data, !6123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6129)
    #dbg_value(i64 %arr.len, !6123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6129)
    #dbg_value(i64 %arr.cap, !6123, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6129)
    #dbg_value(i64 %n, !6124, !DIExpression(), !6129)
    #dbg_value({ ptr, i64, i64 } %2, !6123, !DIExpression(), !6130)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6131
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6131
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6131
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6131
    #dbg_value(i64 0, !6125, !DIExpression(), !6132)
    #dbg_value(i64 0, !6126, !DIExpression(), !6133)
    #dbg_value(i64 %n, !6124, !DIExpression(), !6134)
    #dbg_value(i64 %n, !6127, !DIExpression(), !6135)
    #dbg_value(i64 0, !6128, !DIExpression(), !6136)
  br label %for.loop, !dbg !6137

for.loop:                                         ; preds = %for.post, %entry
  %6 = phi i64 [ 0, %entry ], [ %21, %for.post ], !dbg !6132
  %7 = phi i64 [ 0, %entry ], [ %22, %for.post ], !dbg !6133
  %8 = phi i64 [ %n, %entry ], [ %23, %for.post ], !dbg !6135
  %9 = phi i64 [ 0, %entry ], [ %24, %for.post ], !dbg !6136
    #dbg_value(i64 %9, !6128, !DIExpression(), !6138)
    #dbg_value(i64 %n, !6124, !DIExpression(), !6139)
  %10 = sub i64 %n, 1, !dbg !6140
  %11 = icmp slt i64 %9, %10, !dbg !6141
  br i1 %11, label %for.body, label %for.done, !dbg !6137

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !6123, !DIExpression(), !6142)
    #dbg_value(i64 %9, !6128, !DIExpression(), !6143)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6144
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6144
  %12 = icmp uge i64 %9, %indexaddr.len, !dbg !6144
  br i1 %12, label %lookup.throw, label %lookup.next, !dbg !6144

lookup.next:                                      ; preds = %for.body
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %9, !dbg !6144
  %14 = load i64, ptr %13, align 8, !dbg !6144
    #dbg_value({ ptr, i64, i64 } %2, !6123, !DIExpression(), !6145)
    #dbg_value(i64 %9, !6128, !DIExpression(), !6146)
  %15 = add i64 %9, 1, !dbg !6147
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6148
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6148
  %16 = icmp uge i64 %15, %indexaddr.len2, !dbg !6148
  br i1 %16, label %lookup.throw3, label %lookup.next4, !dbg !6148

lookup.next4:                                     ; preds = %lookup.next
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %15, !dbg !6148
  %18 = load i64, ptr %17, align 8, !dbg !6148
  %19 = icmp eq i64 %14, %18, !dbg !6149
  br i1 %19, label %if.then, label %if.else, !dbg !6137

if.then:                                          ; preds = %lookup.next4
  %20 = add i64 %6, 1, !dbg !6150
    #dbg_value(i64 %20, !6125, !DIExpression(), !6150)
  br label %for.post, !dbg !6137

for.post:                                         ; preds = %if.else, %if.then
  %21 = phi i64 [ %20, %if.then ], [ 0, %if.else ], !dbg !6132
  %22 = phi i64 [ %7, %if.then ], [ %25, %if.else ], !dbg !6133
  %23 = phi i64 [ %8, %if.then ], [ %26, %if.else ], !dbg !6135
  %24 = add i64 %9, 1, !dbg !6151
    #dbg_value(i64 %24, !6128, !DIExpression(), !6151)
  br label %for.loop, !dbg !6137

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %7, !6126, !DIExpression(), !6152)
    #dbg_value(i64 %6, !6125, !DIExpression(), !6153)
  %25 = call i64 @main.max(i64 %7, i64 %6, ptr undef), !dbg !6154
    #dbg_value(i64 %25, !6126, !DIExpression(), !6155)
    #dbg_value(i64 %8, !6127, !DIExpression(), !6156)
    #dbg_value(i64 %6, !6125, !DIExpression(), !6157)
  %26 = call i64 @main.min(i64 %8, i64 %6, ptr undef), !dbg !6158
    #dbg_value(i64 %26, !6127, !DIExpression(), !6159)
    #dbg_value(i64 0, !6125, !DIExpression(), !6160)
  br label %for.post, !dbg !6137

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !6126, !DIExpression(), !6161)
    #dbg_value(i64 %8, !6127, !DIExpression(), !6162)
  %27 = sub i64 %7, %8, !dbg !6163
  ret i64 %27, !dbg !6164

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !6144
  unreachable, !dbg !6144

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6148
  unreachable, !dbg !6148
}
