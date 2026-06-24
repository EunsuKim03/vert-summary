define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 0, !4938, !DIExpression(), !4943)
    #dbg_value(i64 0, !4939, !DIExpression(), !4944)
    #dbg_value(i64 0, !4940, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %10, %lookup.next ], !dbg !4945
    #dbg_value(i64 %4, !4940, !DIExpression(), !4947)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4948)
  %5 = icmp slt i64 %4, %n, !dbg !4949
  br i1 %5, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4951)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4952
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4952
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4952
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4952

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4952
  %8 = load i64, ptr %7, align 8, !dbg !4952
  %9 = add i64 %3, %8, !dbg !4953
    #dbg_value(i64 %9, !4938, !DIExpression(), !4953)
  %10 = add i64 %4, 1, !dbg !4954
    #dbg_value(i64 %10, !4940, !DIExpression(), !4954)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4941, !DIExpression(), !4955)
  br label %for.loop1, !dbg !4946

for.loop1:                                        ; preds = %lookup.next11, %for.done
  %11 = phi i64 [ %3, %for.done ], [ %18, %lookup.next11 ], !dbg !4943
  %12 = phi i64 [ 0, %for.done ], [ %23, %lookup.next11 ], !dbg !4944
  %13 = phi i64 [ 0, %for.done ], [ %24, %lookup.next11 ], !dbg !4955
    #dbg_value(i64 %13, !4941, !DIExpression(), !4956)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4957)
  %14 = icmp slt i64 %13, %n, !dbg !4958
  br i1 %14, label %for.body2, label %for.done3, !dbg !4946

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4959)
    #dbg_value(i64 %13, !4941, !DIExpression(), !4960)
  %indexaddr.ptr4 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4961
  %indexaddr.len5 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4961
  %15 = icmp uge i64 %13, %indexaddr.len5, !dbg !4961
  br i1 %15, label %lookup.throw6, label %lookup.next7, !dbg !4961

lookup.next7:                                     ; preds = %for.body2
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr4, i64 %13, !dbg !4961
  %17 = load i64, ptr %16, align 8, !dbg !4961
  %18 = sub i64 %11, %17, !dbg !4962
    #dbg_value(i64 %18, !4938, !DIExpression(), !4962)
    #dbg_value(i64 %12, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %18, !4938, !DIExpression(), !4964)
  %19 = icmp eq i64 %12, %18, !dbg !4965
  br i1 %19, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %lookup.next7
    #dbg_value(i64 %13, !4941, !DIExpression(), !4966)
  ret i64 %13, !dbg !4967

if.done:                                          ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4968)
    #dbg_value(i64 %13, !4941, !DIExpression(), !4969)
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4970
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4970
  %20 = icmp uge i64 %13, %indexaddr.len9, !dbg !4970
  br i1 %20, label %lookup.throw10, label %lookup.next11, !dbg !4970

lookup.next11:                                    ; preds = %if.done
  %21 = getelementptr inbounds i64, ptr %indexaddr.ptr8, i64 %13, !dbg !4970
  %22 = load i64, ptr %21, align 8, !dbg !4970
  %23 = add i64 %12, %22, !dbg !4971
    #dbg_value(i64 %23, !4939, !DIExpression(), !4971)
  %24 = add i64 %13, 1, !dbg !4972
    #dbg_value(i64 %24, !4941, !DIExpression(), !4972)
  br label %for.loop1, !dbg !4946

for.done3:                                        ; preds = %for.loop1
  ret i64 -1, !dbg !4973

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4952
  unreachable, !dbg !4952

lookup.throw6:                                    ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

lookup.throw10:                                   ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970
}
