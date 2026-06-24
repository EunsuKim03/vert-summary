define i1 @f_gold(ptr nocapture %a1.data, i64 %a1.len, i64 %a1.cap, ptr nocapture %a2.data, i64 %a2.len, i64 %a2.cap, ptr nocapture %a3.data, i64 %a3.len, i64 %a3.cap, i64 %n1, i64 %n2, i64 %n3, i64 %sum) #0 !dbg !4927 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a1.data, 0, !dbg !4946
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a1.len, 1, !dbg !4946
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a1.cap, 2, !dbg !4946
    #dbg_value(ptr %a1.data, !4936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(i64 %a1.len, !4936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %a1.cap, !4936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
  %3 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a2.data, 0, !dbg !4946
  %4 = insertvalue { ptr, i64, i64 } %3, i64 %a2.len, 1, !dbg !4946
  %5 = insertvalue { ptr, i64, i64 } %4, i64 %a2.cap, 2, !dbg !4946
    #dbg_value(ptr %a2.data, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(i64 %a2.len, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %a2.cap, !4937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
  %6 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a3.data, 0, !dbg !4946
  %7 = insertvalue { ptr, i64, i64 } %6, i64 %a3.len, 1, !dbg !4946
  %8 = insertvalue { ptr, i64, i64 } %7, i64 %a3.cap, 2, !dbg !4946
    #dbg_value(ptr %a3.data, !4938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(i64 %a3.len, !4938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %a3.cap, !4938, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
    #dbg_value(i64 %n1, !4939, !DIExpression(), !4946)
    #dbg_value(i64 %n2, !4940, !DIExpression(), !4946)
    #dbg_value(i64 %n3, !4941, !DIExpression(), !4946)
    #dbg_value(i64 %sum, !4942, !DIExpression(), !4946)
    #dbg_value(i64 0, !4943, !DIExpression(), !4947)
  br label %for.loop, !dbg !4948

for.loop:                                         ; preds = %for.done5, %entry
  %9 = phi i64 [ 0, %entry ], [ %29, %for.done5 ], !dbg !4947
    #dbg_value(i64 %9, !4943, !DIExpression(), !4949)
    #dbg_value(i64 %n1, !4939, !DIExpression(), !4950)
  %10 = icmp slt i64 %9, %n1, !dbg !4951
  br i1 %10, label %for.body, label %for.done6, !dbg !4948

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4944, !DIExpression(), !4952)
  br label %for.loop1, !dbg !4948

for.loop1:                                        ; preds = %for.done, %for.body
  %11 = phi i64 [ 0, %for.body ], [ %28, %for.done ], !dbg !4952
    #dbg_value(i64 %11, !4944, !DIExpression(), !4953)
    #dbg_value(i64 %n2, !4940, !DIExpression(), !4954)
  %12 = icmp slt i64 %11, %n2, !dbg !4955
  br i1 %12, label %for.body2, label %for.done5, !dbg !4948

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 0, !4945, !DIExpression(), !4956)
  br label %for.loop3, !dbg !4948

for.loop3:                                        ; preds = %if.done, %for.body2
  %13 = phi i64 [ 0, %for.body2 ], [ %27, %if.done ], !dbg !4956
    #dbg_value(i64 %13, !4945, !DIExpression(), !4957)
    #dbg_value(i64 %n3, !4941, !DIExpression(), !4958)
  %14 = icmp slt i64 %13, %n3, !dbg !4959
  br i1 %14, label %for.body4, label %for.done, !dbg !4948

for.body4:                                        ; preds = %for.loop3
    #dbg_value({ ptr, i64, i64 } %2, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %9, !4943, !DIExpression(), !4961)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4962
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4962
  %15 = icmp uge i64 %9, %indexaddr.len, !dbg !4962
  br i1 %15, label %lookup.throw, label %lookup.next, !dbg !4962

lookup.next:                                      ; preds = %for.body4
  %16 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %9, !dbg !4962
  %17 = load i64, ptr %16, align 8, !dbg !4962
    #dbg_value({ ptr, i64, i64 } %5, !4937, !DIExpression(), !4963)
    #dbg_value(i64 %11, !4944, !DIExpression(), !4964)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %5, 0, !dbg !4965
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %5, 1, !dbg !4965
  %18 = icmp uge i64 %11, %indexaddr.len8, !dbg !4965
  br i1 %18, label %lookup.throw9, label %lookup.next10, !dbg !4965

lookup.next10:                                    ; preds = %lookup.next
  %19 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %11, !dbg !4965
  %20 = load i64, ptr %19, align 8, !dbg !4965
  %21 = add i64 %17, %20, !dbg !4966
    #dbg_value({ ptr, i64, i64 } %8, !4938, !DIExpression(), !4967)
    #dbg_value(i64 %13, !4945, !DIExpression(), !4968)
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %8, 0, !dbg !4969
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %8, 1, !dbg !4969
  %22 = icmp uge i64 %13, %indexaddr.len12, !dbg !4969
  br i1 %22, label %lookup.throw13, label %lookup.next14, !dbg !4969

lookup.next14:                                    ; preds = %lookup.next10
  %23 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %13, !dbg !4969
  %24 = load i64, ptr %23, align 8, !dbg !4969
  %25 = add i64 %21, %24, !dbg !4970
    #dbg_value(i64 %sum, !4942, !DIExpression(), !4971)
  %26 = icmp eq i64 %25, %sum, !dbg !4972
  br i1 %26, label %if.then, label %if.done, !dbg !4948

if.then:                                          ; preds = %lookup.next14
  ret i1 true, !dbg !4973

if.done:                                          ; preds = %lookup.next14
  %27 = add i64 %13, 1, !dbg !4974
    #dbg_value(i64 %27, !4945, !DIExpression(), !4974)
  br label %for.loop3, !dbg !4948

for.done:                                         ; preds = %for.loop3
  %28 = add i64 %11, 1, !dbg !4975
    #dbg_value(i64 %28, !4944, !DIExpression(), !4975)
  br label %for.loop1, !dbg !4948

for.done5:                                        ; preds = %for.loop1
  %29 = add i64 %9, 1, !dbg !4976
    #dbg_value(i64 %29, !4943, !DIExpression(), !4976)
  br label %for.loop, !dbg !4948

for.done6:                                        ; preds = %for.loop
  ret i1 false, !dbg !4977

lookup.throw:                                     ; preds = %for.body4
  call void @runtime.lookupPanic(ptr undef), !dbg !4962
  unreachable, !dbg !4962

lookup.throw9:                                    ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

lookup.throw13:                                   ; preds = %lookup.next10
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969
}
