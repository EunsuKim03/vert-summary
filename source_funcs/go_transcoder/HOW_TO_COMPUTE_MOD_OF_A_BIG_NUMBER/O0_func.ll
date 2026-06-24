define i64 @f_gold(ptr nocapture %num.data, i64 %num.len, i64 %num.cap, i64 %a) #0 !dbg !4931 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %num.data, 0, !dbg !4940
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %num.len, 1, !dbg !4940
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %num.cap, 2, !dbg !4940
    #dbg_value(ptr %num.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4940)
    #dbg_value(i64 %num.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4940)
    #dbg_value(i64 %num.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4940)
    #dbg_value(i64 %a, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 0, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %divbyzero.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %18, %divbyzero.next ], !dbg !4941
  %4 = phi i64 [ 0, %entry ], [ %19, %divbyzero.next ], !dbg !4942
    #dbg_value(i64 %4, !4939, !DIExpression(), !4944)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4945)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %5 = icmp slt i64 %4, %len, !dbg !4947
  br i1 %5, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4948)
  %6 = mul i64 %3, 10, !dbg !4949
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %7 = icmp uge i64 %4, %indexaddr.len, !dbg !4952
  br i1 %7, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %for.body
  %8 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4952
  %9 = load i8, ptr %8, align 1, !dbg !4952
  %10 = zext i8 %9 to i64, !dbg !4953
  %11 = add i64 %6, %10, !dbg !4954
  %12 = sub i64 %11, 48, !dbg !4955
    #dbg_value(i64 %a, !4937, !DIExpression(), !4956)
  %13 = icmp eq i64 %a, 0, !dbg !4957
  br i1 %13, label %divbyzero.throw, label %divbyzero.next, !dbg !4957

divbyzero.next:                                   ; preds = %lookup.next
  %14 = icmp eq i64 %a, -1, !dbg !4957
  %15 = icmp eq i64 %12, -9223372036854775808, !dbg !4957
  %16 = and i1 %14, %15, !dbg !4957
  %17 = select i1 %16, i64 1, i64 %a, !dbg !4957
  %18 = srem i64 %12, %17, !dbg !4957
    #dbg_value(i64 %18, !4938, !DIExpression(), !4958)
  %19 = add i64 %4, 1, !dbg !4959
    #dbg_value(i64 %19, !4939, !DIExpression(), !4959)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4960)
  ret i64 %3, !dbg !4961

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

divbyzero.throw:                                  ; preds = %lookup.next
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957
}
