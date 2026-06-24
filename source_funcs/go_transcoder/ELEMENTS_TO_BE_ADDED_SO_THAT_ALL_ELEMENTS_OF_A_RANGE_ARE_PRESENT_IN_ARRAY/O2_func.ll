define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4009)
    #dbg_value(i64 0, !4007, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4011)
    #dbg_value(ptr %arr.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %arr.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %arr.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %arr.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %arr.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4028)
  %n.fr = freeze i64 %n, !dbg !4030
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4031
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = add i64 %n.fr, -1
  %3 = icmp sgt i64 %2, 0, !dbg !4033
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4034

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4030
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4030
  %umin20 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4030
  %.not = icmp eq i64 %arr.len, %umin20, !dbg !4030
  br i1 %.not, label %lookup.throw, label %for.body.preheader.split, !dbg !4030

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not21.not = icmp ugt i64 %5, %4, !dbg !4030
  br i1 %.not21.not, label %for.body.preheader.split.split, label %lookup.throw3, !dbg !4035

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  %.pre = load i64, ptr %arr.data, align 8, !dbg !4030
  br label %for.body, !dbg !4030

for.body:                                         ; preds = %for.body.preheader.split.split, %for.body
  %6 = phi i64 [ %11, %for.body ], [ %.pre, %for.body.preheader.split.split ], !dbg !4030
  %7 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader.split.split ]
  %8 = phi i64 [ %16, %for.body ], [ 0, %for.body.preheader.split.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4036)
    #dbg_value(i64 %7, !4008, !DIExpression(), !4037)
  %9 = add nuw nsw i64 %7, 1, !dbg !4038
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !4035
  %11 = load i64, ptr %10, align 8, !dbg !4035
  %.not5 = icmp eq i64 %6, %11, !dbg !4039
  %12 = add i64 %11, -1
  %.not8 = icmp eq i64 %6, %12
  %or.cond = or i1 %.not5, %.not8, !dbg !4034
  %13 = xor i64 %6, -1, !dbg !4034
  %14 = add i64 %11, %13, !dbg !4034
  %15 = select i1 %or.cond, i64 0, i64 %14, !dbg !4034
  %16 = add i64 %15, %8, !dbg !4034
    #dbg_value(i64 %9, !4008, !DIExpression(), !4040)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4041)
  %exitcond.not = icmp eq i64 %9, %2, !dbg !4033
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %for.body ], !dbg !4010
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4042)
  ret i64 %.lcssa, !dbg !4043

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4030
  unreachable, !dbg !4030

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4035
  unreachable, !dbg !4035
}
