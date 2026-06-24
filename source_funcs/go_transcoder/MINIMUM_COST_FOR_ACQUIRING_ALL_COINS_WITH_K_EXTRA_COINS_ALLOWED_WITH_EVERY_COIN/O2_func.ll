define i64 @f_gold(ptr nocapture %coin.data, i64 %coin.len, i64 %coin.cap, i64 %n, i64 %k) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %coin.data, !4003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %coin.len, !4003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %coin.cap, !4003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4009)
    #dbg_value(i64 %k, !4005, !DIExpression(), !4009)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4010)
    #dbg_value(ptr %coin.data, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4016)
    #dbg_value(i64 %coin.len, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4016)
    #dbg_value(i64 %coin.cap, !4011, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4016)
    #dbg_value({ ptr, i64, i64 } poison, !4011, !DIExpression(), !4018)
    #dbg_value(ptr %coin.data, !4019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4023)
    #dbg_value(i64 %coin.len, !4019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4023)
    #dbg_value(i64 %coin.cap, !4019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4023)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4025)
    #dbg_value(i64 %coin.len, !4022, !DIExpression(), !4026)
    #dbg_value(i64 %coin.len, !3804, !DIExpression(), !4027)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %coin.len, i1 false), !dbg !4027
  %1 = sub nuw nsw i64 64, %0, !dbg !4027
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %coin.data, i64 %coin.len, i64 0, i64 %coin.len, i64 %1), !dbg !4029
  %2 = sitofp i64 %n to double, !dbg !4030
  %3 = add i64 %k, 1, !dbg !4031
  %4 = sitofp i64 %3 to double, !dbg !4032
  %5 = fdiv double %2, %4, !dbg !4033
    #dbg_value(double %5, !4034, !DIExpression(), !4040)
  %6 = tail call double @llvm.ceil.f64(double %5), !dbg !4040
  %abovemin = fcmp oge double %6, 0xC3E0000000000000, !dbg !4042
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !4042
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4042
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4042
  %isnan = fcmp uno double %6, 0.000000e+00, !dbg !4042
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4042
  %normal = fptosi double %6 to i64, !dbg !4042
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4042
    #dbg_value(i64 %7, !4006, !DIExpression(), !4043)
    #dbg_value(i64 0, !4007, !DIExpression(), !4044)
    #dbg_value(i64 0, !4008, !DIExpression(), !4045)
  %8 = add i64 %7, -1
  %.not3 = icmp slt i64 %8, 0, !dbg !4046
  br i1 %.not3, label %for.done, label %for.body, !dbg !4047

for.body:                                         ; preds = %entry, %lookup.next
  %9 = phi i64 [ %14, %lookup.next ], [ 0, %entry ]
  %10 = phi i64 [ %13, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4048)
    #dbg_value(i64 %9, !4008, !DIExpression(), !4049)
  %exitcond.not = icmp eq i64 %9, %coin.len, !dbg !4050
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4050

lookup.next:                                      ; preds = %for.body
  %11 = getelementptr inbounds i64, ptr %coin.data, i64 %9, !dbg !4050
  %12 = load i64, ptr %11, align 8, !dbg !4050
  %13 = add i64 %12, %10, !dbg !4051
    #dbg_value(i64 %13, !4007, !DIExpression(), !4051)
  %14 = add i64 %9, 1, !dbg !4052
    #dbg_value(i64 %14, !4008, !DIExpression(), !4053)
    #dbg_value(i64 %7, !4006, !DIExpression(), !4054)
  %.not = icmp sgt i64 %14, %8, !dbg !4046
  br i1 %.not, label %for.done, label %for.body, !dbg !4047

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !4044
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4055)
  ret i64 %.lcssa, !dbg !4056

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4050
  unreachable, !dbg !4050
}
