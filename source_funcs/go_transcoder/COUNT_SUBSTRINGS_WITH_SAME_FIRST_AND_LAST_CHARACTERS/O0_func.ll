define i64 @f_gold(ptr nocapture %s.data, i64 %s.len, i64 %s.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %s.data, 0, !dbg !4935
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %s.len, 1, !dbg !4935
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %s.cap, 2, !dbg !4935
    #dbg_value(ptr %s.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %s.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %s.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4935)
    #dbg_value(i64 0, !4931, !DIExpression(), !4936)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4937)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4938
    #dbg_value(i64 %len, !4932, !DIExpression(), !4939)
    #dbg_value(i64 0, !4933, !DIExpression(), !4940)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !4936
  %4 = phi i64 [ 0, %entry ], [ %19, %for.done ], !dbg !4940
    #dbg_value(i64 %4, !4933, !DIExpression(), !4942)
    #dbg_value(i64 %len, !4932, !DIExpression(), !4943)
  %5 = icmp slt i64 %4, %len, !dbg !4944
  br i1 %5, label %for.body, label %for.done3, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4933, !DIExpression(), !4945)
    #dbg_value(i64 %4, !4934, !DIExpression(), !4946)
  br label %for.loop1, !dbg !4941

for.loop1:                                        ; preds = %if.done, %for.body
  %6 = phi i64 [ %3, %for.body ], [ %17, %if.done ], !dbg !4936
  %7 = phi i64 [ %4, %for.body ], [ %18, %if.done ], !dbg !4946
    #dbg_value(i64 %7, !4934, !DIExpression(), !4947)
    #dbg_value(i64 %len, !4932, !DIExpression(), !4948)
  %8 = icmp slt i64 %7, %len, !dbg !4949
  br i1 %8, label %for.body2, label %for.done, !dbg !4941

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4950)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %9 = icmp uge i64 %4, %indexaddr.len, !dbg !4952
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %for.body2
  %10 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4952
  %11 = load i8, ptr %10, align 1, !dbg !4952
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4953)
    #dbg_value(i64 %7, !4934, !DIExpression(), !4954)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %12 = icmp uge i64 %7, %indexaddr.len5, !dbg !4955
  br i1 %12, label %lookup.throw6, label %lookup.next7, !dbg !4955

lookup.next7:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i8, ptr %indexaddr.ptr4, i64 %7, !dbg !4955
  %14 = load i8, ptr %13, align 1, !dbg !4955
  %15 = icmp eq i8 %11, %14, !dbg !4956
  br i1 %15, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %lookup.next7
  %16 = add i64 %6, 1, !dbg !4957
    #dbg_value(i64 %16, !4931, !DIExpression(), !4957)
  br label %if.done, !dbg !4941

if.done:                                          ; preds = %if.then, %lookup.next7
  %17 = phi i64 [ %6, %lookup.next7 ], [ %16, %if.then ], !dbg !4936
  %18 = add i64 %7, 1, !dbg !4958
    #dbg_value(i64 %18, !4934, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4941

for.done:                                         ; preds = %for.loop1
  %19 = add i64 %4, 1, !dbg !4959
    #dbg_value(i64 %19, !4933, !DIExpression(), !4959)
  br label %for.loop, !dbg !4941

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4931, !DIExpression(), !4960)
  ret i64 %3, !dbg !4961

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
