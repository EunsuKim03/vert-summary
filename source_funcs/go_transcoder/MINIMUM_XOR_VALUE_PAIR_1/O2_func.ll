define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
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
    #dbg_value(i64 9223372036854775807, !4007, !DIExpression(), !4032)
    #dbg_value(i64 0, !4008, !DIExpression(), !4033)
    #dbg_value(i64 0, !4009, !DIExpression(), !4034)
  %2 = add i64 %n.fr, -1
  %3 = icmp sgt i64 %2, 0, !dbg !4035
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4036

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4030
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4030
  %umin7 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4030
  %.not = icmp eq i64 %arr.len, %umin7, !dbg !4030
  br i1 %.not, label %lookup.throw, label %for.body.preheader.split, !dbg !4030

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not8.not = icmp ugt i64 %5, %4, !dbg !4030
  br i1 %.not8.not, label %for.body.preheader.split.split, label %lookup.throw3, !dbg !4037

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  %.pre = load i64, ptr %arr.data, align 8, !dbg !4030
  br label %for.body, !dbg !4030

for.body:                                         ; preds = %for.body.preheader.split.split, %for.body
  %6 = phi i64 [ %11, %for.body ], [ %.pre, %for.body.preheader.split.split ], !dbg !4030
  %7 = phi i64 [ %9, %for.body ], [ 0, %for.body.preheader.split.split ]
  %8 = phi i64 [ %x.y.i, %for.body ], [ 9223372036854775807, %for.body.preheader.split.split ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4038)
    #dbg_value(i64 %7, !4009, !DIExpression(), !4039)
  %9 = add nuw nsw i64 %7, 1, !dbg !4040
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !4037
  %11 = load i64, ptr %10, align 8, !dbg !4037
  %12 = xor i64 %11, %6, !dbg !4041
    #dbg_value(i64 %8, !4007, !DIExpression(), !4042)
    #dbg_value(i64 %12, !4008, !DIExpression(), !4043)
    #dbg_value(i64 %8, !4044, !DIExpression(), !4048)
    #dbg_value(i64 %12, !4047, !DIExpression(), !4050)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %8, i64 %12), !dbg !4051
    #dbg_value(i64 %x.y.i, !4007, !DIExpression(), !4052)
    #dbg_value(i64 %9, !4009, !DIExpression(), !4053)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4054)
  %exitcond.not = icmp eq i64 %9, %2, !dbg !4035
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4036

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %for.body ], !dbg !4032
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4055)
  ret i64 %.lcssa, !dbg !4056

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4030
  unreachable, !dbg !4030

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4037
  unreachable, !dbg !4037
}
