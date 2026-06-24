define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %m) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4011)
    #dbg_value(i64 %arr.len, !4003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4011)
    #dbg_value(i64 %arr.cap, !4003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4011)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4011)
    #dbg_value(i64 %m, !4005, !DIExpression(), !4012)
  %0 = icmp eq i64 %m, 0, !dbg !4013
  %1 = icmp eq i64 %n, 0
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !4014
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !4014

common.ret:                                       ; preds = %if.done, %entry, %lookup.next16
  %common.ret.op = phi i64 [ %32, %lookup.next16 ], [ 0, %entry ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !4014

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4015)
    #dbg_value(ptr %arr.data, !4016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4021)
    #dbg_value(i64 %arr.len, !4016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4021)
    #dbg_value(i64 %arr.cap, !4016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4021)
    #dbg_value({ ptr, i64, i64 } poison, !4016, !DIExpression(), !4023)
    #dbg_value(ptr %arr.data, !4024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4028)
    #dbg_value(i64 %arr.len, !4024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4028)
    #dbg_value(i64 %arr.cap, !4024, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4028)
    #dbg_value({ ptr, i64, i64 } poison, !4024, !DIExpression(), !4030)
    #dbg_value(i64 %arr.len, !4027, !DIExpression(), !4031)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4032)
  %2 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4032
  %3 = sub nuw nsw i64 64, %2, !dbg !4032
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %3), !dbg !4034
    #dbg_value(i64 %n, !4004, !DIExpression(), !4035)
    #dbg_value(i64 %m, !4005, !DIExpression(), !4036)
  %4 = icmp slt i64 %n, %m, !dbg !4037
  br i1 %4, label %common.ret, label %for.loop.preheader, !dbg !4014

for.loop.preheader:                               ; preds = %if.done
  %5 = add i64 %m, -1
    #dbg_value(i64 0, !4009, !DIExpression(), !4038)
    #dbg_value(i64 %m, !4005, !DIExpression(), !4039)
  %6 = icmp slt i64 %5, %n, !dbg !4040
  br i1 %6, label %for.body.lr.ph, label %for.done, !dbg !4014

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %5), !dbg !4014
  %7 = add i64 %umax, 1, !dbg !4014
  %8 = sub i64 %7, %m, !dbg !4014
  %9 = sub i64 %n, %m, !dbg !4014
  %10 = freeze i64 %9, !dbg !4014
  %umin = call i64 @llvm.umin.i64(i64 %arr.len, i64 %8), !dbg !4014
  %umin25 = call i64 @llvm.umin.i64(i64 %10, i64 %umin), !dbg !4014
  %.not26 = icmp eq i64 %8, %umin25, !dbg !4014
  %11 = add i64 %n, 1, !dbg !4014
  %12 = sub i64 %11, %m, !dbg !4014
  br i1 %.not26, label %lookup.throw, label %for.body.lr.ph.split, !dbg !4041

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %.not27 = icmp eq i64 %arr.len, %umin25, !dbg !4014
  br i1 %.not27, label %lookup.throw7, label %for.body, !dbg !4042

for.body:                                         ; preds = %for.body.lr.ph.split, %for.body
  %13 = phi i64 [ %.reass, %for.body ], [ %5, %for.body.lr.ph.split ]
  %14 = phi i64 [ %27, %for.body ], [ 0, %for.body.lr.ph.split ]
  %15 = phi i64 [ %26, %for.body ], [ 0, %for.body.lr.ph.split ]
  %16 = phi i64 [ %25, %for.body ], [ 0, %for.body.lr.ph.split ]
  %17 = phi i64 [ %24, %for.body ], [ 9223372036854775807, %for.body.lr.ph.split ]
    #dbg_value(i64 %m, !4005, !DIExpression(), !4043)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4044)
    #dbg_value(i64 %14, !4009, !DIExpression(), !4045)
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %13, !dbg !4041
  %19 = load i64, ptr %18, align 8, !dbg !4041
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %14, !dbg !4042
  %21 = load i64, ptr %20, align 8, !dbg !4042
  %22 = sub i64 %19, %21, !dbg !4046
    #dbg_value(i64 %22, !4010, !DIExpression(), !4047)
    #dbg_value(i64 %17, !4006, !DIExpression(), !4048)
  %23 = icmp slt i64 %22, %17, !dbg !4049
  %24 = tail call i64 @llvm.smin.i64(i64 %22, i64 %17), !dbg !4014
  %25 = select i1 %23, i64 %14, i64 %16, !dbg !4014
  %26 = select i1 %23, i64 %13, i64 %15, !dbg !4014
  %27 = add i64 %14, 1, !dbg !4050
    #dbg_value(i64 %27, !4009, !DIExpression(), !4038)
  %.reass = add i64 %14, %m
    #dbg_value(i64 %n, !4004, !DIExpression(), !4051)
  %exitcond.not = icmp eq i64 %27, %12, !dbg !4040
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4014

for.done:                                         ; preds = %for.body, %for.loop.preheader
  %.lcssa19 = phi i64 [ 0, %for.loop.preheader ], [ %25, %for.body ], !dbg !4052
  %.lcssa = phi i64 [ 0, %for.loop.preheader ], [ %26, %for.body ], !dbg !4053
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4054)
    #dbg_value(i64 %.lcssa, !4008, !DIExpression(), !4055)
  %.not = icmp ult i64 %.lcssa, %arr.len, !dbg !4056
  br i1 %.not, label %lookup.next12, label %lookup.throw11, !dbg !4056

lookup.next12:                                    ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4057)
    #dbg_value(i64 %.lcssa19, !4007, !DIExpression(), !4058)
  %.not6 = icmp ult i64 %.lcssa19, %arr.len, !dbg !4059
  br i1 %.not6, label %lookup.next16, label %lookup.throw15, !dbg !4059

lookup.next16:                                    ; preds = %lookup.next12
  %28 = getelementptr inbounds i64, ptr %arr.data, i64 %.lcssa, !dbg !4056
  %29 = load i64, ptr %28, align 8, !dbg !4056
  %30 = getelementptr inbounds i64, ptr %arr.data, i64 %.lcssa19, !dbg !4059
  %31 = load i64, ptr %30, align 8, !dbg !4059
  %32 = sub i64 %29, %31, !dbg !4060
  br label %common.ret, !dbg !4061

lookup.throw:                                     ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !4041
  unreachable, !dbg !4041

lookup.throw7:                                    ; preds = %for.body.lr.ph.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !4042
  unreachable, !dbg !4042

lookup.throw11:                                   ; preds = %for.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !4056
  unreachable, !dbg !4056

lookup.throw15:                                   ; preds = %lookup.next12
  tail call fastcc void @runtime.lookupPanic(), !dbg !4059
  unreachable, !dbg !4059
}
