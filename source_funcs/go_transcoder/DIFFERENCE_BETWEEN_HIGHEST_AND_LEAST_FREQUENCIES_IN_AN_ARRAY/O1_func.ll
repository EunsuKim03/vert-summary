define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4233)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4233)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4233)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4233)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4234)
    #dbg_value(ptr %arr.data, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4240)
    #dbg_value(i64 %arr.len, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4240)
    #dbg_value(i64 %arr.cap, !4235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4240)
    #dbg_value({ ptr, i64, i64 } poison, !4235, !DIExpression(), !4242)
    #dbg_value(ptr %arr.data, !4243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4247)
    #dbg_value(i64 %arr.len, !4243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4247)
    #dbg_value(i64 %arr.cap, !4243, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4247)
    #dbg_value({ ptr, i64, i64 } poison, !4243, !DIExpression(), !4249)
    #dbg_value(i64 %arr.len, !4246, !DIExpression(), !4250)
    #dbg_value({ ptr, i64, i64 } poison, !4243, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4246, !DIExpression(), !4252)
    #dbg_value(i64 %arr.len, !4246, !DIExpression(), !4253)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4254)
  %n.fr = freeze i64 %n, !dbg !4256
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4254
  %1 = sub nuw nsw i64 64, %0, !dbg !4254
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4257
    #dbg_value(i64 0, !4229, !DIExpression(), !4258)
    #dbg_value(i64 0, !4230, !DIExpression(), !4259)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4260)
    #dbg_value(i64 %n, !4231, !DIExpression(), !4261)
    #dbg_value(i64 0, !4232, !DIExpression(), !4262)
  %2 = add i64 %n.fr, -1
    #dbg_value(i64 0, !4232, !DIExpression(), !4263)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4264)
  %3 = icmp sgt i64 %2, 0, !dbg !4265
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4266

for.body.preheader:                               ; preds = %entry
  %4 = add i64 %n.fr, -2, !dbg !4256
  %5 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !4256
  %umin14 = call i64 @llvm.umin.i64(i64 %4, i64 %5), !dbg !4256
  %.not = icmp eq i64 %arr.len, %umin14, !dbg !4256
  %.not15.not = icmp ugt i64 %5, %4, !dbg !4256
  br label %for.body, !dbg !4256

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %6 = phi i64 [ %10, %lookup.next4 ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %19, %lookup.next4 ], [ %n.fr, %for.body.preheader ]
  %8 = phi i64 [ %18, %lookup.next4 ], [ 0, %for.body.preheader ]
  %9 = phi i64 [ %17, %lookup.next4 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %6, !4232, !DIExpression(), !4263)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4267)
    #dbg_value(i64 %6, !4232, !DIExpression(), !4268)
  br i1 %.not, label %lookup.throw, label %lookup.next, !dbg !4256

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4269)
    #dbg_value(i64 %6, !4232, !DIExpression(), !4270)
  br i1 %.not15.not, label %lookup.next4, label %lookup.throw3, !dbg !4271

lookup.next4:                                     ; preds = %lookup.next
  %10 = add nuw nsw i64 %6, 1, !dbg !4272
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !4256
  %12 = load i64, ptr %11, align 8, !dbg !4256
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !4271
  %14 = load i64, ptr %13, align 8, !dbg !4271
  %15 = icmp eq i64 %12, %14, !dbg !4273
  %16 = add i64 %9, 1, !dbg !4266
  %x.y.i = call i64 @llvm.smax.i64(i64 %8, i64 %9), !dbg !4266
  %x.y.i5 = call i64 @llvm.smin.i64(i64 %7, i64 %9), !dbg !4266
  %17 = select i1 %15, i64 %16, i64 0, !dbg !4266
  %18 = select i1 %15, i64 %8, i64 %x.y.i, !dbg !4266
  %19 = select i1 %15, i64 %7, i64 %x.y.i5, !dbg !4266
    #dbg_value(i64 %10, !4232, !DIExpression(), !4263)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4264)
  %exitcond.not = icmp eq i64 %10, %2, !dbg !4265
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4266

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa8 = phi i64 [ 0, %entry ], [ %18, %lookup.next4 ], !dbg !4259
  %.lcssa = phi i64 [ %n.fr, %entry ], [ %19, %lookup.next4 ], !dbg !4261
    #dbg_value(i64 %.lcssa8, !4230, !DIExpression(), !4274)
    #dbg_value(i64 %.lcssa, !4231, !DIExpression(), !4275)
  %20 = sub i64 %.lcssa8, %.lcssa, !dbg !4276
  ret i64 %20, !dbg !4277

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4256
  unreachable, !dbg !4256

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4271
  unreachable, !dbg !4271
}
