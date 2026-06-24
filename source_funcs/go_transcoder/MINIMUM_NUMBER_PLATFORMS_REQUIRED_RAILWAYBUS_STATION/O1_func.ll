define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, ptr nocapture %dep.data, i64 %dep.len, i64 %dep.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4234)
    #dbg_value(ptr %dep.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(i64 %dep.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(i64 %dep.cap, !4228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4234)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4234)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4235)
    #dbg_value(ptr %arr.data, !4236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4241)
    #dbg_value(i64 %arr.len, !4236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4241)
    #dbg_value(i64 %arr.cap, !4236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4241)
    #dbg_value({ ptr, i64, i64 } poison, !4236, !DIExpression(), !4243)
    #dbg_value(ptr %arr.data, !4244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4248)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4248)
    #dbg_value(i64 %arr.cap, !4244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4247, !DIExpression(), !4251)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4252)
    #dbg_value(i64 %arr.len, !4247, !DIExpression(), !4253)
    #dbg_value(i64 %arr.len, !4247, !DIExpression(), !4254)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4255)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4255
  %1 = sub nuw nsw i64 64, %0, !dbg !4255
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4257
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4258)
    #dbg_value(ptr %dep.data, !4236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4259)
    #dbg_value(i64 %dep.len, !4236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4259)
    #dbg_value(i64 %dep.cap, !4236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4259)
    #dbg_value({ ptr, i64, i64 } poison, !4236, !DIExpression(), !4261)
    #dbg_value(ptr %dep.data, !4244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4262)
    #dbg_value(i64 %dep.len, !4244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4262)
    #dbg_value(i64 %dep.cap, !4244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4262)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4264)
    #dbg_value(i64 %dep.len, !4247, !DIExpression(), !4265)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4266)
    #dbg_value(i64 %dep.len, !4247, !DIExpression(), !4267)
    #dbg_value(i64 %dep.len, !4247, !DIExpression(), !4268)
    #dbg_value(i64 %dep.len, !4010, !DIExpression(), !4269)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %dep.len, i1 false), !dbg !4269
  %3 = sub nuw nsw i64 64, %2, !dbg !4269
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %dep.data, i64 %dep.len, i64 0, i64 %dep.len, i64 %3), !dbg !4271
    #dbg_value(i64 1, !4230, !DIExpression(), !4272)
    #dbg_value(i64 1, !4231, !DIExpression(), !4273)
    #dbg_value(i64 1, !4232, !DIExpression(), !4274)
    #dbg_value(i64 0, !4233, !DIExpression(), !4275)
  %4 = icmp sgt i64 %n, 1
  br i1 %4, label %for.body.lr.ph.preheader, label %for.done, !dbg !4276

for.body.lr.ph.preheader:                         ; preds = %entry
  %umax39 = call i64 @llvm.umax.i64(i64 %arr.len, i64 1), !dbg !4277
  br label %for.body.lr.ph, !dbg !4277

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.preheader, %if.then
  %5 = phi i1 [ %14, %if.then ], [ true, %for.body.lr.ph.preheader ]
  %.ph1228 = phi i64 [ %7, %if.then ], [ 0, %for.body.lr.ph.preheader ]
  %.ph1127 = phi i64 [ %13, %if.then ], [ 1, %for.body.lr.ph.preheader ]
  %.ph1026 = phi i64 [ %spec.select, %if.then ], [ 1, %for.body.lr.ph.preheader ]
  %.ph25 = phi i64 [ %12, %if.then ], [ 1, %for.body.lr.ph.preheader ]
    #dbg_value(i64 %.ph1228, !4233, !DIExpression(), !4278)
    #dbg_value(i64 %.ph1127, !4232, !DIExpression(), !4279)
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %.ph1127
  %exitcond40.not = icmp eq i64 %.ph1127, %umax39
  br i1 %exitcond40.not, label %lookup.throw, label %for.body.preheader, !dbg !4277

for.body.preheader:                               ; preds = %for.body.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.ph1228, i64 %dep.len), !dbg !4280
  br label %for.body, !dbg !4280

for.body:                                         ; preds = %for.body.preheader, %if.else
  %7 = phi i64 [ %17, %if.else ], [ %.ph1228, %for.body.preheader ]
  %8 = phi i64 [ %16, %if.else ], [ %.ph25, %for.body.preheader ]
    #dbg_value(i64 %7, !4233, !DIExpression(), !4278)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4281)
    #dbg_value(i64 %.ph1127, !4232, !DIExpression(), !4282)
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4283)
    #dbg_value(i64 %7, !4233, !DIExpression(), !4284)
  %exitcond.not = icmp eq i64 %7, %umax, !dbg !4280
  br i1 %exitcond.not, label %lookup.throw4, label %lookup.next5, !dbg !4280

lookup.next5:                                     ; preds = %for.body
  %9 = load i64, ptr %6, align 8, !dbg !4277
  %10 = getelementptr inbounds i64, ptr %dep.data, i64 %7, !dbg !4280
  %11 = load i64, ptr %10, align 8, !dbg !4280
  %.not5 = icmp sgt i64 %9, %11, !dbg !4285
  br i1 %.not5, label %if.else, label %if.then, !dbg !4276

if.then:                                          ; preds = %lookup.next5
  %12 = add i64 %8, 1, !dbg !4286
    #dbg_value(i64 %12, !4230, !DIExpression(), !4286)
  %13 = add nuw nsw i64 %.ph1127, 1, !dbg !4287
    #dbg_value(i64 %13, !4232, !DIExpression(), !4287)
    #dbg_value(i64 %.ph1026, !4231, !DIExpression(), !4288)
  %spec.select = call i64 @llvm.smax.i64(i64 %12, i64 %.ph1026), !dbg !4276
  %14 = icmp slt i64 %13, %n
    #dbg_value(i64 %7, !4233, !DIExpression(), !4278)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4289)
  %15 = icmp slt i64 %7, %n
  %or.cond22 = and i1 %14, %15, !dbg !4276
  br i1 %or.cond22, label %for.body.lr.ph, label %for.done, !dbg !4276

if.else:                                          ; preds = %lookup.next5
  %16 = add i64 %8, -1, !dbg !4290
    #dbg_value(i64 %16, !4230, !DIExpression(), !4290)
  %17 = add i64 %7, 1, !dbg !4291
    #dbg_value(i64 %.ph1127, !4232, !DIExpression(), !4279)
    #dbg_value(i64 %17, !4233, !DIExpression(), !4278)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4289)
  %18 = icmp slt i64 %17, %n
  %or.cond = select i1 %5, i1 %18, i1 false, !dbg !4276
  br i1 %or.cond, label %for.body, label %for.done, !dbg !4276

for.done:                                         ; preds = %if.then, %if.else, %entry
  %.ph10.lcssa21 = phi i64 [ 1, %entry ], [ %.ph1026, %if.else ], [ %spec.select, %if.then ]
    #dbg_value(i64 %.ph10.lcssa21, !4231, !DIExpression(), !4292)
  ret i64 %.ph10.lcssa21, !dbg !4293

lookup.throw:                                     ; preds = %for.body.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !4277
  unreachable, !dbg !4277

lookup.throw4:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4280
  unreachable, !dbg !4280
}
