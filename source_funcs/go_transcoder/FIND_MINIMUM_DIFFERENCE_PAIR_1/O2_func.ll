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
    #dbg_value(i64 9223372036854775807, !4007, !DIExpression(), !4031)
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = add i64 %n.fr, -1
  %3 = icmp sgt i64 %2, 0, !dbg !4033
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4034

for.body.preheader:                               ; preds = %entry
  %4 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4029
  %5 = add i64 %n.fr, -2, !dbg !4029
  %.not.not = icmp ugt i64 %4, %5, !dbg !4029
  br i1 %.not.not, label %for.body.preheader.split, label %lookup.throw, !dbg !4029

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.pre = load i64, ptr %arr.data, align 8, !dbg !4035
  br label %for.body, !dbg !4029

for.body:                                         ; preds = %for.body.preheader.split, %for.body
  %6 = phi i64 [ %11, %for.body ], [ %.pre, %for.body.preheader.split ], !dbg !4035
  %7 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader.split ]
  %8 = phi i64 [ %13, %for.body ], [ 9223372036854775807, %for.body.preheader.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4036)
    #dbg_value(i64 %7, !4008, !DIExpression(), !4037)
  %9 = add nuw nsw i64 %7, 1, !dbg !4038
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !4029
  %11 = load i64, ptr %10, align 8, !dbg !4029
  %12 = sub i64 %11, %6, !dbg !4039
    #dbg_value(i64 %8, !4007, !DIExpression(), !4040)
  %13 = tail call i64 @llvm.smin.i64(i64 %12, i64 %8), !dbg !4034
    #dbg_value(i64 %9, !4008, !DIExpression(), !4041)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4042)
  %exitcond.not = icmp eq i64 %9, %2, !dbg !4033
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %13, %for.body ], !dbg !4031
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4043)
  ret i64 %.lcssa, !dbg !4044

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4029
  unreachable, !dbg !4029
}
