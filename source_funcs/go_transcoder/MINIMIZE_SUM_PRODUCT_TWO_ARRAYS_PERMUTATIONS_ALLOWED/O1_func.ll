define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %A.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %A.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %A.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(ptr %B.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %B.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %B.cap, !4228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %A.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %A.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %A.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %A.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %A.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %A.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %A.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %A.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %A.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %A.len, !4010, !DIExpression(), !4253)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !4255
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4256)
    #dbg_value(ptr %B.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
    #dbg_value(i64 %B.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4257)
    #dbg_value(i64 %B.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4257)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4259)
    #dbg_value(ptr %B.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4260)
    #dbg_value(i64 %B.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4260)
    #dbg_value(i64 %B.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4260)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4262)
    #dbg_value(i64 %B.len, !4245, !DIExpression(), !4263)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4264)
    #dbg_value(i64 %B.len, !4245, !DIExpression(), !4265)
    #dbg_value(i64 %B.len, !4245, !DIExpression(), !4266)
    #dbg_value(i64 %B.len, !4010, !DIExpression(), !4267)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %B.len, i1 false), !dbg !4267
  %3 = sub nuw nsw i64 64, %2, !dbg !4267
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %B.data, i64 %B.len, i64 0, i64 %B.len, i64 %3), !dbg !4269
    #dbg_value(i64 0, !4230, !DIExpression(), !4270)
    #dbg_value(i64 0, !4231, !DIExpression(), !4271)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4272)
  %4 = icmp sgt i64 %n, 0, !dbg !4273
  br i1 %4, label %for.body, label %for.done, !dbg !4274

for.body:                                         ; preds = %entry, %lookup.next4
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
  %6 = phi i64 [ %14, %lookup.next4 ], [ 0, %entry ]
    #dbg_value(i64 %5, !4231, !DIExpression(), !4275)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4276)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4277)
  %exitcond.not = icmp eq i64 %5, %A.len, !dbg !4278
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4278

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4279)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4280)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4281)
  %7 = xor i64 %5, -1, !dbg !4282
  %8 = add nsw i64 %n, %7, !dbg !4282
  %.not2 = icmp ult i64 %8, %B.len, !dbg !4283
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !4283

lookup.next4:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds nuw i64, ptr %A.data, i64 %5, !dbg !4278
  %10 = load i64, ptr %9, align 8, !dbg !4278
  %11 = getelementptr inbounds i64, ptr %B.data, i64 %8, !dbg !4283
  %12 = load i64, ptr %11, align 8, !dbg !4283
  %13 = mul i64 %12, %10, !dbg !4284
  %14 = add i64 %13, %6, !dbg !4285
    #dbg_value(i64 %14, !4230, !DIExpression(), !4285)
  %15 = add nuw nsw i64 %5, 1, !dbg !4286
    #dbg_value(i64 %15, !4231, !DIExpression(), !4275)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4272)
  %exitcond8.not = icmp eq i64 %15, %n, !dbg !4273
  br i1 %exitcond8.not, label %for.done, label %for.body, !dbg !4274

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %lookup.next4 ], !dbg !4270
    #dbg_value(i64 %.lcssa, !4230, !DIExpression(), !4287)
  ret i64 %.lcssa, !dbg !4288

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4278
  unreachable, !dbg !4278

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4283
  unreachable, !dbg !4283
}
