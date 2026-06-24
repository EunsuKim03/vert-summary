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
    #dbg_value(i64 1, !4007, !DIExpression(), !4031)
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = add i64 %n.fr, -1
  %3 = icmp sgt i64 %2, 0, !dbg !4033
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4034

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4029
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4029
  %umin8 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4029
  %.not = icmp eq i64 %arr.len, %umin8, !dbg !4029
  br i1 %.not, label %lookup.throw, label %for.body.preheader.split, !dbg !4029

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not9.not = icmp ugt i64 %5, %4, !dbg !4029
  br i1 %.not9.not, label %for.body.preheader.split.split, label %lookup.throw3, !dbg !4035

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  %.pre = load i64, ptr %arr.data, align 8, !dbg !4029
  br label %for.body, !dbg !4029

for.body:                                         ; preds = %for.body.preheader.split.split, %for.body
  %6 = phi i64 [ %12, %for.body ], [ %.pre, %for.body.preheader.split.split ], !dbg !4029
  %7 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader.split.split ]
  %8 = phi i64 [ %spec.select, %for.body ], [ 1, %for.body.preheader.split.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4036)
    #dbg_value(i64 %7, !4008, !DIExpression(), !4037)
  %9 = add nuw nsw i64 %7, 1, !dbg !4038
  %10 = add i64 %6, 1, !dbg !4039
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !4035
  %12 = load i64, ptr %11, align 8, !dbg !4035
  %.not3 = icmp ne i64 %10, %12, !dbg !4040
  %13 = zext i1 %.not3 to i64, !dbg !4034
  %spec.select = add i64 %8, %13, !dbg !4034
    #dbg_value(i64 %9, !4008, !DIExpression(), !4041)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4042)
  %exitcond.not = icmp eq i64 %9, %2, !dbg !4033
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %spec.select, %for.body ], !dbg !4031
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4043)
  ret i64 %.lcssa, !dbg !4044

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4029
  unreachable, !dbg !4029

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4035
  unreachable, !dbg !4035
}
