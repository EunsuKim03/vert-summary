define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr.len, !4003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr.cap, !4003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4009)
    #dbg_value(i64 %k, !4005, !DIExpression(), !4009)
    #dbg_value(i64 0, !4006, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4011)
    #dbg_value(ptr %arr.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %arr.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %arr.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %arr.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %arr.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4028)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4030
    #dbg_value(i64 0, !4007, !DIExpression(), !4031)
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = icmp sgt i64 %n, 0, !dbg !4033
  br i1 %2, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !4034

for.body.lr.ph.lr.ph:                             ; preds = %entry, %if.then
  %.ph929 = phi i64 [ %12, %if.then ], [ 0, %entry ]
  %.ph828 = phi i64 [ %11, %if.then ], [ 0, %entry ]
  %.ph27 = phi i64 [ %10, %if.then ], [ 0, %entry ]
    #dbg_value(i64 %.ph929, !4008, !DIExpression(), !4035)
  br label %for.body.lr.ph, !dbg !4034

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then1
  %.ph1224 = phi i64 [ %.ph929, %for.body.lr.ph.lr.ph ], [ %4, %if.then1 ]
  %.ph1123 = phi i64 [ %.ph828, %for.body.lr.ph.lr.ph ], [ %15, %if.then1 ]
    #dbg_value(i64 %.ph1224, !4008, !DIExpression(), !4035)
  %.not2 = icmp ult i64 %.ph1123, %arr.len
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph1123
  %umax = call i64 @llvm.umax.i64(i64 %.ph1224, i64 %arr.len), !dbg !4034
  br label %for.body, !dbg !4034

for.body:                                         ; preds = %for.body.lr.ph, %if.else2
  %4 = phi i64 [ %.ph1224, %for.body.lr.ph ], [ %17, %if.else2 ]
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4036)
    #dbg_value(i64 %4, !4008, !DIExpression(), !4037)
  %exitcond.not = icmp eq i64 %4, %umax, !dbg !4038
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4038

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4039)
    #dbg_value(i64 %.ph1123, !4007, !DIExpression(), !4040)
  br i1 %.not2, label %lookup.next6, label %lookup.throw5, !dbg !4041

lookup.next6:                                     ; preds = %lookup.next
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4038
  %6 = load i64, ptr %5, align 8, !dbg !4038
  %7 = load i64, ptr %3, align 8, !dbg !4041
  %8 = sub i64 %6, %7, !dbg !4042
    #dbg_value(i64 %k, !4005, !DIExpression(), !4043)
  %9 = icmp eq i64 %8, %k, !dbg !4044
  br i1 %9, label %if.then, label %lookup.next14, !dbg !4034

if.then:                                          ; preds = %lookup.next6
  %10 = add i64 %.ph27, 1, !dbg !4045
    #dbg_value(i64 %10, !4006, !DIExpression(), !4045)
  %11 = add nuw i64 %.ph1123, 1, !dbg !4046
    #dbg_value(i64 %11, !4007, !DIExpression(), !4046)
  %12 = add nuw nsw i64 %4, 1, !dbg !4047
    #dbg_value(i64 %12, !4008, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4048)
  %13 = icmp slt i64 %12, %n, !dbg !4033
  br i1 %13, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !4034

lookup.next14:                                    ; preds = %lookup.next6
    #dbg_value(i64 %4, !4008, !DIExpression(), !4049)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4050)
    #dbg_value(i64 %.ph1123, !4007, !DIExpression(), !4051)
    #dbg_value(i64 %k, !4005, !DIExpression(), !4052)
  %14 = icmp sgt i64 %8, %k, !dbg !4053
  br i1 %14, label %if.then1, label %if.else2, !dbg !4034

if.then1:                                         ; preds = %lookup.next14
  %15 = add nuw i64 %.ph1123, 1, !dbg !4054
    #dbg_value(i64 %15, !4007, !DIExpression(), !4054)
    #dbg_value(i64 %4, !4008, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4048)
  %16 = icmp slt i64 %4, %n, !dbg !4033
  br i1 %16, label %for.body.lr.ph, label %for.done, !dbg !4034

if.else2:                                         ; preds = %lookup.next14
  %17 = add i64 %4, 1, !dbg !4055
    #dbg_value(i64 %17, !4008, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4004, !DIExpression(), !4048)
  %18 = icmp slt i64 %17, %n, !dbg !4033
  br i1 %18, label %for.body, label %for.done, !dbg !4034

for.done:                                         ; preds = %if.then, %if.then1, %if.else2, %entry
  %.ph.lcssa21 = phi i64 [ 0, %entry ], [ %.ph27, %if.else2 ], [ %.ph27, %if.then1 ], [ %10, %if.then ]
    #dbg_value(i64 %.ph.lcssa21, !4006, !DIExpression(), !4056)
  ret i64 %.ph.lcssa21, !dbg !4057

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4038
  unreachable, !dbg !4038

lookup.throw5:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4041
  unreachable, !dbg !4041
}
