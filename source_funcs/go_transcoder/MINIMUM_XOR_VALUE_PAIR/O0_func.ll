define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #1 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4956
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4956
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4956
    #dbg_value(ptr %arr.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4956)
    #dbg_value(i64 %arr.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4956)
    #dbg_value(i64 %arr.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4956)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4956)
    #dbg_value(i64 9223372036854775807, !4953, !DIExpression(), !4957)
    #dbg_value(i64 0, !4954, !DIExpression(), !4958)
  br label %for.loop, !dbg !4959

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 9223372036854775807, %entry ], [ %7, %for.done ], !dbg !4957
  %4 = phi i64 [ 0, %entry ], [ %19, %for.done ], !dbg !4958
    #dbg_value(i64 %4, !4954, !DIExpression(), !4960)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4961)
  %5 = icmp slt i64 %4, %n, !dbg !4962
  br i1 %5, label %for.body, label %for.done3, !dbg !4959

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4954, !DIExpression(), !4963)
  %6 = add i64 %4, 1, !dbg !4964
    #dbg_value(i64 %6, !4955, !DIExpression(), !4965)
  br label %for.loop1, !dbg !4959

for.loop1:                                        ; preds = %lookup.next7, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %17, %lookup.next7 ], !dbg !4957
  %8 = phi i64 [ %6, %for.body ], [ %18, %lookup.next7 ], !dbg !4965
    #dbg_value(i64 %8, !4955, !DIExpression(), !4966)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4967)
  %9 = icmp slt i64 %8, %n, !dbg !4968
  br i1 %9, label %for.body2, label %for.done, !dbg !4959

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %7, !4953, !DIExpression(), !4969)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4970)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4971)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4972
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4972
  %10 = icmp uge i64 %4, %indexaddr.len, !dbg !4972
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4972

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4972
  %12 = load i64, ptr %11, align 8, !dbg !4972
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4973)
    #dbg_value(i64 %8, !4955, !DIExpression(), !4974)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4975
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4975
  %13 = icmp uge i64 %8, %indexaddr.len5, !dbg !4975
  br i1 %13, label %lookup.throw6, label %lookup.next7, !dbg !4975

lookup.next7:                                     ; preds = %lookup.next
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %8, !dbg !4975
  %15 = load i64, ptr %14, align 8, !dbg !4975
  %16 = xor i64 %12, %15, !dbg !4976
  %17 = call i64 @main.min(i64 %7, i64 %16, ptr undef), !dbg !4977
    #dbg_value(i64 %17, !4953, !DIExpression(), !4978)
  %18 = add i64 %8, 1, !dbg !4979
    #dbg_value(i64 %18, !4955, !DIExpression(), !4979)
  br label %for.loop1, !dbg !4959

for.done:                                         ; preds = %for.loop1
  %19 = add i64 %4, 1, !dbg !4980
    #dbg_value(i64 %19, !4954, !DIExpression(), !4980)
  br label %for.loop, !dbg !4959

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !4981)
  ret i64 %3, !dbg !4982

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972

lookup.throw6:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975
}
