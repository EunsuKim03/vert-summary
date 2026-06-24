define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4942
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4942
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4942
    #dbg_value(ptr %arr.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4942)
    #dbg_value(i64 %arr.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4942)
    #dbg_value(i64 %arr.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4942)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4942)
    #dbg_value(i64 0, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done5, %entry
  %3 = phi i64 [ 0, %entry ], [ %19, %if.done5 ], !dbg !4943
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done5 ], !dbg !4944
    #dbg_value(i64 %4, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %5 = icmp slt i64 %4, %n, !dbg !4948
  br i1 %5, label %for.body, label %for.done6, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4941, !DIExpression(), !4949)
    #dbg_value(i64 0, !4941, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4945

for.loop1:                                        ; preds = %if.done, %for.body
  %6 = phi i64 [ 0, %for.body ], [ %16, %if.done ], !dbg !4949
    #dbg_value(i64 %6, !4941, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4952)
  %7 = icmp slt i64 %6, %n, !dbg !4953
  br i1 %7, label %for.body2, label %for.done, !dbg !4945

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %4, !4940, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4941, !DIExpression(), !4955)
  %8 = icmp ne i64 %4, %6, !dbg !4956
  br i1 %8, label %cond.true, label %if.done, !dbg !4945

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %6, !4941, !DIExpression(), !4958)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %9 = icmp uge i64 %6, %indexaddr.len, !dbg !4959
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !4959

lookup.next:                                      ; preds = %cond.true
  %10 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %6, !dbg !4959
  %11 = load i64, ptr %10, align 8, !dbg !4959
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4961)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %12 = icmp uge i64 %4, %indexaddr.len8, !dbg !4962
  br i1 %12, label %lookup.throw9, label %lookup.next10, !dbg !4962

lookup.next10:                                    ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %4, !dbg !4962
  %14 = load i64, ptr %13, align 8, !dbg !4962
  %15 = icmp eq i64 %11, %14, !dbg !4963
  br i1 %15, label %for.done, label %if.done, !dbg !4945

if.done:                                          ; preds = %lookup.next10, %for.body2
  %16 = add i64 %6, 1, !dbg !4964
    #dbg_value(i64 %16, !4941, !DIExpression(), !4964)
  br label %for.loop1, !dbg !4945

for.done:                                         ; preds = %lookup.next10, %for.loop1
    #dbg_value(i64 %6, !4941, !DIExpression(), !4965)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4966)
  %17 = icmp eq i64 %6, %n, !dbg !4967
  br i1 %17, label %if.then, label %if.done3, !dbg !4945

if.then:                                          ; preds = %for.done
  %18 = add i64 %3, 1, !dbg !4968
    #dbg_value(i64 %18, !4939, !DIExpression(), !4968)
  br label %if.done3, !dbg !4945

if.done3:                                         ; preds = %if.then, %for.done
  %19 = phi i64 [ %3, %for.done ], [ %18, %if.then ], !dbg !4943
    #dbg_value(i64 %19, !4939, !DIExpression(), !4969)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4970)
  %20 = icmp eq i64 %19, %k, !dbg !4971
  br i1 %20, label %if.then4, label %if.done5, !dbg !4945

if.then4:                                         ; preds = %if.done3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4972)
    #dbg_value(i64 %4, !4940, !DIExpression(), !4973)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4974
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4974
  %21 = icmp uge i64 %4, %indexaddr.len12, !dbg !4974
  br i1 %21, label %lookup.throw13, label %lookup.next14, !dbg !4974

lookup.next14:                                    ; preds = %if.then4
  %22 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %4, !dbg !4974
  %23 = load i64, ptr %22, align 8, !dbg !4974
  ret i64 %23, !dbg !4975

if.done5:                                         ; preds = %if.done3
  %24 = add i64 %4, 1, !dbg !4976
    #dbg_value(i64 %24, !4940, !DIExpression(), !4976)
  br label %for.loop, !dbg !4945

for.done6:                                        ; preds = %for.loop
  ret i64 -1, !dbg !4977

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

lookup.throw9:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962

lookup.throw13:                                   ; preds = %if.then4
  call void @runtime.lookupPanic(ptr undef), !dbg !4974
  unreachable, !dbg !4974
}
