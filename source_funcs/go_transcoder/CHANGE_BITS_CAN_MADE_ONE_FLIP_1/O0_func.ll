define i1 @f_gold(ptr nocapture %str.data, i64 %str.len, i64 %str.cap) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %str.data, 0, !dbg !4934
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %str.len, 1, !dbg !4934
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %str.cap, 2, !dbg !4934
    #dbg_value(ptr %str.data, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4934)
    #dbg_value(i64 %str.len, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4934)
    #dbg_value(i64 %str.cap, !4930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4934)
    #dbg_value(i64 0, !4931, !DIExpression(), !4935)
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4936)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4937
    #dbg_value(i64 %len, !4932, !DIExpression(), !4938)
    #dbg_value(i64 0, !4933, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %11, %lookup.next ], !dbg !4935
  %4 = phi i64 [ 0, %entry ], [ %12, %lookup.next ], !dbg !4939
    #dbg_value(i64 %4, !4933, !DIExpression(), !4941)
    #dbg_value(i64 %len, !4932, !DIExpression(), !4942)
  %5 = icmp slt i64 %4, %len, !dbg !4943
  br i1 %5, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4930, !DIExpression(), !4944)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4945)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4946
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4946

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %4, !dbg !4946
  %8 = load i8, ptr %7, align 1, !dbg !4946
  %9 = sub i8 %8, 48, !dbg !4947
  %10 = zext i8 %9 to i64, !dbg !4948
  %11 = add i64 %3, %10, !dbg !4949
    #dbg_value(i64 %11, !4931, !DIExpression(), !4949)
  %12 = add i64 %4, 1, !dbg !4950
    #dbg_value(i64 %12, !4933, !DIExpression(), !4950)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4931, !DIExpression(), !4951)
    #dbg_value(i64 %len, !4932, !DIExpression(), !4952)
  %13 = sub i64 %len, 1, !dbg !4953
  %14 = icmp eq i64 %3, %13, !dbg !4954
  br i1 %14, label %binop.done, label %binop.rhs, !dbg !4940

binop.done:                                       ; preds = %binop.rhs, %for.done
  %15 = phi i1 [ true, %for.done ], [ %16, %binop.rhs ], !dbg !4955
  ret i1 %15, !dbg !4956

binop.rhs:                                        ; preds = %for.done
    #dbg_value(i64 %3, !4931, !DIExpression(), !4957)
  %16 = icmp eq i64 %3, 1, !dbg !4958
  br label %binop.done, !dbg !4940

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946
}
