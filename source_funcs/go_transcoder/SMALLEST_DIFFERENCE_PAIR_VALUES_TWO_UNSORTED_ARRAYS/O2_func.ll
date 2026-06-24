define i64 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, ptr nocapture %B.data, i64 %B.len, i64 %B.cap, i64 %m, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %A.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %A.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %A.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4012)
    #dbg_value(ptr %B.data, !4006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %B.len, !4006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %B.cap, !4006, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4012)
    #dbg_value(i64 %m, !4007, !DIExpression(), !4012)
    #dbg_value(i64 %n, !4008, !DIExpression(), !4012)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4013)
    #dbg_value(ptr %A.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4019)
    #dbg_value(i64 %A.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4019)
    #dbg_value(i64 %A.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4019)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4021)
    #dbg_value(ptr %A.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4026)
    #dbg_value(i64 %A.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4026)
    #dbg_value(i64 %A.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4026)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4028)
    #dbg_value(i64 %A.len, !4025, !DIExpression(), !4029)
    #dbg_value(i64 %A.len, !3804, !DIExpression(), !4030)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !4030
  %1 = sub nuw nsw i64 64, %0, !dbg !4030
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !4032
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4033)
    #dbg_value(ptr %B.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4034)
    #dbg_value(i64 %B.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4034)
    #dbg_value(i64 %B.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4034)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4036)
    #dbg_value(ptr %B.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4037)
    #dbg_value(i64 %B.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4037)
    #dbg_value(i64 %B.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4037)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4039)
    #dbg_value(i64 %B.len, !4025, !DIExpression(), !4040)
    #dbg_value(i64 %B.len, !3804, !DIExpression(), !4041)
  %2 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %B.len, i1 false), !dbg !4041
  %3 = sub nuw nsw i64 64, %2, !dbg !4041
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %B.data, i64 %B.len, i64 0, i64 %B.len, i64 %3), !dbg !4043
    #dbg_value(i64 0, !4009, !DIExpression(), !4044)
    #dbg_value(i64 0, !4010, !DIExpression(), !4045)
    #dbg_value(i64 9223372036854775807, !4011, !DIExpression(), !4046)
  %4 = icmp sgt i64 %m, 0
  %5 = icmp sgt i64 %n, 0
  %or.cond2022 = select i1 %4, i1 %5, i1 false, !dbg !4047
  br i1 %or.cond2022, label %for.body.lr.ph, label %for.done, !dbg !4047

for.body.lr.ph:                                   ; preds = %entry, %if.then1
  %.ph1125 = phi i64 [ %18, %if.then1 ], [ 9223372036854775807, %entry ]
  %.ph1024 = phi i64 [ %8, %if.then1 ], [ 0, %entry ]
  %.ph23 = phi i64 [ %20, %if.then1 ], [ 0, %entry ]
    #dbg_value(i64 %.ph1024, !4010, !DIExpression(), !4048)
    #dbg_value(i64 %.ph23, !4009, !DIExpression(), !4049)
  %6 = getelementptr inbounds nuw i64, ptr %A.data, i64 %.ph23
  %exitcond33.not = icmp eq i64 %.ph23, %A.len
  br i1 %exitcond33.not, label %lookup.throw, label %for.body.preheader, !dbg !4050

for.body.preheader:                               ; preds = %for.body.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.ph1024, i64 %B.len), !dbg !4051
  br label %for.body, !dbg !4051

for.body:                                         ; preds = %for.body.preheader, %if.else
  %7 = phi i64 [ %18, %if.else ], [ %.ph1125, %for.body.preheader ]
  %8 = phi i64 [ %23, %if.else ], [ %.ph1024, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4052)
    #dbg_value(i64 %.ph23, !4009, !DIExpression(), !4053)
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4054)
    #dbg_value(i64 %8, !4010, !DIExpression(), !4055)
  %exitcond.not = icmp eq i64 %8, %umax, !dbg !4051
  br i1 %exitcond.not, label %lookup.throw4, label %lookup.next5, !dbg !4051

lookup.next5:                                     ; preds = %for.body
  %9 = load i64, ptr %6, align 8, !dbg !4050
  %10 = getelementptr inbounds i64, ptr %B.data, i64 %8, !dbg !4051
  %11 = load i64, ptr %10, align 8, !dbg !4051
  %12 = sub i64 %9, %11, !dbg !4056
  %13 = sitofp i64 %12 to double, !dbg !4057
    #dbg_value(double %13, !4058, !DIExpression(), !4064)
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !4066
    #dbg_value(i64 %7, !4011, !DIExpression(), !4067)
  %15 = sitofp i64 %7 to double, !dbg !4068
  %16 = fcmp olt double %14, %15, !dbg !4069
  %belowmax = fcmp ole double %14, 0x43DFFFFFFFFFFFFE, !dbg !4047
  %normal = fptosi double %14 to i64, !dbg !4047
  %17 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !4047
  %18 = select i1 %16, i64 %17, i64 %7, !dbg !4047
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4070)
    #dbg_value(i64 %.ph23, !4009, !DIExpression(), !4071)
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4072)
    #dbg_value(i64 %8, !4010, !DIExpression(), !4073)
  %19 = icmp slt i64 %9, %11, !dbg !4074
  br i1 %19, label %if.then1, label %if.else, !dbg !4047

if.then1:                                         ; preds = %lookup.next5
  %20 = add nuw nsw i64 %.ph23, 1, !dbg !4075
    #dbg_value(i64 %20, !4009, !DIExpression(), !4075)
  %21 = icmp slt i64 %20, %m
    #dbg_value(i64 %m, !4007, !DIExpression(), !4076)
    #dbg_value(i64 %8, !4010, !DIExpression(), !4048)
    #dbg_value(i64 %n, !4008, !DIExpression(), !4077)
  %22 = icmp slt i64 %8, %n
  %or.cond20 = select i1 %21, i1 %22, i1 false, !dbg !4047
  br i1 %or.cond20, label %for.body.lr.ph, label %for.done, !dbg !4047

if.else:                                          ; preds = %lookup.next5
  %23 = add i64 %8, 1, !dbg !4078
    #dbg_value(i64 %.ph23, !4009, !DIExpression(), !4049)
    #dbg_value(i64 %m, !4007, !DIExpression(), !4076)
    #dbg_value(i64 %23, !4010, !DIExpression(), !4048)
    #dbg_value(i64 %n, !4008, !DIExpression(), !4077)
  %24 = icmp slt i64 %23, %n
  br i1 %24, label %for.body, label %for.done, !dbg !4047

for.done:                                         ; preds = %if.then1, %if.else, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %18, %if.else ], [ %18, %if.then1 ], !dbg !4046
    #dbg_value(i64 %.lcssa, !4011, !DIExpression(), !4079)
  ret i64 %.lcssa, !dbg !4080

lookup.throw:                                     ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !4050
  unreachable, !dbg !4050

lookup.throw4:                                    ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4051
  unreachable, !dbg !4051
}
