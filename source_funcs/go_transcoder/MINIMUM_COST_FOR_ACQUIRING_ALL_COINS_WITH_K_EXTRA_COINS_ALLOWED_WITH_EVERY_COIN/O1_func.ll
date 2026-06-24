define i64 @f_gold(ptr nocapture %coin.data, i64 %coin.len, i64 %coin.cap, i64 %n, i64 %k) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %coin.data, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %coin.len, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %coin.cap, !4225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %n, !4226, !DIExpression(), !4231)
    #dbg_value(i64 %k, !4227, !DIExpression(), !4231)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4232)
    #dbg_value(ptr %coin.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(i64 %coin.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value(i64 %coin.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4238)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4240)
    #dbg_value(ptr %coin.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4245)
    #dbg_value(i64 %coin.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4245)
    #dbg_value(i64 %coin.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4245)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4247)
    #dbg_value(i64 %coin.len, !4244, !DIExpression(), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4249)
    #dbg_value(i64 %coin.len, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %coin.len, !4244, !DIExpression(), !4251)
    #dbg_value(i64 %coin.len, !4010, !DIExpression(), !4252)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %coin.len, i1 false), !dbg !4252
  %1 = sub nuw nsw i64 64, %0, !dbg !4252
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %coin.data, i64 %coin.len, i64 0, i64 %coin.len, i64 %1), !dbg !4254
    #dbg_value(i64 %n, !4226, !DIExpression(), !4255)
  %2 = sitofp i64 %n to double, !dbg !4256
    #dbg_value(i64 %k, !4227, !DIExpression(), !4257)
  %3 = add i64 %k, 1, !dbg !4258
  %4 = sitofp i64 %3 to double, !dbg !4259
  %5 = fdiv double %2, %4, !dbg !4260
    #dbg_value(double %5, !4261, !DIExpression(), !4267)
  %6 = call double @llvm.ceil.f64(double %5), !dbg !4267
  %abovemin = fcmp oge double %6, 0xC3E0000000000000, !dbg !4269
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !4269
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4269
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4269
  %isnan = fcmp uno double %6, 0.000000e+00, !dbg !4269
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4269
  %normal = fptosi double %6 to i64, !dbg !4269
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4269
    #dbg_value(i64 %7, !4228, !DIExpression(), !4270)
    #dbg_value(i64 0, !4229, !DIExpression(), !4271)
    #dbg_value(i64 0, !4230, !DIExpression(), !4272)
  %8 = add i64 %7, -1
    #dbg_value(i64 0, !4230, !DIExpression(), !4273)
    #dbg_value(i64 %7, !4228, !DIExpression(), !4274)
  %.not3 = icmp slt i64 %8, 0, !dbg !4275
  br i1 %.not3, label %for.done, label %for.body, !dbg !4276

for.body:                                         ; preds = %entry, %lookup.next
  %9 = phi i64 [ %14, %lookup.next ], [ 0, %entry ]
  %10 = phi i64 [ %13, %lookup.next ], [ 0, %entry ]
    #dbg_value(i64 %9, !4230, !DIExpression(), !4273)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4277)
    #dbg_value(i64 %9, !4230, !DIExpression(), !4278)
  %exitcond.not = icmp eq i64 %9, %coin.len, !dbg !4279
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4279

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %coin.data, i64 %9, !dbg !4279
  %12 = load i64, ptr %11, align 8, !dbg !4279
  %13 = add i64 %12, %10, !dbg !4280
    #dbg_value(i64 %13, !4229, !DIExpression(), !4280)
  %14 = add i64 %9, 1, !dbg !4281
    #dbg_value(i64 %14, !4230, !DIExpression(), !4273)
    #dbg_value(i64 %7, !4228, !DIExpression(), !4274)
  %.not = icmp sgt i64 %14, %8, !dbg !4275
  br i1 %.not, label %for.done, label %for.body, !dbg !4276

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !4271
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4282)
  ret i64 %.lcssa, !dbg !4283

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4279
  unreachable, !dbg !4279
}
