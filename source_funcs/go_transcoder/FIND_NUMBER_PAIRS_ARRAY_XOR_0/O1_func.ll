define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %a.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %a.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %a.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %a.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %a.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %a.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %a.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %a.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %a.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %a.len, !4010, !DIExpression(), !4253)
  %n.fr = freeze i64 %n, !dbg !4255
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %1), !dbg !4256
    #dbg_value(i64 1, !4229, !DIExpression(), !4257)
    #dbg_value(i64 0, !4230, !DIExpression(), !4258)
    #dbg_value(i64 1, !4231, !DIExpression(), !4259)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4260)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !4261
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4262

for.body.preheader:                               ; preds = %entry
  %3 = call i64 @llvm.usub.sat.i64(i64 %a.len, i64 1), !dbg !4255
  %4 = add nsw i64 %n.fr, -2, !dbg !4255
  %.not.not = icmp ugt i64 %3, %4, !dbg !4255
  br label %for.body, !dbg !4255

for.body:                                         ; preds = %for.body.preheader, %if.done
  %5 = phi i64 [ %17, %if.done ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %16, %if.done ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %15, %if.done ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %5, !4231, !DIExpression(), !4263)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4264)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4265)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw, !dbg !4255

lookup.next4:                                     ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4266)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4267)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %5, !dbg !4255
  %9 = load i64, ptr %8, align 8, !dbg !4255
  %10 = getelementptr i64, ptr %a.data, i64 %5, !dbg !4268
  %11 = getelementptr i8, ptr %10, i64 -8, !dbg !4268
  %12 = load i64, ptr %11, align 8, !dbg !4268
  %13 = icmp eq i64 %9, %12, !dbg !4269
  br i1 %13, label %if.then, label %if.else, !dbg !4262

if.then:                                          ; preds = %lookup.next4
  %14 = add i64 %7, 1, !dbg !4270
    #dbg_value(i64 %14, !4229, !DIExpression(), !4270)
  br label %if.done, !dbg !4262

if.done:                                          ; preds = %if.else, %if.then
  %15 = phi i64 [ %14, %if.then ], [ 1, %if.else ], !dbg !4257
  %16 = phi i64 [ %6, %if.then ], [ %21, %if.else ], !dbg !4258
  %17 = add nuw nsw i64 %5, 1, !dbg !4271
    #dbg_value(i64 %17, !4231, !DIExpression(), !4263)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4260)
  %exitcond.not = icmp eq i64 %17, %n.fr, !dbg !4261
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4262

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %6, !4230, !DIExpression(), !4272)
    #dbg_value(i64 %7, !4229, !DIExpression(), !4273)
    #dbg_value(i64 %7, !4229, !DIExpression(), !4274)
  %18 = add i64 %7, -1, !dbg !4275
  %19 = mul i64 %18, %7, !dbg !4276
  %20 = sdiv i64 %19, 2, !dbg !4277
  %21 = add i64 %20, %6, !dbg !4278
    #dbg_value(i64 %21, !4230, !DIExpression(), !4279)
    #dbg_value(i64 1, !4229, !DIExpression(), !4280)
  br label %if.done, !dbg !4262

for.done:                                         ; preds = %if.done, %entry
  %.lcssa7 = phi i64 [ 1, %entry ], [ %15, %if.done ], !dbg !4257
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %if.done ], !dbg !4258
    #dbg_value(i64 %.lcssa, !4230, !DIExpression(), !4281)
    #dbg_value(i64 %.lcssa7, !4229, !DIExpression(), !4282)
    #dbg_value(i64 %.lcssa7, !4229, !DIExpression(), !4283)
  %22 = add i64 %.lcssa7, -1, !dbg !4284
  %23 = mul i64 %22, %.lcssa7, !dbg !4285
  %24 = sdiv i64 %23, 2, !dbg !4286
  %25 = add i64 %24, %.lcssa, !dbg !4287
    #dbg_value(i64 %25, !4230, !DIExpression(), !4288)
    #dbg_value(i64 %25, !4230, !DIExpression(), !4289)
  ret i64 %25, !dbg !4290

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4255
  unreachable, !dbg !4255
}
