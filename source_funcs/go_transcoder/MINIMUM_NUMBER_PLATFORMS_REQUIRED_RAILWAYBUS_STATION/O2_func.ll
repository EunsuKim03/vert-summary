define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, ptr nocapture %dep.data, i64 %dep.len, i64 %dep.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4012)
    #dbg_value(ptr %dep.data, !4006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %dep.len, !4006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %dep.cap, !4006, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4012)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4012)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4013)
    #dbg_value(ptr %arr.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4019)
    #dbg_value(i64 %arr.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4019)
    #dbg_value(i64 %arr.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4019)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4021)
    #dbg_value(ptr %arr.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4026)
    #dbg_value(i64 %arr.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4026)
    #dbg_value(i64 %arr.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4026)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !4025, !DIExpression(), !4029)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4030)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4030
  %1 = sub nuw nsw i64 64, %0, !dbg !4030
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4032
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4033)
    #dbg_value(ptr %dep.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4034)
    #dbg_value(i64 %dep.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4034)
    #dbg_value(i64 %dep.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4034)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4036)
    #dbg_value(ptr %dep.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4037)
    #dbg_value(i64 %dep.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4037)
    #dbg_value(i64 %dep.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4037)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4039)
    #dbg_value(i64 %dep.len, !4025, !DIExpression(), !4040)
    #dbg_value(i64 %dep.len, !3804, !DIExpression(), !4041)
  %2 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %dep.len, i1 false), !dbg !4041
  %3 = sub nuw nsw i64 64, %2, !dbg !4041
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %dep.data, i64 %dep.len, i64 0, i64 %dep.len, i64 %3), !dbg !4043
    #dbg_value(i64 1, !4008, !DIExpression(), !4044)
    #dbg_value(i64 1, !4009, !DIExpression(), !4045)
    #dbg_value(i64 1, !4010, !DIExpression(), !4046)
    #dbg_value(i64 0, !4011, !DIExpression(), !4047)
  %4 = icmp sgt i64 %n, 1
  br i1 %4, label %for.body.lr.ph.preheader, label %for.done, !dbg !4048

for.body.lr.ph.preheader:                         ; preds = %entry
  %umax39 = call i64 @llvm.umax.i64(i64 %arr.len, i64 1), !dbg !4049
  br label %for.body.lr.ph, !dbg !4049

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.preheader, %if.then
  %.ph1228 = phi i64 [ %6, %if.then ], [ 0, %for.body.lr.ph.preheader ]
  %.ph1127 = phi i64 [ %12, %if.then ], [ 1, %for.body.lr.ph.preheader ]
  %.ph1026 = phi i64 [ %spec.select, %if.then ], [ 1, %for.body.lr.ph.preheader ]
  %.ph25 = phi i64 [ %11, %if.then ], [ 1, %for.body.lr.ph.preheader ]
    #dbg_value(i64 %.ph1228, !4011, !DIExpression(), !4050)
    #dbg_value(i64 %.ph1127, !4010, !DIExpression(), !4051)
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %.ph1127
  %exitcond40.not = icmp eq i64 %.ph1127, %umax39
  br i1 %exitcond40.not, label %lookup.throw, label %for.body.preheader, !dbg !4049

for.body.preheader:                               ; preds = %for.body.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.ph1228, i64 %dep.len), !dbg !4052
  br label %for.body, !dbg !4052

for.body:                                         ; preds = %for.body.preheader, %if.else
  %6 = phi i64 [ %16, %if.else ], [ %.ph1228, %for.body.preheader ]
  %7 = phi i64 [ %15, %if.else ], [ %.ph25, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4053)
    #dbg_value(i64 %.ph1127, !4010, !DIExpression(), !4054)
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4055)
    #dbg_value(i64 %6, !4011, !DIExpression(), !4056)
  %exitcond.not = icmp eq i64 %6, %umax, !dbg !4052
  br i1 %exitcond.not, label %lookup.throw4, label %lookup.next5, !dbg !4052

lookup.next5:                                     ; preds = %for.body
  %8 = load i64, ptr %5, align 8, !dbg !4049
  %9 = getelementptr inbounds i64, ptr %dep.data, i64 %6, !dbg !4052
  %10 = load i64, ptr %9, align 8, !dbg !4052
  %.not5 = icmp sgt i64 %8, %10, !dbg !4057
  br i1 %.not5, label %if.else, label %if.then, !dbg !4048

if.then:                                          ; preds = %lookup.next5
  %11 = add i64 %7, 1, !dbg !4058
    #dbg_value(i64 %11, !4008, !DIExpression(), !4058)
  %12 = add nuw nsw i64 %.ph1127, 1, !dbg !4059
    #dbg_value(i64 %12, !4010, !DIExpression(), !4059)
    #dbg_value(i64 %.ph1026, !4009, !DIExpression(), !4060)
  %spec.select = tail call i64 @llvm.smax.i64(i64 %11, i64 %.ph1026), !dbg !4048
  %13 = icmp slt i64 %12, %n
    #dbg_value(i64 %6, !4011, !DIExpression(), !4050)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4061)
  %14 = icmp slt i64 %6, %n
  %or.cond22 = and i1 %13, %14, !dbg !4048
  br i1 %or.cond22, label %for.body.lr.ph, label %for.done, !dbg !4048

if.else:                                          ; preds = %lookup.next5
  %15 = add i64 %7, -1, !dbg !4062
    #dbg_value(i64 %15, !4008, !DIExpression(), !4062)
  %16 = add i64 %6, 1, !dbg !4063
    #dbg_value(i64 %.ph1127, !4010, !DIExpression(), !4051)
    #dbg_value(i64 %16, !4011, !DIExpression(), !4050)
    #dbg_value(i64 %n, !4007, !DIExpression(), !4061)
  %17 = icmp slt i64 %16, %n
  br i1 %17, label %for.body, label %for.done, !dbg !4048

for.done:                                         ; preds = %if.then, %if.else, %entry
  %.ph10.lcssa21 = phi i64 [ 1, %entry ], [ %.ph1026, %if.else ], [ %spec.select, %if.then ]
    #dbg_value(i64 %.ph10.lcssa21, !4009, !DIExpression(), !4064)
  ret i64 %.ph10.lcssa21, !dbg !4065

lookup.throw:                                     ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !4049
  unreachable, !dbg !4049

lookup.throw4:                                    ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4052
  unreachable, !dbg !4052
}
