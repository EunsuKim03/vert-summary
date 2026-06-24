define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr.len, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr.cap, !4225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4231)
    #dbg_value(i64 %k, !4227, !DIExpression(), !4231)
    #dbg_value(i64 0, !4228, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4233)
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
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4255
    #dbg_value(i64 0, !4229, !DIExpression(), !4256)
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4258)
  %2 = icmp sgt i64 %n, 0, !dbg !4259
  br i1 %2, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !4260

for.body.lr.ph.lr.ph:                             ; preds = %entry, %if.then
  %.ph929 = phi i64 [ %12, %if.then ], [ 0, %entry ]
  %.ph828 = phi i64 [ %11, %if.then ], [ 0, %entry ]
  %.ph27 = phi i64 [ %10, %if.then ], [ 0, %entry ]
    #dbg_value(i64 %.ph929, !4230, !DIExpression(), !4261)
  br label %for.body.lr.ph, !dbg !4260

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then1
  %.ph1224 = phi i64 [ %.ph929, %for.body.lr.ph.lr.ph ], [ %4, %if.then1 ]
  %.ph1123 = phi i64 [ %.ph828, %for.body.lr.ph.lr.ph ], [ %15, %if.then1 ]
    #dbg_value(i64 %.ph1224, !4230, !DIExpression(), !4261)
  %.not2 = icmp ult i64 %.ph1123, %arr.len
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph1123
  %umax = call i64 @llvm.umax.i64(i64 %.ph1224, i64 %arr.len), !dbg !4260
  br label %for.body, !dbg !4260

for.body:                                         ; preds = %for.body.lr.ph, %if.else2
  %4 = phi i64 [ %.ph1224, %for.body.lr.ph ], [ %17, %if.else2 ]
    #dbg_value(i64 %4, !4230, !DIExpression(), !4261)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4262)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4263)
  %exitcond.not = icmp eq i64 %4, %umax, !dbg !4264
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4264

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4265)
    #dbg_value(i64 %.ph1123, !4229, !DIExpression(), !4266)
  br i1 %.not2, label %lookup.next6, label %lookup.throw5, !dbg !4267

lookup.next6:                                     ; preds = %lookup.next
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4264
  %6 = load i64, ptr %5, align 8, !dbg !4264
  %7 = load i64, ptr %3, align 8, !dbg !4267
  %8 = sub i64 %6, %7, !dbg !4268
    #dbg_value(i64 %k, !4227, !DIExpression(), !4269)
  %9 = icmp eq i64 %8, %k, !dbg !4270
  br i1 %9, label %if.then, label %lookup.next14, !dbg !4260

if.then:                                          ; preds = %lookup.next6
  %10 = add i64 %.ph27, 1, !dbg !4271
    #dbg_value(i64 %10, !4228, !DIExpression(), !4271)
  %11 = add i64 %.ph1123, 1, !dbg !4272
    #dbg_value(i64 %11, !4229, !DIExpression(), !4272)
  %12 = add i64 %4, 1, !dbg !4273
    #dbg_value(i64 %12, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4258)
  %13 = icmp slt i64 %12, %n, !dbg !4259
  br i1 %13, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !4260

lookup.next14:                                    ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4274)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4275)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4276)
    #dbg_value(i64 %.ph1123, !4229, !DIExpression(), !4277)
    #dbg_value(i64 %k, !4227, !DIExpression(), !4278)
  %14 = icmp sgt i64 %8, %k, !dbg !4279
  br i1 %14, label %if.then1, label %if.else2, !dbg !4260

if.then1:                                         ; preds = %lookup.next14
  %15 = add nuw i64 %.ph1123, 1, !dbg !4280
    #dbg_value(i64 %15, !4229, !DIExpression(), !4280)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4258)
  %16 = icmp slt i64 %4, %n, !dbg !4259
  br i1 %16, label %for.body.lr.ph, label %for.done, !dbg !4260

if.else2:                                         ; preds = %lookup.next14
  %17 = add i64 %4, 1, !dbg !4281
    #dbg_value(i64 %17, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4258)
  %18 = icmp slt i64 %17, %n, !dbg !4259
  br i1 %18, label %for.body, label %for.done, !dbg !4260

for.done:                                         ; preds = %if.then, %if.then1, %if.else2, %entry
  %.ph.lcssa21 = phi i64 [ 0, %entry ], [ %.ph27, %if.else2 ], [ %.ph27, %if.then1 ], [ %10, %if.then ]
    #dbg_value(i64 %.ph.lcssa21, !4228, !DIExpression(), !4282)
  ret i64 %.ph.lcssa21, !dbg !4283

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4264
  unreachable, !dbg !4264

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4267
  unreachable, !dbg !4267
}
