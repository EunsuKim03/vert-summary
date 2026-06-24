define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4231)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4232)
    #dbg_value(ptr %arr.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(i64 %arr.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value(i64 %arr.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4238)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4240)
    #dbg_value(ptr %arr.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4245)
    #dbg_value(i64 %arr.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4245)
    #dbg_value(i64 %arr.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4245)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4247)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4249)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4252)
  %n.fr = freeze i64 %n, !dbg !4254
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4252
  %1 = sub nuw nsw i64 64, %0, !dbg !4252
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4255
    #dbg_value(i64 1, !4229, !DIExpression(), !4256)
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
  %2 = add i64 %n.fr, -1
    #dbg_value(i64 0, !4230, !DIExpression(), !4258)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %3 = icmp sgt i64 %2, 0, !dbg !4260
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4261

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4254
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4254
  %umin8 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4254
  %.not = icmp eq i64 %arr.len, %umin8, !dbg !4254
  %.not9.not = icmp ugt i64 %5, %4, !dbg !4254
  br label %for.body, !dbg !4254

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %6 = phi i64 [ %8, %lookup.next4 ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %spec.select, %lookup.next4 ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %6, !4230, !DIExpression(), !4258)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4262)
    #dbg_value(i64 %6, !4230, !DIExpression(), !4263)
  br i1 %.not, label %lookup.throw, label %lookup.next, !dbg !4254

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4264)
    #dbg_value(i64 %6, !4230, !DIExpression(), !4265)
  br i1 %.not9.not, label %lookup.next4, label %lookup.throw3, !dbg !4266

lookup.next4:                                     ; preds = %lookup.next
  %8 = add nuw nsw i64 %6, 1, !dbg !4267
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !4254
  %10 = load i64, ptr %9, align 8, !dbg !4254
  %11 = add i64 %10, 1, !dbg !4268
  %12 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !4266
  %13 = load i64, ptr %12, align 8, !dbg !4266
  %.not3 = icmp ne i64 %11, %13, !dbg !4269
  %14 = zext i1 %.not3 to i64, !dbg !4261
  %spec.select = add i64 %7, %14, !dbg !4261
    #dbg_value(i64 %8, !4230, !DIExpression(), !4258)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %exitcond.not = icmp eq i64 %8, %2, !dbg !4260
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4261

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %spec.select, %lookup.next4 ], !dbg !4256
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4270)
  ret i64 %.lcssa, !dbg !4271

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4254
  unreachable, !dbg !4254

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4266
  unreachable, !dbg !4266
}
