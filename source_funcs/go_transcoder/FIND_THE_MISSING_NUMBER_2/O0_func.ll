define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4942
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4943)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4944
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4944
  %3 = icmp uge i64 0, %indexaddr.len, !dbg !4944
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !4944

lookup.next:                                      ; preds = %entry
  %4 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 0, !dbg !4944
  %5 = load i64, ptr %4, align 8, !dbg !4944
    #dbg_value(i64 %5, !4938, !DIExpression(), !4945)
    #dbg_value(i64 1, !4939, !DIExpression(), !4946)
    #dbg_value(i64 1, !4940, !DIExpression(), !4947)
  br label %for.loop, !dbg !4948

for.loop:                                         ; preds = %lookup.next7, %lookup.next
  %6 = phi i64 [ %5, %lookup.next ], [ %12, %lookup.next7 ], !dbg !4945
  %7 = phi i64 [ 1, %lookup.next ], [ %13, %lookup.next7 ], !dbg !4947
    #dbg_value(i64 %7, !4940, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4950)
  %8 = icmp slt i64 %7, %n, !dbg !4951
  br i1 %8, label %for.body, label %for.done, !dbg !4948

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4938, !DIExpression(), !4952)
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %7, !4940, !DIExpression(), !4954)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4955
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4955
  %9 = icmp uge i64 %7, %indexaddr.len5, !dbg !4955
  br i1 %9, label %lookup.throw6, label %lookup.next7, !dbg !4955

lookup.next7:                                     ; preds = %for.body
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %7, !dbg !4955
  %11 = load i64, ptr %10, align 8, !dbg !4955
  %12 = xor i64 %6, %11, !dbg !4956
    #dbg_value(i64 %12, !4938, !DIExpression(), !4957)
  %13 = add i64 %7, 1, !dbg !4958
    #dbg_value(i64 %13, !4940, !DIExpression(), !4958)
  br label %for.loop, !dbg !4948

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 2, !4941, !DIExpression(), !4959)
  br label %for.loop1, !dbg !4948

for.loop1:                                        ; preds = %for.body2, %for.done
  %14 = phi i64 [ 1, %for.done ], [ %18, %for.body2 ], !dbg !4946
  %15 = phi i64 [ 2, %for.done ], [ %19, %for.body2 ], !dbg !4959
    #dbg_value(i64 %15, !4941, !DIExpression(), !4960)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4961)
  %16 = add i64 %n, 1, !dbg !4962
  %17 = icmp sle i64 %15, %16, !dbg !4963
  br i1 %17, label %for.body2, label %for.done3, !dbg !4948

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %14, !4939, !DIExpression(), !4964)
    #dbg_value(i64 %15, !4941, !DIExpression(), !4965)
  %18 = xor i64 %14, %15, !dbg !4966
    #dbg_value(i64 %18, !4939, !DIExpression(), !4967)
  %19 = add i64 %15, 1, !dbg !4968
    #dbg_value(i64 %19, !4941, !DIExpression(), !4968)
  br label %for.loop1, !dbg !4948

for.done3:                                        ; preds = %for.loop1
    #dbg_value(i64 %6, !4938, !DIExpression(), !4969)
    #dbg_value(i64 %14, !4939, !DIExpression(), !4970)
  %20 = xor i64 %6, %14, !dbg !4971
  ret i64 %20, !dbg !4972

lookup.throw:                                     ; preds = %entry
  call void @runtime.lookupPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

lookup.throw6:                                    ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
