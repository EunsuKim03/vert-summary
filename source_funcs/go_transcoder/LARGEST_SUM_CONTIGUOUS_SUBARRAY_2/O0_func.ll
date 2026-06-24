define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %size) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4956
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4956
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4956
    #dbg_value(ptr %a.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4956)
    #dbg_value(i64 %a.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4956)
    #dbg_value(i64 %a.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4956)
    #dbg_value(i64 %size, !4952, !DIExpression(), !4956)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4957)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4958
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4958
  %3 = icmp uge i64 0, %indexaddr.len, !dbg !4958
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4958

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4958
  %5 = load i64, ptr %4, align 8, !dbg !4958
    #dbg_value(i64 %5, !4953, !DIExpression(), !4959)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4960)
  %indexaddr.ptr1 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len2 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %6 = icmp uge i64 0, %indexaddr.len2, !dbg !4961
  br i1 %6, label %lookup.throw3, label %lookup.next4, !dbg !4961

lookup.next4:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr1, i64 0, !dbg !4961
  %8 = load i64, ptr %7, align 8, !dbg !4961
    #dbg_value(i64 %8, !4954, !DIExpression(), !4962)
    #dbg_value(i64 1, !4955, !DIExpression(), !4963)
  br label %for.loop, !dbg !4964

for.loop:                                         ; preds = %lookup.next12, %lookup.next4
  %9 = phi i64 [ %5, %lookup.next4 ], [ %21, %lookup.next12 ], !dbg !4959
  %10 = phi i64 [ %8, %lookup.next4 ], [ %20, %lookup.next12 ], !dbg !4962
  %11 = phi i64 [ 1, %lookup.next4 ], [ %22, %lookup.next12 ], !dbg !4963
    #dbg_value(i64 %11, !4955, !DIExpression(), !4965)
    #dbg_value(i64 %size, !4952, !DIExpression(), !4966)
  %12 = icmp slt i64 %11, %size, !dbg !4967
  br i1 %12, label %for.body, label %for.done, !dbg !4964

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4968)
    #dbg_value(i64 %11, !4955, !DIExpression(), !4969)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %13 = icmp uge i64 %11, %indexaddr.len6, !dbg !4970
  br i1 %13, label %lookup.throw7, label %lookup.next8, !dbg !4970

lookup.next8:                                     ; preds = %for.body
  %14 = getelementptr inbounds i64, ptr %indexaddr.ptr5, i64 %11, !dbg !4970
  %15 = load i64, ptr %14, align 8, !dbg !4970
    #dbg_value(i64 %10, !4954, !DIExpression(), !4971)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4972)
    #dbg_value(i64 %11, !4955, !DIExpression(), !4973)
  %indexaddr.ptr9 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4974
  %indexaddr.len10 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4974
  %16 = icmp uge i64 %11, %indexaddr.len10, !dbg !4974
  br i1 %16, label %lookup.throw11, label %lookup.next12, !dbg !4974

lookup.next12:                                    ; preds = %lookup.next8
  %17 = getelementptr inbounds i64, ptr %indexaddr.ptr9, i64 %11, !dbg !4974
  %18 = load i64, ptr %17, align 8, !dbg !4974
  %19 = add i64 %10, %18, !dbg !4975
  %20 = call i64 @main.max(i64 %15, i64 %19, ptr undef), !dbg !4976
    #dbg_value(i64 %20, !4954, !DIExpression(), !4977)
    #dbg_value(i64 %9, !4953, !DIExpression(), !4978)
    #dbg_value(i64 %20, !4954, !DIExpression(), !4979)
  %21 = call i64 @main.max(i64 %9, i64 %20, ptr undef), !dbg !4980
    #dbg_value(i64 %21, !4953, !DIExpression(), !4981)
  %22 = add i64 %11, 1, !dbg !4982
    #dbg_value(i64 %22, !4955, !DIExpression(), !4982)
  br label %for.loop, !dbg !4964

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %9, !4953, !DIExpression(), !4983)
  ret i64 %9, !dbg !4984

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

lookup.throw3:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw7:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

lookup.throw11:                                   ; preds = %lookup.next8
  call void @runtime.lookupPanic(ptr undef), !dbg !4974
  unreachable, !dbg !4974
}
