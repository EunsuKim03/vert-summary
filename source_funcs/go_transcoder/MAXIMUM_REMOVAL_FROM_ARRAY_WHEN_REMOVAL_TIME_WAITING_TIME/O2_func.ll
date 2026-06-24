define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
    #dbg_value(i64 0, !4007, !DIExpression(), !4011)
    #dbg_value(i64 0, !4008, !DIExpression(), !4012)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4013)
    #dbg_value(ptr %arr.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4019)
    #dbg_value(i64 %arr.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4019)
    #dbg_value(i64 %arr.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4019)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4021)
    #dbg_value(ptr %arr.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4026)
    #dbg_value(i64 %arr.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4026)
    #dbg_value(i64 %arr.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4026)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !4025, !DIExpression(), !4029)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4030)
  %n.fr = freeze i64 %n, !dbg !4032
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4030
  %1 = sub nuw nsw i64 64, %0, !dbg !4030
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4033
    #dbg_value(i64 0, !4009, !DIExpression(), !4034)
  %2 = icmp sgt i64 %n.fr, 0, !dbg !4035
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4036

for.body.preheader:                               ; preds = %entry
  %3 = add nsw i64 %n.fr, -1, !dbg !4032
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !4032
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !4032

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %13, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %12, %for.body ], [ 0, %for.body.preheader ]
  %6 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4037)
    #dbg_value(i64 %4, !4009, !DIExpression(), !4038)
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4032
  %8 = load i64, ptr %7, align 8, !dbg !4032
    #dbg_value(i64 %5, !4008, !DIExpression(), !4039)
  %.not2 = icmp sge i64 %8, %5, !dbg !4040
  %9 = zext i1 %.not2 to i64, !dbg !4036
  %10 = add i64 %6, %9, !dbg !4036
  %11 = select i1 %.not2, i64 %8, i64 0, !dbg !4036
  %12 = add i64 %11, %5, !dbg !4036
  %13 = add nuw nsw i64 %4, 1, !dbg !4041
    #dbg_value(i64 %13, !4009, !DIExpression(), !4042)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4043)
  %exitcond.not = icmp eq i64 %13, %n.fr, !dbg !4035
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4036

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %10, %for.body ], !dbg !4011
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4044)
  ret i64 %.lcssa, !dbg !4045

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4032
  unreachable, !dbg !4032
}
