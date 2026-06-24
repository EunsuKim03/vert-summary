define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4941
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4941
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4941
    #dbg_value(ptr %a.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %a.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i64 %a.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4941)
    #dbg_value(i64 1, !4938, !DIExpression(), !4942)
    #dbg_value(i64 1, !4939, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %if.then, %entry
  %3 = phi i64 [ 1, %entry ], [ %4, %if.then ], !dbg !4942
  %4 = phi i64 [ 1, %entry ], [ %15, %if.then ], !dbg !4943
    #dbg_value(i64 %4, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4946)
  %5 = icmp sle i64 %4, %n, !dbg !4947
  br i1 %5, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4939, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4949)
  %6 = add i64 %4, 1, !dbg !4950
  %7 = mul i64 %4, %6, !dbg !4951
  %8 = icmp eq i64 %7, -9223372036854775808, !dbg !4952
  %9 = and i1 false, %8, !dbg !4952
  %10 = select i1 %9, i64 1, i64 2, !dbg !4952
  %11 = sdiv i64 %7, %10, !dbg !4952
  %12 = sitofp i64 %11 to double, !dbg !4953
    #dbg_value(double %12, !4940, !DIExpression(), !4954)
    #dbg_value(double %12, !4940, !DIExpression(), !4955)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4956)
  %13 = sitofp i64 %n to double, !dbg !4957
  %14 = fcmp olt double %12, %13, !dbg !4958
  br i1 %14, label %if.then, label %for.done, !dbg !4944

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %4, !4939, !DIExpression(), !4959)
    #dbg_value(i64 %4, !4938, !DIExpression(), !4960)
  %15 = add i64 %4, 1, !dbg !4961
    #dbg_value(i64 %15, !4939, !DIExpression(), !4961)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.body, %for.loop
    #dbg_value(i64 %3, !4938, !DIExpression(), !4962)
  ret i64 %3, !dbg !4963
}
