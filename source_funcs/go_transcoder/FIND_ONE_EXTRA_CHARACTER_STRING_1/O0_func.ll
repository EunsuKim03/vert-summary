define i8 @f_gold(ptr nocapture %strA.data, i64 %strA.len, i64 %strA.cap, ptr nocapture %strB.data, i64 %strB.len, i64 %strB.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %strA.data, 0, !dbg !4936
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %strA.len, 1, !dbg !4936
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %strA.cap, 2, !dbg !4936
    #dbg_value(ptr %strA.data, !4932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
    #dbg_value(i64 %strA.len, !4932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4936)
    #dbg_value(i64 %strA.cap, !4932, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4936)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %strB.data, 0, !dbg !4936
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %strB.len, 1, !dbg !4936
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %strB.cap, 2, !dbg !4936
    #dbg_value(ptr %strB.data, !4933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
    #dbg_value(i64 %strB.len, !4933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4936)
    #dbg_value(i64 %strB.cap, !4933, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4936)
    #dbg_value(i64 0, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
    #dbg_value(i64 0, !4935, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %lookup.next, %entry
  %6 = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !4937
  %7 = phi i64 [ 0, %entry ], [ %14, %lookup.next ], !dbg !4938
    #dbg_value(i64 %7, !4935, !DIExpression(), !4941)
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4942)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4943
  %8 = icmp slt i64 %7, %len, !dbg !4944
  br i1 %8, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %7, !4935, !DIExpression(), !4946)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4947
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4947
  %9 = icmp uge i64 %7, %indexaddr.len, !dbg !4947
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4947

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %7, !dbg !4947
  %11 = load i8, ptr %10, align 1, !dbg !4947
  %12 = zext i8 %11 to i64, !dbg !4948
  %13 = xor i64 %6, %12, !dbg !4949
    #dbg_value(i64 %13, !4934, !DIExpression(), !4949)
  %14 = add i64 %7, 1, !dbg !4950
    #dbg_value(i64 %14, !4935, !DIExpression(), !4950)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4935, !DIExpression(), !4951)
  br label %for.loop1, !dbg !4940

for.loop1:                                        ; preds = %lookup.next8, %for.done
  %15 = phi i64 [ %6, %for.done ], [ %22, %lookup.next8 ], !dbg !4937
  %16 = phi i64 [ 0, %for.done ], [ %23, %lookup.next8 ], !dbg !4938
    #dbg_value(i64 %16, !4935, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %5, !4933, !DIExpression(), !4953)
  %len4 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4954
  %17 = icmp slt i64 %16, %len4, !dbg !4955
  br i1 %17, label %for.body2, label %for.done3, !dbg !4940

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %5, !4933, !DIExpression(), !4956)
    #dbg_value(i64 %16, !4935, !DIExpression(), !4957)
  %indexaddr.ptr5 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4958
  %indexaddr.len6 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4958
  %18 = icmp uge i64 %16, %indexaddr.len6, !dbg !4958
  br i1 %18, label %lookup.throw7, label %lookup.next8, !dbg !4958

lookup.next8:                                     ; preds = %for.body2
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr5, i64 %16, !dbg !4958
  %20 = load i8, ptr %19, align 1, !dbg !4958
  %21 = zext i8 %20 to i64, !dbg !4959
  %22 = xor i64 %15, %21, !dbg !4960
    #dbg_value(i64 %22, !4934, !DIExpression(), !4960)
  %23 = add i64 %16, 1, !dbg !4961
    #dbg_value(i64 %23, !4935, !DIExpression(), !4961)
  br label %for.loop1, !dbg !4940

for.done3:                                        ; preds = %for.loop1
    #dbg_value(i64 %15, !4934, !DIExpression(), !4962)
  %24 = trunc i64 %15 to i8, !dbg !4963
  ret i8 %24, !dbg !4964

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4947
  unreachable, !dbg !4947

lookup.throw7:                                    ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958
}
