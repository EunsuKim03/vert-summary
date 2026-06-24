define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4011)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4011)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4011)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4011)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4012)
    #dbg_value(ptr %arr.data, !4013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4018)
    #dbg_value(i64 %arr.len, !4013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4018)
    #dbg_value(i64 %arr.cap, !4013, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4018)
    #dbg_value({ ptr, i64, i64 } poison, !4013, !DIExpression(), !4020)
    #dbg_value(ptr %arr.data, !4021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4025)
    #dbg_value(i64 %arr.len, !4021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4025)
    #dbg_value(i64 %arr.cap, !4021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4025)
    #dbg_value({ ptr, i64, i64 } poison, !4021, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !4024, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4029)
  %n.fr = freeze i64 %n, !dbg !4031
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4029
  %1 = sub nuw nsw i64 64, %0, !dbg !4029
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4032
    #dbg_value(i64 1, !4007, !DIExpression(), !4033)
  %2 = icmp eq i64 %arr.len, 0, !dbg !4034
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !4034

lookup.next:                                      ; preds = %entry
  %3 = load i64, ptr %arr.data, align 8, !dbg !4034
    #dbg_value(i64 %3, !4008, !DIExpression(), !4035)
    #dbg_value(i64 1, !4009, !DIExpression(), !4036)
    #dbg_value(i64 1, !4010, !DIExpression(), !4037)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4038)
  %4 = icmp sgt i64 %n.fr, 1, !dbg !4039
  br i1 %4, label %for.body.preheader, label %if.done4, !dbg !4040

for.body.preheader:                               ; preds = %lookup.next
  %5 = add i64 %arr.len, -1, !dbg !4031
  %6 = add nsw i64 %n.fr, -2, !dbg !4031
  %umin = call i64 @llvm.umin.i64(i64 %arr.len, i64 %5), !dbg !4031
  %umin33 = call i64 @llvm.umin.i64(i64 %6, i64 %umin), !dbg !4031
  %.not34 = icmp eq i64 %5, %umin33, !dbg !4031
  br i1 %.not34, label %lookup.throw7, label %lookup.next12, !dbg !4031

lookup.next12:                                    ; preds = %for.body.preheader, %lookup.next12
  %7 = phi i64 [ %13, %lookup.next12 ], [ %3, %for.body.preheader ]
  %8 = phi i64 [ %20, %lookup.next12 ], [ 1, %for.body.preheader ]
  %9 = phi i64 [ %19, %lookup.next12 ], [ 1, %for.body.preheader ]
  %10 = phi i64 [ %18, %lookup.next12 ], [ %3, %for.body.preheader ]
  %11 = phi i64 [ %17, %lookup.next12 ], [ 1, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4041)
    #dbg_value(i64 %8, !4010, !DIExpression(), !4042)
  %12 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !4031
  %13 = load i64, ptr %12, align 8, !dbg !4031
  %14 = icmp eq i64 %13, %7, !dbg !4043
  %15 = add i64 %9, 1, !dbg !4040
  %16 = icmp sgt i64 %9, %11, !dbg !4040
  %spec.select = tail call i64 @llvm.smax.i64(i64 %9, i64 %11), !dbg !4040
  %spec.select19 = select i1 %16, i64 %7, i64 %10, !dbg !4040
  %17 = select i1 %14, i64 %11, i64 %spec.select, !dbg !4040
  %18 = select i1 %14, i64 %10, i64 %spec.select19, !dbg !4040
  %19 = select i1 %14, i64 %15, i64 1, !dbg !4040
  %20 = add nuw nsw i64 %8, 1, !dbg !4044
    #dbg_value(i64 %20, !4010, !DIExpression(), !4045)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4038)
  %exitcond.not = icmp eq i64 %20, %n.fr, !dbg !4039
  br i1 %exitcond.not, label %for.done, label %lookup.next12, !dbg !4040

for.done:                                         ; preds = %lookup.next12
    #dbg_value(i64 %19, !4009, !DIExpression(), !4046)
    #dbg_value(i64 %17, !4007, !DIExpression(), !4047)
  %21 = icmp sgt i64 %19, %17, !dbg !4048
  br i1 %21, label %if.then3, label %if.done4, !dbg !4040

if.then3:                                         ; preds = %for.done
    #dbg_value(i64 poison, !4009, !DIExpression(), !4049)
    #dbg_value(i64 poison, !4007, !DIExpression(), !4050)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4051)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4052)
  %22 = add nsw i64 %n.fr, -1, !dbg !4053
  %.not = icmp ult i64 %22, %arr.len, !dbg !4054
  br i1 %.not, label %lookup.next20, label %lookup.throw19, !dbg !4054

lookup.next20:                                    ; preds = %if.then3
  %23 = getelementptr inbounds i64, ptr %arr.data, i64 %22, !dbg !4054
  %24 = load i64, ptr %23, align 8, !dbg !4054
    #dbg_value(i64 %24, !4008, !DIExpression(), !4055)
  br label %if.done4, !dbg !4040

if.done4:                                         ; preds = %lookup.next, %lookup.next20, %for.done
  %25 = phi i64 [ %18, %for.done ], [ %24, %lookup.next20 ], [ %3, %lookup.next ], !dbg !4035
    #dbg_value(i64 %25, !4008, !DIExpression(), !4056)
  ret i64 %25, !dbg !4057

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !4034
  unreachable, !dbg !4034

lookup.throw7:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4031
  unreachable, !dbg !4031

lookup.throw19:                                   ; preds = %if.then3
  tail call fastcc void @runtime.lookupPanic(), !dbg !4054
  unreachable, !dbg !4054
}
