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
    #dbg_value(i64 0, !4941, !DIExpression(), !4946)
    #dbg_value(i64 0, !4938, !DIExpression(), !4947)
  br label %for.loop, !dbg !4948

for.loop:                                         ; preds = %if.done, %entry
  %3 = phi i64 [ 0, %entry ], [ %23, %if.done ], !dbg !4943
    #dbg_value(i64 %3, !4938, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4950)
  %4 = icmp slt i64 %3, %n, !dbg !4951
  br i1 %4, label %for.body, label %for.done6, !dbg !4948

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4940, !DIExpression(), !4952)
    #dbg_value(i64 0, !4939, !DIExpression(), !4953)
  br label %for.loop1, !dbg !4948

for.loop1:                                        ; preds = %lookup.next, %for.body
  %5 = phi i64 [ 0, %for.body ], [ %12, %lookup.next ], !dbg !4944
  %6 = phi i64 [ 0, %for.body ], [ %11, %lookup.next ], !dbg !4945
    #dbg_value(i64 %5, !4939, !DIExpression(), !4954)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4955)
  %7 = icmp slt i64 %5, %3, !dbg !4956
  br i1 %7, label %for.body2, label %for.done, !dbg !4948

for.body2:                                        ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %5, !4939, !DIExpression(), !4958)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4959
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4959
  %8 = icmp uge i64 %5, %indexaddr.len, !dbg !4959
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !4959

lookup.next:                                      ; preds = %for.body2
  %9 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %5, !dbg !4959
  %10 = load i64, ptr %9, align 8, !dbg !4959
  %11 = add i64 %6, %10, !dbg !4960
    #dbg_value(i64 %11, !4940, !DIExpression(), !4960)
  %12 = add i64 %5, 1, !dbg !4961
    #dbg_value(i64 %12, !4939, !DIExpression(), !4961)
  br label %for.loop1, !dbg !4948

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 0, !4941, !DIExpression(), !4962)
    #dbg_value(i64 %3, !4938, !DIExpression(), !4963)
  %13 = add i64 %3, 1, !dbg !4964
    #dbg_value(i64 %13, !4939, !DIExpression(), !4965)
  br label %for.loop3, !dbg !4948

for.loop3:                                        ; preds = %lookup.next10, %for.done
  %14 = phi i64 [ %13, %for.done ], [ %21, %lookup.next10 ], !dbg !4944
  %15 = phi i64 [ 0, %for.done ], [ %20, %lookup.next10 ], !dbg !4946
    #dbg_value(i64 %14, !4939, !DIExpression(), !4966)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4967)
  %16 = icmp slt i64 %14, %n, !dbg !4968
  br i1 %16, label %for.body4, label %for.done5, !dbg !4948

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4969)
    #dbg_value(i64 %14, !4939, !DIExpression(), !4970)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4971
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4971
  %17 = icmp uge i64 %14, %indexaddr.len8, !dbg !4971
  br i1 %17, label %lookup.throw9, label %lookup.next10, !dbg !4971

lookup.next10:                                    ; preds = %for.body4
  %18 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %14, !dbg !4971
  %19 = load i64, ptr %18, align 8, !dbg !4971
  %20 = add i64 %15, %19, !dbg !4972
    #dbg_value(i64 %20, !4941, !DIExpression(), !4972)
  %21 = add i64 %14, 1, !dbg !4973
    #dbg_value(i64 %21, !4939, !DIExpression(), !4973)
  br label %for.loop3, !dbg !4948

for.done5:                                        ; preds = %for.loop3
    #dbg_value(i64 %6, !4940, !DIExpression(), !4974)
    #dbg_value(i64 %15, !4941, !DIExpression(), !4975)
  %22 = icmp eq i64 %6, %15, !dbg !4976
  br i1 %22, label %if.then, label %if.done, !dbg !4948

if.then:                                          ; preds = %for.done5
    #dbg_value(i64 %3, !4938, !DIExpression(), !4977)
  ret i64 %3, !dbg !4978

if.done:                                          ; preds = %for.done5
  %23 = add i64 %3, 1, !dbg !4979
    #dbg_value(i64 %23, !4938, !DIExpression(), !4979)
  br label %for.loop, !dbg !4948

for.done6:                                        ; preds = %for.loop
  ret i64 -1, !dbg !4980

lookup.throw:                                     ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

lookup.throw9:                                    ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971
}
