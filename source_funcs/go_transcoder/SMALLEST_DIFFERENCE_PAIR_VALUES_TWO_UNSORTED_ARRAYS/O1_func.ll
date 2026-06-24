define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %m, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %A.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(i64 %A.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(i64 %A.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4234)
    #dbg_value(ptr %B.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(i64 %B.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(i64 %B.cap, !4228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4234)
    #dbg_value(i64 %m, !4229, !DIExpression(), !4234)
    #dbg_value(i64 %n, !4230, !DIExpression(), !4234)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4235)
    #dbg_value(ptr %A.data, !4236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4241)
    #dbg_value(i64 %A.len, !4236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4241)
    #dbg_value(i64 %A.cap, !4236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4241)
    #dbg_value({ ptr, i64, i64 } poison, !4236, !DIExpression(), !4243)
    #dbg_value(ptr %A.data, !4244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4248)
    #dbg_value(i64 %A.len, !4244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4248)
    #dbg_value(i64 %A.cap, !4244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %A.len, !4247, !DIExpression(), !4251)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4252)
    #dbg_value(i64 %A.len, !4247, !DIExpression(), !4253)
    #dbg_value(i64 %A.len, !4247, !DIExpression(), !4254)
    #dbg_value(i64 %A.len, !4010, !DIExpression(), !4255)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !4255
  %1 = sub nuw nsw i64 64, %0, !dbg !4255
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !4257
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4258)
    #dbg_value(ptr %B.data, !4236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4259)
    #dbg_value(i64 %B.len, !4236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4259)
    #dbg_value(i64 %B.cap, !4236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4259)
    #dbg_value({ ptr, i64, i64 } poison, !4236, !DIExpression(), !4261)
    #dbg_value(ptr %B.data, !4244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4262)
    #dbg_value(i64 %B.len, !4244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4262)
    #dbg_value(i64 %B.cap, !4244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4262)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4264)
    #dbg_value(i64 %B.len, !4247, !DIExpression(), !4265)
    #dbg_value({ ptr, i64, i64 } poison, !4244, !DIExpression(), !4266)
    #dbg_value(i64 %B.len, !4247, !DIExpression(), !4267)
    #dbg_value(i64 %B.len, !4247, !DIExpression(), !4268)
    #dbg_value(i64 %B.len, !4010, !DIExpression(), !4269)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %B.len, i1 false), !dbg !4269
  %3 = sub nuw nsw i64 64, %2, !dbg !4269
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %B.data, i64 %B.len, i64 0, i64 %B.len, i64 %3), !dbg !4271
    #dbg_value(i64 0, !4231, !DIExpression(), !4272)
    #dbg_value(i64 0, !4232, !DIExpression(), !4273)
    #dbg_value(i64 9223372036854775807, !4233, !DIExpression(), !4274)
  %4 = icmp sgt i64 %m, 0
  %5 = icmp sgt i64 %n, 0
  %or.cond2022 = select i1 %4, i1 %5, i1 false, !dbg !4275
  br i1 %or.cond2022, label %for.body.lr.ph, label %for.done, !dbg !4275

for.body.lr.ph:                                   ; preds = %entry, %if.then1
  %6 = phi i1 [ %22, %if.then1 ], [ %4, %entry ]
  %.ph1125 = phi i64 [ %19, %if.then1 ], [ 9223372036854775807, %entry ]
  %.ph1024 = phi i64 [ %9, %if.then1 ], [ 0, %entry ]
  %.ph23 = phi i64 [ %21, %if.then1 ], [ 0, %entry ]
    #dbg_value(i64 %.ph1024, !4232, !DIExpression(), !4276)
    #dbg_value(i64 %.ph23, !4231, !DIExpression(), !4277)
  %7 = getelementptr inbounds nuw i64, ptr %A.data, i64 %.ph23
  %exitcond33.not = icmp eq i64 %.ph23, %A.len
  br i1 %exitcond33.not, label %lookup.throw, label %for.body.preheader, !dbg !4278

for.body.preheader:                               ; preds = %for.body.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.ph1024, i64 %B.len), !dbg !4279
  br label %for.body, !dbg !4279

for.body:                                         ; preds = %for.body.preheader, %if.else
  %8 = phi i64 [ %19, %if.else ], [ %.ph1125, %for.body.preheader ]
  %9 = phi i64 [ %24, %if.else ], [ %.ph1024, %for.body.preheader ]
    #dbg_value(i64 %9, !4232, !DIExpression(), !4276)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4280)
    #dbg_value(i64 %.ph23, !4231, !DIExpression(), !4281)
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4282)
    #dbg_value(i64 %9, !4232, !DIExpression(), !4283)
  %exitcond.not = icmp eq i64 %9, %umax, !dbg !4279
  br i1 %exitcond.not, label %lookup.throw4, label %lookup.next5, !dbg !4279

lookup.next5:                                     ; preds = %for.body
  %10 = load i64, ptr %7, align 8, !dbg !4278
  %11 = getelementptr inbounds i64, ptr %B.data, i64 %9, !dbg !4279
  %12 = load i64, ptr %11, align 8, !dbg !4279
  %13 = sub i64 %10, %12, !dbg !4284
  %14 = sitofp i64 %13 to double, !dbg !4285
    #dbg_value(double %14, !4286, !DIExpression(), !4292)
    #dbg_value(double %14, !4286, !DIExpression(), !4294)
  %15 = call double @llvm.fabs.f64(double %14), !dbg !4295
    #dbg_value(i64 %8, !4233, !DIExpression(), !4296)
  %16 = sitofp i64 %8 to double, !dbg !4297
  %17 = fcmp olt double %15, %16, !dbg !4298
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !4275
  %normal = fptosi double %15 to i64, !dbg !4275
  %18 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !4275
  %19 = select i1 %17, i64 %18, i64 %8, !dbg !4275
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4299)
    #dbg_value(i64 %.ph23, !4231, !DIExpression(), !4300)
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4301)
    #dbg_value(i64 %9, !4232, !DIExpression(), !4302)
  %20 = icmp slt i64 %10, %12, !dbg !4303
  br i1 %20, label %if.then1, label %if.else, !dbg !4275

if.then1:                                         ; preds = %lookup.next5
  %21 = add nuw nsw i64 %.ph23, 1, !dbg !4304
    #dbg_value(i64 %21, !4231, !DIExpression(), !4304)
  %22 = icmp slt i64 %21, %m
    #dbg_value(i64 %m, !4229, !DIExpression(), !4305)
    #dbg_value(i64 %9, !4232, !DIExpression(), !4276)
    #dbg_value(i64 %n, !4230, !DIExpression(), !4306)
  %23 = icmp slt i64 %9, %n
  %or.cond20 = select i1 %22, i1 %23, i1 false, !dbg !4275
  br i1 %or.cond20, label %for.body.lr.ph, label %for.done, !dbg !4275

if.else:                                          ; preds = %lookup.next5
  %24 = add i64 %9, 1, !dbg !4307
    #dbg_value(i64 %.ph23, !4231, !DIExpression(), !4277)
    #dbg_value(i64 %m, !4229, !DIExpression(), !4305)
    #dbg_value(i64 %24, !4232, !DIExpression(), !4276)
    #dbg_value(i64 %n, !4230, !DIExpression(), !4306)
  %25 = icmp slt i64 %24, %n
  %or.cond = select i1 %6, i1 %25, i1 false, !dbg !4275
  br i1 %or.cond, label %for.body, label %for.done, !dbg !4275

for.done:                                         ; preds = %if.then1, %if.else, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %19, %if.else ], [ %19, %if.then1 ], !dbg !4274
    #dbg_value(i64 %.lcssa, !4233, !DIExpression(), !4308)
  ret i64 %.lcssa, !dbg !4309

lookup.throw:                                     ; preds = %for.body.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !4278
  unreachable, !dbg !4278

lookup.throw4:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4279
  unreachable, !dbg !4279
}
