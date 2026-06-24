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
    #dbg_value(i64 9223372036854775807, !4954, !DIExpression(), !4958)
    #dbg_value(i64 0, !4955, !DIExpression(), !4959)
  br label %for.loop, !dbg !4960

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 9223372036854775807, %entry ], [ %11, %if.done ], !dbg !4957
  %4 = phi i64 [ 9223372036854775807, %entry ], [ %12, %if.done ], !dbg !4958
  %5 = phi i64 [ 0, %entry ], [ %13, %if.done ], !dbg !4959
    #dbg_value(i64 %5, !4955, !DIExpression(), !4961)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4962)
  %6 = icmp slt i64 %5, %n, !dbg !4963
  br i1 %6, label %for.body, label %for.done, !dbg !4960

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !4964)
  %7 = icmp sgt i64 %3, 0, !dbg !4965
  br i1 %7, label %if.then, label %if.else, !dbg !4960

if.then:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4966)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4967)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4968
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4968
  %8 = icmp uge i64 %5, %indexaddr.len, !dbg !4968
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4968

lookup.next:                                      ; preds = %if.then
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4968
  %10 = load i64, ptr %9, align 8, !dbg !4968
    #dbg_value(i64 %10, !4953, !DIExpression(), !4969)
  br label %if.done, !dbg !4960

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %11 = phi i64 [ %10, %lookup.next ], [ %17, %lookup.next4 ], !dbg !4957
    #dbg_value(i64 %4, !4954, !DIExpression(), !4970)
    #dbg_value(i64 %11, !4953, !DIExpression(), !4971)
  %12 = call i64 @main.min(i64 %4, i64 %11, ptr undef), !dbg !4972
    #dbg_value(i64 %12, !4954, !DIExpression(), !4973)
  %13 = add i64 %5, 1, !dbg !4974
    #dbg_value(i64 %13, !4955, !DIExpression(), !4974)
  br label %for.loop, !dbg !4960

if.else:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4975)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4976)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4977
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4977
  %14 = icmp uge i64 %5, %indexaddr.len2, !dbg !4977
  br i1 %14, label %lookup.throw3, label %lookup.next4, !dbg !4977

lookup.next4:                                     ; preds = %if.else
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %5, !dbg !4977
  %16 = load i64, ptr %15, align 8, !dbg !4977
  %17 = add i64 %3, %16, !dbg !4978
    #dbg_value(i64 %17, !4953, !DIExpression(), !4978)
  br label %if.done, !dbg !4960

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4954, !DIExpression(), !4979)
  ret i64 %4, !dbg !4980

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !4968
  unreachable, !dbg !4968

lookup.throw3:                                    ; preds = %if.else
  call void @runtime.lookupPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977
}
