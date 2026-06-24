define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %K) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr.len, !4003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr.cap, !4003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %N, !4004, !DIExpression(), !4009)
    #dbg_value(i64 %K, !4005, !DIExpression(), !4009)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4010)
    #dbg_value(ptr %arr.data, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4016)
    #dbg_value(i64 %arr.len, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4016)
    #dbg_value(i64 %arr.cap, !4011, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4016)
    #dbg_value({ ptr, i64, i64 } poison, !4011, !DIExpression(), !4018)
    #dbg_value(ptr %arr.data, !4019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4023)
    #dbg_value(i64 %arr.len, !4019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4023)
    #dbg_value(i64 %arr.cap, !4019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4023)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4025)
    #dbg_value(i64 %arr.len, !4022, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4027)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4027
  %1 = sub nuw nsw i64 64, %0, !dbg !4027
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4029
    #dbg_value(i64 9223372036854775807, !4006, !DIExpression(), !4030)
    #dbg_value(i64 0, !4007, !DIExpression(), !4031)
  %2 = sub i64 %N, %K
  %.not8 = icmp slt i64 %2, 0, !dbg !4032
  br i1 %.not8, label %for.done, label %for.body.lr.ph, !dbg !4033

for.body.lr.ph:                                   ; preds = %entry
  %3 = add i64 %K, -1
  br label %for.body, !dbg !4033

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next4
  %4 = phi i64 [ 0, %for.body.lr.ph ], [ %12, %lookup.next4 ]
  %5 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %x.y.i, %lookup.next4 ]
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4034)
    #dbg_value(i64 %4, !4007, !DIExpression(), !4035)
    #dbg_value(i64 %K, !4005, !DIExpression(), !4036)
  %6 = add nuw i64 %3, %4, !dbg !4037
  %.not2 = icmp ult i64 %6, %arr.len, !dbg !4038
  br i1 %.not2, label %lookup.next4, label %lookup.throw, !dbg !4038

lookup.next4:                                     ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4039)
    #dbg_value(i64 %4, !4007, !DIExpression(), !4040)
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !4038
  %8 = load i64, ptr %7, align 8, !dbg !4038
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4041
  %10 = load i64, ptr %9, align 8, !dbg !4041
  %11 = sub i64 %8, %10, !dbg !4042
    #dbg_value(i64 %5, !4006, !DIExpression(), !4043)
    #dbg_value(i64 %11, !4008, !DIExpression(), !4044)
    #dbg_value(i64 %5, !4045, !DIExpression(), !4049)
    #dbg_value(i64 %11, !4048, !DIExpression(), !4051)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %5, i64 %11), !dbg !4052
    #dbg_value(i64 %x.y.i, !4006, !DIExpression(), !4053)
  %12 = add nuw i64 %4, 1, !dbg !4054
    #dbg_value(i64 %12, !4007, !DIExpression(), !4055)
    #dbg_value(i64 %N, !4004, !DIExpression(), !4056)
    #dbg_value(i64 %K, !4005, !DIExpression(), !4057)
  %.not = icmp sgt i64 %12, %2, !dbg !4032
  br i1 %.not, label %for.done, label %for.body, !dbg !4033

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %lookup.next4 ], !dbg !4030
    #dbg_value(i64 %.lcssa, !4006, !DIExpression(), !4058)
  ret i64 %.lcssa, !dbg !4059

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4038
  unreachable, !dbg !4038
}
