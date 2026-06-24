define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %m) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4233)
    #dbg_value(i64 %arr.len, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4233)
    #dbg_value(i64 %arr.cap, !4225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4233)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4233)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4233)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4234)
  %0 = icmp eq i64 %m, 0, !dbg !4235
    #dbg_value(i64 %n, !4226, !DIExpression(), !4236)
  %1 = icmp eq i64 %n, 0
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !4237
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !4237

common.ret:                                       ; preds = %if.done, %entry, %lookup.next16
  %common.ret.op = phi i64 [ %32, %lookup.next16 ], [ 0, %entry ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !4237

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4238)
    #dbg_value(ptr %arr.data, !4239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4244)
    #dbg_value(i64 %arr.len, !4239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4244)
    #dbg_value(i64 %arr.cap, !4239, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4244)
    #dbg_value({ ptr, i64, i64 } poison, !4239, !DIExpression(), !4246)
    #dbg_value(ptr %arr.data, !4247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4251)
    #dbg_value(i64 %arr.len, !4247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4251)
    #dbg_value(i64 %arr.cap, !4247, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4251)
    #dbg_value({ ptr, i64, i64 } poison, !4247, !DIExpression(), !4253)
    #dbg_value(i64 %arr.len, !4250, !DIExpression(), !4254)
    #dbg_value({ ptr, i64, i64 } poison, !4247, !DIExpression(), !4255)
    #dbg_value(i64 %arr.len, !4250, !DIExpression(), !4256)
    #dbg_value(i64 %arr.len, !4250, !DIExpression(), !4257)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4258)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4258
  %3 = sub nuw nsw i64 64, %2, !dbg !4258
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %3), !dbg !4260
    #dbg_value(i64 %n, !4226, !DIExpression(), !4261)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4262)
  %4 = icmp slt i64 %n, %m, !dbg !4263
  br i1 %4, label %common.ret, label %for.loop.preheader, !dbg !4237

for.loop.preheader:                               ; preds = %if.done
  %5 = add i64 %m, -1
    #dbg_value(i64 0, !4231, !DIExpression(), !4264)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4265)
  %6 = icmp slt i64 %5, %n, !dbg !4266
  br i1 %6, label %for.body.lr.ph, label %for.done, !dbg !4237

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %5), !dbg !4237
  %7 = add i64 %umax, 1, !dbg !4237
  %8 = sub i64 %7, %m, !dbg !4237
  %9 = sub i64 %n, %m, !dbg !4237
  %10 = freeze i64 %9, !dbg !4237
  %umin = call i64 @llvm.umin.i64(i64 %arr.len, i64 %8), !dbg !4237
  %umin25 = call i64 @llvm.umin.i64(i64 %10, i64 %umin), !dbg !4237
  %.not26 = icmp eq i64 %8, %umin25, !dbg !4237
  %.not27 = icmp eq i64 %arr.len, %umin25, !dbg !4237
  %11 = add i64 %n, 1, !dbg !4237
  %12 = sub i64 %11, %m, !dbg !4237
  br label %for.body, !dbg !4237

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next8
  %13 = phi i64 [ %5, %for.body.lr.ph ], [ %.reass, %lookup.next8 ]
  %14 = phi i64 [ 0, %for.body.lr.ph ], [ %27, %lookup.next8 ]
  %15 = phi i64 [ 0, %for.body.lr.ph ], [ %26, %lookup.next8 ]
  %16 = phi i64 [ 0, %for.body.lr.ph ], [ %25, %lookup.next8 ]
  %17 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %24, %lookup.next8 ]
    #dbg_value(i64 %14, !4231, !DIExpression(), !4264)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4267)
    #dbg_value(i64 %14, !4231, !DIExpression(), !4268)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4269)
  br i1 %.not26, label %lookup.throw, label %lookup.next, !dbg !4270

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4271)
    #dbg_value(i64 %14, !4231, !DIExpression(), !4272)
  br i1 %.not27, label %lookup.throw7, label %lookup.next8, !dbg !4273

lookup.next8:                                     ; preds = %lookup.next
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %13, !dbg !4270
  %19 = load i64, ptr %18, align 8, !dbg !4270
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %14, !dbg !4273
  %21 = load i64, ptr %20, align 8, !dbg !4273
  %22 = sub i64 %19, %21, !dbg !4274
    #dbg_value(i64 %22, !4232, !DIExpression(), !4275)
    #dbg_value(i64 %17, !4228, !DIExpression(), !4276)
  %23 = icmp slt i64 %22, %17, !dbg !4277
  %24 = call i64 @llvm.smin.i64(i64 %22, i64 %17), !dbg !4237
  %25 = select i1 %23, i64 %14, i64 %16, !dbg !4237
  %26 = select i1 %23, i64 %13, i64 %15, !dbg !4237
  %27 = add i64 %14, 1, !dbg !4278
    #dbg_value(i64 %27, !4231, !DIExpression(), !4264)
    #dbg_value(i64 %m, !4227, !DIExpression(), !4265)
  %.reass = add i64 %14, %m
    #dbg_value(i64 %n, !4226, !DIExpression(), !4279)
  %exitcond.not = icmp eq i64 %27, %12, !dbg !4266
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4237

for.done:                                         ; preds = %lookup.next8, %for.loop.preheader
  %.lcssa19 = phi i64 [ 0, %for.loop.preheader ], [ %25, %lookup.next8 ], !dbg !4280
  %.lcssa = phi i64 [ 0, %for.loop.preheader ], [ %26, %lookup.next8 ], !dbg !4281
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4282)
    #dbg_value(i64 %.lcssa, !4230, !DIExpression(), !4283)
  %.not = icmp ult i64 %.lcssa, %arr.len, !dbg !4284
  br i1 %.not, label %lookup.next12, label %lookup.throw11, !dbg !4284

lookup.next12:                                    ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4285)
    #dbg_value(i64 %.lcssa19, !4229, !DIExpression(), !4286)
  %.not6 = icmp ult i64 %.lcssa19, %arr.len, !dbg !4287
  br i1 %.not6, label %lookup.next16, label %lookup.throw15, !dbg !4287

lookup.next16:                                    ; preds = %lookup.next12
  %28 = getelementptr inbounds i64, ptr %arr.data, i64 %.lcssa, !dbg !4284
  %29 = load i64, ptr %28, align 8, !dbg !4284
  %30 = getelementptr inbounds i64, ptr %arr.data, i64 %.lcssa19, !dbg !4287
  %31 = load i64, ptr %30, align 8, !dbg !4287
  %32 = sub i64 %29, %31, !dbg !4288
  br label %common.ret, !dbg !4289

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4270
  unreachable, !dbg !4270

lookup.throw7:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4273
  unreachable, !dbg !4273

lookup.throw11:                                   ; preds = %for.done
  call fastcc void @runtime.lookupPanic(), !dbg !4284
  unreachable, !dbg !4284

lookup.throw15:                                   ; preds = %lookup.next12
  call fastcc void @runtime.lookupPanic(), !dbg !4287
  unreachable, !dbg !4287
}
