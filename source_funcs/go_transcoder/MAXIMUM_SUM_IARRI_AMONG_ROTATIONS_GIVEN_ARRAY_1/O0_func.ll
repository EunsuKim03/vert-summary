define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) #0 !dbg !4943 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %arr.data, 0, !dbg !4960
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %arr.len, 1, !dbg !4960
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %arr.cap, 2, !dbg !4960
    #dbg_value(ptr %arr.data, !4951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4960)
    #dbg_value(i64 %arr.len, !4951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4960)
    #dbg_value(i64 %arr.cap, !4951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4960)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4960)
    #dbg_value(i64 0, !4953, !DIExpression(), !4961)
    #dbg_value(i64 0, !4954, !DIExpression(), !4962)
  br label %for.loop, !dbg !4963

for.loop:                                         ; preds = %lookup.next, %entry
  %3 = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !4961
  %4 = phi i64 [ 0, %entry ], [ %10, %lookup.next ], !dbg !4962
    #dbg_value(i64 %4, !4954, !DIExpression(), !4964)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4965)
  %5 = icmp slt i64 %4, %n, !dbg !4966
  br i1 %5, label %for.body, label %for.done, !dbg !4963

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4967)
    #dbg_value(i64 %4, !4954, !DIExpression(), !4968)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4969
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4969
  %6 = icmp uge i64 %4, %indexaddr.len, !dbg !4969
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !4969

lookup.next:                                      ; preds = %for.body
  %7 = getelementptr inbounds i64, ptr %indexaddr.ptr, i64 %4, !dbg !4969
  %8 = load i64, ptr %7, align 8, !dbg !4969
  %9 = add i64 %3, %8, !dbg !4970
    #dbg_value(i64 %9, !4953, !DIExpression(), !4970)
  %10 = add i64 %4, 1, !dbg !4971
    #dbg_value(i64 %10, !4954, !DIExpression(), !4971)
  br label %for.loop, !dbg !4963

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4955, !DIExpression(), !4972)
    #dbg_value(i64 0, !4956, !DIExpression(), !4973)
  br label %for.loop1, !dbg !4963

for.loop1:                                        ; preds = %lookup.next10, %for.done
  %11 = phi i64 [ 0, %for.done ], [ %18, %lookup.next10 ], !dbg !4972
  %12 = phi i64 [ 0, %for.done ], [ %19, %lookup.next10 ], !dbg !4973
    #dbg_value(i64 %12, !4956, !DIExpression(), !4974)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4975)
  %13 = icmp slt i64 %12, %n, !dbg !4976
  br i1 %13, label %for.body2, label %for.done3, !dbg !4963

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !4956, !DIExpression(), !4977)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4978)
    #dbg_value(i64 %12, !4956, !DIExpression(), !4979)
  %indexaddr.ptr7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4980
  %indexaddr.len8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4980
  %14 = icmp uge i64 %12, %indexaddr.len8, !dbg !4980
  br i1 %14, label %lookup.throw9, label %lookup.next10, !dbg !4980

lookup.next10:                                    ; preds = %for.body2
  %15 = getelementptr inbounds i64, ptr %indexaddr.ptr7, i64 %12, !dbg !4980
  %16 = load i64, ptr %15, align 8, !dbg !4980
  %17 = mul i64 %12, %16, !dbg !4981
  %18 = add i64 %11, %17, !dbg !4982
    #dbg_value(i64 %18, !4955, !DIExpression(), !4982)
  %19 = add i64 %12, 1, !dbg !4983
    #dbg_value(i64 %19, !4956, !DIExpression(), !4983)
  br label %for.loop1, !dbg !4963

for.done3:                                        ; preds = %for.loop1
    #dbg_value(i64 %11, !4955, !DIExpression(), !4984)
    #dbg_value(i64 %11, !4957, !DIExpression(), !4985)
    #dbg_value(i64 1, !4958, !DIExpression(), !4986)
  br label %for.loop4, !dbg !4963

for.loop4:                                        ; preds = %lookup.next18, %for.done3
  %20 = phi i64 [ %11, %for.done3 ], [ %36, %lookup.next18 ], !dbg !4972
  %21 = phi i64 [ %11, %for.done3 ], [ %37, %lookup.next18 ], !dbg !4985
  %22 = phi i64 [ 1, %for.done3 ], [ %38, %lookup.next18 ], !dbg !4986
    #dbg_value(i64 %22, !4958, !DIExpression(), !4987)
    #dbg_value(i64 %n, !4952, !DIExpression(), !4988)
  %23 = icmp slt i64 %22, %n, !dbg !4989
  br i1 %23, label %for.body5, label %for.done6, !dbg !4963

for.body5:                                        ; preds = %for.loop4
    #dbg_value(i64 %20, !4955, !DIExpression(), !4990)
    #dbg_value(i64 %3, !4953, !DIExpression(), !4991)
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4992)
    #dbg_value(i64 %22, !4958, !DIExpression(), !4993)
  %24 = sub i64 %22, 1, !dbg !4994
  %indexaddr.ptr11 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4995
  %indexaddr.len12 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4995
  %25 = icmp uge i64 %24, %indexaddr.len12, !dbg !4995
  br i1 %25, label %lookup.throw13, label %lookup.next14, !dbg !4995

lookup.next14:                                    ; preds = %for.body5
  %26 = getelementptr inbounds i64, ptr %indexaddr.ptr11, i64 %24, !dbg !4995
  %27 = load i64, ptr %26, align 8, !dbg !4995
  %28 = sub i64 %3, %27, !dbg !4996
  %29 = sub i64 %20, %28, !dbg !4997
    #dbg_value({ ptr, i64, i64 } %2, !4951, !DIExpression(), !4998)
    #dbg_value(i64 %22, !4958, !DIExpression(), !4999)
  %30 = sub i64 %22, 1, !dbg !5000
  %indexaddr.ptr15 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5001
  %indexaddr.len16 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5001
  %31 = icmp uge i64 %30, %indexaddr.len16, !dbg !5001
  br i1 %31, label %lookup.throw17, label %lookup.next18, !dbg !5001

lookup.next18:                                    ; preds = %lookup.next14
  %32 = getelementptr inbounds i64, ptr %indexaddr.ptr15, i64 %30, !dbg !5001
  %33 = load i64, ptr %32, align 8, !dbg !5001
    #dbg_value(i64 %n, !4952, !DIExpression(), !5002)
  %34 = sub i64 %n, 1, !dbg !5003
  %35 = mul i64 %33, %34, !dbg !5004
  %36 = add i64 %29, %35, !dbg !5005
    #dbg_value(i64 %36, !4959, !DIExpression(), !5006)
    #dbg_value(i64 %36, !4959, !DIExpression(), !5007)
    #dbg_value(i64 %36, !4955, !DIExpression(), !5008)
    #dbg_value(i64 %21, !4957, !DIExpression(), !5009)
    #dbg_value(i64 %36, !4959, !DIExpression(), !5010)
  %37 = call i64 @main.max(i64 %21, i64 %36, ptr undef), !dbg !5011
    #dbg_value(i64 %37, !4957, !DIExpression(), !5012)
  %38 = add i64 %22, 1, !dbg !5013
    #dbg_value(i64 %38, !4958, !DIExpression(), !5013)
  br label %for.loop4, !dbg !4963

for.done6:                                        ; preds = %for.loop4
    #dbg_value(i64 %21, !4957, !DIExpression(), !5014)
  ret i64 %21, !dbg !5015

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4969
  unreachable, !dbg !4969

lookup.throw9:                                    ; preds = %for.body2
  call void @runtime.lookupPanic(ptr undef), !dbg !4980
  unreachable, !dbg !4980

lookup.throw13:                                   ; preds = %for.body5
  call void @runtime.lookupPanic(ptr undef), !dbg !4995
  unreachable, !dbg !4995

lookup.throw17:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !5001
  unreachable, !dbg !5001
}
