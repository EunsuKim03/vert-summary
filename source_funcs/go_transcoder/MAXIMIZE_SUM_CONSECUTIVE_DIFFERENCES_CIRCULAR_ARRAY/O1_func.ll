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
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4255
    #dbg_value(i64 0, !4230, !DIExpression(), !4256)
  %2 = sdiv i64 %n, 2
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %3 = icmp sgt i64 %n, 1, !dbg !4259
  br i1 %3, label %for.body, label %for.done, !dbg !4260

for.body:                                         ; preds = %entry, %lookup.next4
  %4 = phi i64 [ %16, %lookup.next4 ], [ 0, %entry ]
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
    #dbg_value(i64 %4, !4230, !DIExpression(), !4257)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4261)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4262)
  %exitcond.not = icmp eq i64 %4, %arr.len, !dbg !4263
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4263

lookup.next:                                      ; preds = %for.body
    #dbg_value(!DIArgList(i64 poison, i64 poison), !4229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value), !4264)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4265)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4266)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4267)
  %6 = xor i64 %4, -1, !dbg !4268
  %7 = add nsw i64 %n, %6, !dbg !4268
  %.not2 = icmp ult i64 %7, %arr.len, !dbg !4269
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !4269

lookup.next4:                                     ; preds = %lookup.next
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4263
  %9 = load i64, ptr %8, align 8, !dbg !4263
    #dbg_value(!DIArgList(i64 %5, i64 %9), !4229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value), !4264)
    #dbg_value(!DIArgList(i64 %5, i64 %9), !4229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value), !4264)
  %10 = shl i64 %9, 1, !dbg !4264
  %11 = sub i64 %5, %10, !dbg !4264
    #dbg_value(i64 %11, !4229, !DIExpression(), !4264)
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %7, !dbg !4269
  %13 = load i64, ptr %12, align 8, !dbg !4269
  %14 = shl i64 %13, 1, !dbg !4270
  %15 = add i64 %11, %14, !dbg !4271
    #dbg_value(i64 %15, !4229, !DIExpression(), !4271)
  %16 = add nuw nsw i64 %4, 1, !dbg !4272
    #dbg_value(i64 %16, !4230, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %exitcond9.not = icmp eq i64 %16, %2, !dbg !4259
  br i1 %exitcond9.not, label %for.done, label %for.body, !dbg !4260

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %15, %lookup.next4 ], !dbg !4232
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4273)
  ret i64 %.lcssa, !dbg !4274

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4263
  unreachable, !dbg !4263

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4269
  unreachable, !dbg !4269
}
