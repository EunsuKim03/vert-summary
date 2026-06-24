define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4011)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4011)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4011)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4011)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4012)
    #dbg_value(ptr %arr.data, !4013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4018)
    #dbg_value(i64 %arr.len, !4013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4018)
    #dbg_value(i64 %arr.cap, !4013, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4018)
    #dbg_value({ ptr, i64, i64 } poison, !4013, !DIExpression(), !4020)
    #dbg_value(ptr %arr.data, !4021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4025)
    #dbg_value(i64 %arr.len, !4021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4025)
    #dbg_value(i64 %arr.cap, !4021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4025)
    #dbg_value({ ptr, i64, i64 } poison, !4021, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !4024, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4029)
  %n.fr = freeze i64 %n, !dbg !4031
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4029
  %1 = sub nuw nsw i64 64, %0, !dbg !4029
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4032
    #dbg_value(i64 0, !4007, !DIExpression(), !4033)
    #dbg_value(i64 0, !4008, !DIExpression(), !4034)
    #dbg_value(i64 %n, !4009, !DIExpression(), !4035)
    #dbg_value(i64 0, !4010, !DIExpression(), !4036)
  %2 = add i64 %n.fr, -1
  %3 = icmp sgt i64 %2, 0, !dbg !4037
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4038

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4031
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4031
  %umin14 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4031
  %.not = icmp eq i64 %arr.len, %umin14, !dbg !4031
  br i1 %.not, label %lookup.throw, label %for.body.preheader.split, !dbg !4031

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not15.not = icmp ugt i64 %5, %4, !dbg !4031
  br i1 %.not15.not, label %for.body.preheader.split.split, label %lookup.throw3, !dbg !4039

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  %.pre = load i64, ptr %arr.data, align 8, !dbg !4031
  br label %for.body, !dbg !4031

for.body:                                         ; preds = %for.body.preheader.split.split, %for.body
  %6 = phi i64 [ %13, %for.body ], [ %.pre, %for.body.preheader.split.split ], !dbg !4031
  %7 = phi i64 [ %11, %for.body ], [ 0, %for.body.preheader.split.split ]
  %8 = phi i64 [ %18, %for.body ], [ %n.fr, %for.body.preheader.split.split ]
  %9 = phi i64 [ %17, %for.body ], [ 0, %for.body.preheader.split.split ]
  %10 = phi i64 [ %16, %for.body ], [ 0, %for.body.preheader.split.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4040)
    #dbg_value(i64 %7, !4010, !DIExpression(), !4041)
  %11 = add nuw nsw i64 %7, 1, !dbg !4042
  %12 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %11, !dbg !4039
  %13 = load i64, ptr %12, align 8, !dbg !4039
  %14 = icmp eq i64 %6, %13, !dbg !4043
  %15 = add i64 %10, 1, !dbg !4038
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %9, i64 %10), !dbg !4038
  %x.y.i5 = tail call i64 @llvm.smin.i64(i64 %8, i64 %10), !dbg !4038
  %16 = select i1 %14, i64 %15, i64 0, !dbg !4038
  %17 = select i1 %14, i64 %9, i64 %x.y.i, !dbg !4038
  %18 = select i1 %14, i64 %8, i64 %x.y.i5, !dbg !4038
    #dbg_value(i64 %11, !4010, !DIExpression(), !4044)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4045)
  %exitcond.not = icmp eq i64 %11, %2, !dbg !4037
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4038

for.done:                                         ; preds = %for.body, %entry
  %.lcssa8 = phi i64 [ 0, %entry ], [ %17, %for.body ], !dbg !4034
  %.lcssa = phi i64 [ %n.fr, %entry ], [ %18, %for.body ], !dbg !4035
    #dbg_value(i64 %.lcssa8, !4008, !DIExpression(), !4046)
    #dbg_value(i64 %.lcssa, !4009, !DIExpression(), !4047)
  %19 = sub i64 %.lcssa8, %.lcssa, !dbg !4048
  ret i64 %19, !dbg !4049

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4031
  unreachable, !dbg !4031

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4039
  unreachable, !dbg !4039
}
