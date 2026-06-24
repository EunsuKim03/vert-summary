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
    #dbg_value(i64 0, !4229, !DIExpression(), !4256)
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %2 = icmp sgt i64 %n.fr, 0, !dbg !4259
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4260

for.body.preheader:                               ; preds = %entry
  %3 = add nsw i64 %n.fr, -1, !dbg !4254
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !4254
  br label %for.body, !dbg !4254

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %4 = phi i64 [ %10, %lookup.next ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %9, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %4, !4230, !DIExpression(), !4261)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4262)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4263)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !4254

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4254
  %7 = load i64, ptr %6, align 8, !dbg !4254
    #dbg_value(i64 %4, !4230, !DIExpression(), !4264)
  %8 = mul i64 %7, %4, !dbg !4265
  %9 = add i64 %8, %5, !dbg !4266
    #dbg_value(i64 %9, !4229, !DIExpression(), !4266)
  %10 = add nuw nsw i64 %4, 1, !dbg !4267
    #dbg_value(i64 %10, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %exitcond.not = icmp eq i64 %10, %n.fr, !dbg !4259
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4260

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !4256
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4268)
  ret i64 %.lcssa, !dbg !4269

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4254
  unreachable, !dbg !4254
}
