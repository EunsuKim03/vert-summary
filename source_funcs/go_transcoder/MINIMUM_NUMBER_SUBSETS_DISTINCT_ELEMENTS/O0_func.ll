define i64 @f_gold(ptr nocapture %ar.data, i64 %ar.len, i64 %ar.cap, i64 %n) #0 !dbg !6106 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %ar.data, 0, !dbg !6115
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %ar.len, 1, !dbg !6115
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %ar.cap, 2, !dbg !6115
    #dbg_value(ptr %ar.data, !6110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6115)
    #dbg_value(i64 %ar.len, !6110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6115)
    #dbg_value(i64 %ar.cap, !6110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6115)
    #dbg_value(i64 %n, !6111, !DIExpression(), !6115)
    #dbg_value(i64 0, !6112, !DIExpression(), !6116)
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6117)
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6118
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6118
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !6118
  call void @sort.Ints(ptr %3, i64 %4, i64 %5, ptr undef), !dbg !6118
    #dbg_value(i64 0, !6113, !DIExpression(), !6119)
  br label %for.loop, !dbg !6120

for.loop:                                         ; preds = %for.done, %entry
  %6 = phi i64 [ 0, %entry ], [ %23, %for.done ], !dbg !6116
  %7 = phi i64 [ 0, %entry ], [ %24, %for.done ], !dbg !6119
    #dbg_value(i64 %7, !6113, !DIExpression(), !6121)
    #dbg_value(i64 %n, !6111, !DIExpression(), !6122)
  %8 = icmp slt i64 %7, %n, !dbg !6123
  br i1 %8, label %for.body, label %for.done3, !dbg !6120

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !6114, !DIExpression(), !6124)
  br label %for.loop1, !dbg !6120

for.loop1:                                        ; preds = %if.then, %for.body
  %9 = phi i64 [ %7, %for.body ], [ %22, %if.then ], !dbg !6119
  %10 = phi i64 [ 1, %for.body ], [ %21, %if.then ], !dbg !6124
    #dbg_value(i64 %9, !6113, !DIExpression(), !6125)
    #dbg_value(i64 %n, !6111, !DIExpression(), !6126)
  %11 = sub i64 %n, 1, !dbg !6127
  %12 = icmp slt i64 %9, %11, !dbg !6128
  br i1 %12, label %for.body2, label %for.done, !dbg !6120

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6129)
    #dbg_value(i64 %9, !6113, !DIExpression(), !6130)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6131
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6131
  %13 = icmp uge i64 %9, %indexaddr.len, !dbg !6131
  br i1 %13, label %lookup.throw, label %lookup.next, !dbg !6131

lookup.next:                                      ; preds = %for.body2
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %9, !dbg !6131
  %15 = load i64, ptr %14, align 8, !dbg !6131
    #dbg_value({ ptr, i64, i64 } %2, !6110, !DIExpression(), !6132)
    #dbg_value(i64 %9, !6113, !DIExpression(), !6133)
  %16 = add i64 %9, 1, !dbg !6134
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !6135
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !6135
  %17 = icmp uge i64 %16, %indexaddr.len5, !dbg !6135
  br i1 %17, label %lookup.throw6, label %lookup.next7, !dbg !6135

lookup.next7:                                     ; preds = %lookup.next
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %16, !dbg !6135
  %19 = load i64, ptr %18, align 8, !dbg !6135
  %20 = icmp eq i64 %15, %19, !dbg !6136
  br i1 %20, label %if.then, label %for.done, !dbg !6120

if.then:                                          ; preds = %lookup.next7
  %21 = add i64 %10, 1, !dbg !6137
    #dbg_value(i64 %21, !6114, !DIExpression(), !6137)
  %22 = add i64 %9, 1, !dbg !6138
    #dbg_value(i64 %22, !6113, !DIExpression(), !6138)
  br label %for.loop1, !dbg !6120

for.done:                                         ; preds = %lookup.next7, %for.loop1
    #dbg_value(i64 %6, !6112, !DIExpression(), !6139)
    #dbg_value(i64 %10, !6114, !DIExpression(), !6140)
  %23 = call i64 @main.max(i64 %6, i64 %10, ptr undef), !dbg !6141
    #dbg_value(i64 %23, !6112, !DIExpression(), !6142)
  %24 = add i64 %9, 1, !dbg !6143
    #dbg_value(i64 %24, !6113, !DIExpression(), !6143)
  br label %for.loop, !dbg !6120

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %6, !6112, !DIExpression(), !6144)
  ret i64 %6, !dbg !6145

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !6131
  unreachable, !dbg !6131

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !6135
  unreachable, !dbg !6135
}
