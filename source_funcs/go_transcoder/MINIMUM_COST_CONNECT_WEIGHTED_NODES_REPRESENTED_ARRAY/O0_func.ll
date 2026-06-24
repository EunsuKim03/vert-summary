define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #1 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4956
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4956
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4956
    #dbg_value(ptr %a.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4956)
    #dbg_value(i64 %a.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4956)
    #dbg_value(i64 %a.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4956)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4956)
    #dbg_value(i64 9223372036854775807, !4953, !DIExpression(), !4957)
    #dbg_value(i64 0, !4954, !DIExpression(), !4958)
    #dbg_value(i64 0, !4955, !DIExpression(), !4959)
  br label %for.loop, !dbg !4960

for.loop:                                         ; preds = %lookup.next4, %entry
  %3 = phi i64 [ 9223372036854775807, %entry ], [ %10, %lookup.next4 ], !dbg !4957
  %4 = phi i64 [ 0, %entry ], [ %14, %lookup.next4 ], !dbg !4958
  %5 = phi i64 [ 0, %entry ], [ %15, %lookup.next4 ], !dbg !4959
    #dbg_value(i64 %5, !4955, !DIExpression(), !4961)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4962)
  %6 = icmp slt i64 %5, %n, !dbg !4963
  br i1 %6, label %for.body, label %for.done, !dbg !4960

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4964)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4965)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4966
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4966
  %7 = icmp uge i64 %5, %indexaddr.len, !dbg !4966
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4966

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4966
  %9 = load i64, ptr %8, align 8, !dbg !4966
    #dbg_value(i64 %3, !4953, !DIExpression(), !4967)
  %10 = call i64 @main.min(i64 %9, i64 %3, ptr undef), !dbg !4968
    #dbg_value(i64 %10, !4953, !DIExpression(), !4969)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4970)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4971)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4972
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4972
  %11 = icmp uge i64 %5, %indexaddr.len2, !dbg !4972
  br i1 %11, label %lookup.throw3, label %lookup.next4, !dbg !4972

lookup.next4:                                     ; preds = %lookup.next
  %12 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 %5, !dbg !4972
  %13 = load i64, ptr %12, align 8, !dbg !4972
  %14 = add i64 %4, %13, !dbg !4973
    #dbg_value(i64 %14, !4954, !DIExpression(), !4973)
  %15 = add i64 %5, 1, !dbg !4974
    #dbg_value(i64 %15, !4955, !DIExpression(), !4974)
  br label %for.loop, !dbg !4960

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !4975)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4976)
    #dbg_value(i64 %3, !4953, !DIExpression(), !4977)
  %16 = sub i64 %4, %3, !dbg !4978
  %17 = mul i64 %3, %16, !dbg !4979
  ret i64 %17, !dbg !4980

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972
}
