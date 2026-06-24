define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4009)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4010)
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
  %n.fr = freeze i64 %n, !dbg !4029
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4027
  %1 = sub nuw nsw i64 64, %0, !dbg !4027
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4030
    #dbg_value(i64 0, !4007, !DIExpression(), !4031)
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = icmp sgt i64 %n.fr, 0, !dbg !4033
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4034

for.body.preheader:                               ; preds = %entry
  %3 = add nsw i64 %n.fr, -1, !dbg !4029
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !4029
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !4029

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4035)
    #dbg_value(i64 %4, !4008, !DIExpression(), !4036)
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4029
  %7 = load i64, ptr %6, align 8, !dbg !4029
  %8 = mul i64 %7, %4, !dbg !4037
  %9 = add i64 %8, %5, !dbg !4038
    #dbg_value(i64 %9, !4007, !DIExpression(), !4038)
  %10 = add nuw nsw i64 %4, 1, !dbg !4039
    #dbg_value(i64 %10, !4008, !DIExpression(), !4040)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4041)
  %exitcond.not = icmp eq i64 %10, %n.fr, !dbg !4033
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %for.body ], !dbg !4031
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4042)
  ret i64 %.lcssa, !dbg !4043

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4029
  unreachable, !dbg !4029
}
