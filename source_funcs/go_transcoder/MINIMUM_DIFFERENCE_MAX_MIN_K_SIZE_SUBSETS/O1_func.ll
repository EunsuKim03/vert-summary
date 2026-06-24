define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %K) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr.len, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr.cap, !4225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %N, !4226, !DIExpression(), !4231)
    #dbg_value(i64 %K, !4227, !DIExpression(), !4231)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4232)
    #dbg_value(ptr %arr.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(i64 %arr.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value(i64 %arr.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4238)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4240)
    #dbg_value(ptr %arr.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4245)
    #dbg_value(i64 %arr.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4245)
    #dbg_value(i64 %arr.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4245)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4247)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4249)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4252)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4252
  %1 = sub nuw nsw i64 64, %0, !dbg !4252
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4254
    #dbg_value(i64 9223372036854775807, !4228, !DIExpression(), !4255)
    #dbg_value(i64 0, !4229, !DIExpression(), !4256)
  %2 = sub i64 %N, %K
    #dbg_value(i64 0, !4229, !DIExpression(), !4257)
    #dbg_value(i64 %N, !4226, !DIExpression(), !4258)
    #dbg_value(i64 %K, !4227, !DIExpression(), !4259)
  %.not8 = icmp slt i64 %2, 0, !dbg !4260
  br i1 %.not8, label %for.done, label %for.body.lr.ph, !dbg !4261

for.body.lr.ph:                                   ; preds = %entry
  %3 = add i64 %K, -1
  br label %for.body, !dbg !4261

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next4
  %4 = phi i64 [ 0, %for.body.lr.ph ], [ %12, %lookup.next4 ]
  %5 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %x.y.i, %lookup.next4 ]
    #dbg_value(i64 %4, !4229, !DIExpression(), !4257)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4262)
    #dbg_value(i64 %4, !4229, !DIExpression(), !4263)
    #dbg_value(i64 %K, !4227, !DIExpression(), !4264)
  %6 = add nuw i64 %3, %4, !dbg !4265
  %.not2 = icmp ult i64 %6, %arr.len, !dbg !4266
  br i1 %.not2, label %lookup.next4, label %lookup.throw, !dbg !4266

lookup.next4:                                     ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4267)
    #dbg_value(i64 %4, !4229, !DIExpression(), !4268)
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !4266
  %8 = load i64, ptr %7, align 8, !dbg !4266
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4269
  %10 = load i64, ptr %9, align 8, !dbg !4269
  %11 = sub i64 %8, %10, !dbg !4270
    #dbg_value(i64 %5, !4228, !DIExpression(), !4271)
    #dbg_value(i64 %11, !4230, !DIExpression(), !4272)
    #dbg_value(i64 %5, !4273, !DIExpression(), !4277)
    #dbg_value(i64 %11, !4276, !DIExpression(), !4279)
  %x.y.i = call i64 @llvm.smin.i64(i64 %5, i64 %11), !dbg !4280
    #dbg_value(i64 %x.y.i, !4228, !DIExpression(), !4281)
  %12 = add nuw i64 %4, 1, !dbg !4282
    #dbg_value(i64 %12, !4229, !DIExpression(), !4257)
    #dbg_value(i64 %N, !4226, !DIExpression(), !4258)
    #dbg_value(i64 %K, !4227, !DIExpression(), !4259)
  %.not = icmp sgt i64 %12, %2, !dbg !4260
  br i1 %.not, label %for.done, label %for.body, !dbg !4261

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %lookup.next4 ], !dbg !4255
    #dbg_value(i64 %.lcssa, !4228, !DIExpression(), !4283)
  ret i64 %.lcssa, !dbg !4284

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4266
  unreachable, !dbg !4266
}
