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
    #dbg_value(i64 1, !4229, !DIExpression(), !4258)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4259)
  %2 = icmp eq i64 %arr.len, 0, !dbg !4260
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !4260

lookup.next:                                      ; preds = %entry
  %3 = load i64, ptr %arr.data, align 8, !dbg !4260
    #dbg_value(i64 %3, !4230, !DIExpression(), !4261)
    #dbg_value(i64 1, !4231, !DIExpression(), !4262)
    #dbg_value(i64 1, !4232, !DIExpression(), !4263)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4264)
  %4 = icmp sgt i64 %n.fr, 1, !dbg !4265
  br i1 %4, label %for.body.preheader, label %for.done, !dbg !4266

for.body.preheader:                               ; preds = %lookup.next
  %5 = add i64 %arr.len, -1, !dbg !4256
  %6 = add nsw i64 %n.fr, -2, !dbg !4256
  %umin = call i64 @llvm.umin.i64(i64 %arr.len, i64 %5), !dbg !4256
  %umin33 = call i64 @llvm.umin.i64(i64 %6, i64 %umin), !dbg !4256
  %.not34 = icmp eq i64 %5, %umin33, !dbg !4256
  br label %for.body, !dbg !4256

for.body:                                         ; preds = %for.body.preheader, %lookup.next12
  %7 = phi i64 [ %22, %lookup.next12 ], [ 1, %for.body.preheader ]
  %8 = phi i64 [ %21, %lookup.next12 ], [ 1, %for.body.preheader ]
  %9 = phi i64 [ %20, %lookup.next12 ], [ %3, %for.body.preheader ]
  %10 = phi i64 [ %19, %lookup.next12 ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %7, !4232, !DIExpression(), !4267)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4268)
    #dbg_value(i64 %7, !4232, !DIExpression(), !4269)
  br i1 %.not34, label %lookup.throw7, label %lookup.next12, !dbg !4256

lookup.next12:                                    ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4270)
    #dbg_value(i64 %7, !4232, !DIExpression(), !4271)
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !4256
  %12 = load i64, ptr %11, align 8, !dbg !4256
  %13 = getelementptr i64, ptr %arr.data, i64 %7, !dbg !4272
  %14 = getelementptr i8, ptr %13, i64 -8, !dbg !4272
  %15 = load i64, ptr %14, align 8, !dbg !4272
  %16 = icmp eq i64 %12, %15, !dbg !4273
  %17 = add i64 %8, 1, !dbg !4266
  %18 = icmp sgt i64 %8, %10, !dbg !4266
  %spec.select = call i64 @llvm.smax.i64(i64 %8, i64 %10), !dbg !4266
  %spec.select19 = select i1 %18, i64 %15, i64 %9, !dbg !4266
  %19 = select i1 %16, i64 %10, i64 %spec.select, !dbg !4266
  %20 = select i1 %16, i64 %9, i64 %spec.select19, !dbg !4266
  %21 = select i1 %16, i64 %17, i64 1, !dbg !4266
  %22 = add nuw nsw i64 %7, 1, !dbg !4274
    #dbg_value(i64 %22, !4232, !DIExpression(), !4267)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4264)
  %exitcond.not = icmp eq i64 %22, %n.fr, !dbg !4265
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4266

for.done:                                         ; preds = %lookup.next12, %lookup.next
  %.lcssa25 = phi i64 [ 1, %lookup.next ], [ %19, %lookup.next12 ], !dbg !4258
  %.lcssa22 = phi i64 [ %3, %lookup.next ], [ %20, %lookup.next12 ], !dbg !4261
  %.lcssa = phi i64 [ 1, %lookup.next ], [ %21, %lookup.next12 ], !dbg !4262
    #dbg_value(i64 %.lcssa, !4231, !DIExpression(), !4275)
    #dbg_value(i64 %.lcssa25, !4229, !DIExpression(), !4276)
  %23 = icmp sgt i64 %.lcssa, %.lcssa25, !dbg !4277
  br i1 %23, label %if.then3, label %if.done4, !dbg !4266

if.then3:                                         ; preds = %for.done
    #dbg_value(i64 poison, !4231, !DIExpression(), !4278)
    #dbg_value(i64 poison, !4229, !DIExpression(), !4279)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4280)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4281)
  %24 = add i64 %n.fr, -1, !dbg !4282
  %.not = icmp ult i64 %24, %arr.len, !dbg !4283
  br i1 %.not, label %lookup.next20, label %lookup.throw19, !dbg !4283

lookup.next20:                                    ; preds = %if.then3
  %25 = getelementptr inbounds i64, ptr %arr.data, i64 %24, !dbg !4283
  %26 = load i64, ptr %25, align 8, !dbg !4283
    #dbg_value(i64 %26, !4230, !DIExpression(), !4284)
  br label %if.done4, !dbg !4266

if.done4:                                         ; preds = %lookup.next20, %for.done
  %27 = phi i64 [ %.lcssa22, %for.done ], [ %26, %lookup.next20 ], !dbg !4261
    #dbg_value(i64 %27, !4230, !DIExpression(), !4285)
  ret i64 %27, !dbg !4286

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !4260
  unreachable, !dbg !4260

lookup.throw7:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4256
  unreachable, !dbg !4256

lookup.throw19:                                   ; preds = %if.then3
  call fastcc void @runtime.lookupPanic(), !dbg !4283
  unreachable, !dbg !4283
}
