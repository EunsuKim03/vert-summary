define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4957
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4957
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4957
    #dbg_value(ptr %arr.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4957)
    #dbg_value(i64 %arr.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4957)
    #dbg_value(i64 %arr.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4957)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4957)
    #dbg_value(i64 0, !4953, !DIExpression(), !4958)
    #dbg_value(i64 0, !4954, !DIExpression(), !4959)
  br label %for.loop, !dbg !4960

for.loop:                                         ; preds = %for.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !4958
  %4 = phi i64 [ 0, %entry ], [ %20, %for.done ], !dbg !4959
    #dbg_value(i64 %4, !4954, !DIExpression(), !4961)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4962)
  %5 = icmp slt i64 %4, %n, !dbg !4963
  br i1 %5, label %for.body, label %for.done3, !dbg !4960

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4955, !DIExpression(), !4964)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4965)
    #dbg_value(i64 %4, !4956, !DIExpression(), !4966)
  br label %for.loop1, !dbg !4960

for.loop1:                                        ; preds = %if.done, %for.body
  %6 = phi i64 [ %3, %for.body ], [ %18, %if.done ], !dbg !4958
  %7 = phi i64 [ 0, %for.body ], [ %13, %if.done ], !dbg !4964
  %8 = phi i64 [ %4, %for.body ], [ %19, %if.done ], !dbg !4966
    #dbg_value(i64 %8, !4956, !DIExpression(), !4967)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4968)
  %9 = icmp slt i64 %8, %n, !dbg !4969
  br i1 %9, label %for.body2, label %for.done, !dbg !4960

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4970)
    #dbg_value(i64 %8, !4956, !DIExpression(), !4971)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4972
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4972
  %10 = icmp uge i64 %8, %indexaddr.len, !dbg !4972
  br i1 %10, label %lookup.throw, label %lookup.next, !dbg !4972

lookup.next:                                      ; preds = %for.body2
  %11 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %8, !dbg !4972
  %12 = load i64, ptr %11, align 8, !dbg !4972
  %13 = add i64 %7, %12, !dbg !4973
    #dbg_value(i64 %13, !4955, !DIExpression(), !4973)
    #dbg_value(i64 %13, !4955, !DIExpression(), !4974)
  %14 = icmp eq i64 %13, 0, !dbg !4975
  br i1 %14, label %if.then, label %if.done, !dbg !4960

if.then:                                          ; preds = %lookup.next
    #dbg_value(i64 %6, !4953, !DIExpression(), !4976)
    #dbg_value(i64 %8, !4956, !DIExpression(), !4977)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4978)
  %15 = sub i64 %8, %4, !dbg !4979
  %16 = add i64 %15, 1, !dbg !4980
  %17 = call i64 @main.max(i64 %6, i64 %16, ptr undef), !dbg !4981
    #dbg_value(i64 %17, !4953, !DIExpression(), !4982)
  br label %if.done, !dbg !4960

if.done:                                          ; preds = %if.then, %lookup.next
  %18 = phi i64 [ %6, %lookup.next ], [ %17, %if.then ], !dbg !4958
  %19 = add i64 %8, 1, !dbg !4983
    #dbg_value(i64 %19, !4956, !DIExpression(), !4983)
  br label %for.loop1, !dbg !4960

for.done:                                         ; preds = %for.loop1
  %20 = add i64 %4, 1, !dbg !4984
    #dbg_value(i64 %20, !4954, !DIExpression(), !4984)
  br label %for.loop, !dbg !4960

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %3, !4953, !DIExpression(), !4985)
  ret i64 %3, !dbg !4986

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972
}
