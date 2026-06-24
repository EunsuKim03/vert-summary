define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4231)
    #dbg_value(i64 0, !4229, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %arr.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %arr.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %arr.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %arr.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %arr.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %arr.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4253)
  %n.fr = freeze i64 %n, !dbg !4255
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4256
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
  %2 = add i64 %n.fr, -1
    #dbg_value(i64 0, !4230, !DIExpression(), !4258)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %3 = icmp sgt i64 %2, 0, !dbg !4260
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4261

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4255
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4255
  %umin20 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4255
  %.not = icmp eq i64 %arr.len, %umin20, !dbg !4255
  %.not21.not = icmp ugt i64 %5, %4, !dbg !4255
  br label %for.body, !dbg !4255

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %6 = phi i64 [ %8, %lookup.next4 ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %17, %lookup.next4 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %6, !4230, !DIExpression(), !4258)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4262)
    #dbg_value(i64 %6, !4230, !DIExpression(), !4263)
  br i1 %.not, label %lookup.throw, label %lookup.next, !dbg !4255

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4264)
    #dbg_value(i64 %6, !4230, !DIExpression(), !4265)
  br i1 %.not21.not, label %lookup.next4, label %lookup.throw3, !dbg !4266

lookup.next4:                                     ; preds = %lookup.next
  %8 = add nuw nsw i64 %6, 1, !dbg !4267
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !4255
  %10 = load i64, ptr %9, align 8, !dbg !4255
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !4266
  %12 = load i64, ptr %11, align 8, !dbg !4266
  %.not5 = icmp eq i64 %10, %12, !dbg !4268
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4269)
    #dbg_value(i64 %6, !4230, !DIExpression(), !4270)
  %13 = add i64 %12, -1
  %.not8 = icmp eq i64 %10, %13
  %or.cond = or i1 %.not5, %.not8, !dbg !4261
  %14 = xor i64 %10, -1, !dbg !4261
  %15 = add i64 %12, %14, !dbg !4261
  %16 = select i1 %or.cond, i64 0, i64 %15, !dbg !4261
  %17 = add i64 %16, %7, !dbg !4261
    #dbg_value(i64 %8, !4230, !DIExpression(), !4258)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %exitcond.not = icmp eq i64 %8, %2, !dbg !4260
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4261

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %17, %lookup.next4 ], !dbg !4232
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4271)
  ret i64 %.lcssa, !dbg !4272

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4255
  unreachable, !dbg !4255

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4266
  unreachable, !dbg !4266
}
