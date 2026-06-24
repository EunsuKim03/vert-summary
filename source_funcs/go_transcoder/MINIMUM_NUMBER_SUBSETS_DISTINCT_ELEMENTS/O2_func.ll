define range(i64 0, -9223372036854775808) i64 @f_gold(ptr nocapture %ar.data, i64 %ar.len, i64 %ar.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %ar.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %ar.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %ar.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
    #dbg_value(i64 0, !4007, !DIExpression(), !4011)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4012)
    #dbg_value(ptr %ar.data, !4013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4018)
    #dbg_value(i64 %ar.len, !4013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4018)
    #dbg_value(i64 %ar.cap, !4013, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4018)
    #dbg_value({ ptr, i64, i64 } poison, !4013, !DIExpression(), !4020)
    #dbg_value(ptr %ar.data, !4021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4025)
    #dbg_value(i64 %ar.len, !4021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4025)
    #dbg_value(i64 %ar.cap, !4021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4025)
    #dbg_value({ ptr, i64, i64 } poison, !4021, !DIExpression(), !4027)
    #dbg_value(i64 %ar.len, !4024, !DIExpression(), !4028)
    #dbg_value(i64 %ar.len, !3804, !DIExpression(), !4029)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %ar.len, i1 false), !dbg !4029
  %1 = sub nuw nsw i64 64, %0, !dbg !4029
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %ar.data, i64 %ar.len, i64 0, i64 %ar.len, i64 %1), !dbg !4031
    #dbg_value(i64 0, !4008, !DIExpression(), !4032)
  %2 = icmp sgt i64 %n, 0, !dbg !4033
  br i1 %2, label %for.loop1.preheader.lr.ph, label %for.done3, !dbg !4034

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %3 = add nsw i64 %n, -1
  br label %for.loop1.preheader, !dbg !4034

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %19, %for.done ]
  %5 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %x.y.i, %for.done ]
    #dbg_value(i64 %4, !4008, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4036)
  %6 = icmp slt i64 %4, %3, !dbg !4037
  br i1 %6, label %for.body2.preheader, label %for.done, !dbg !4034

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %7 = sub i64 %n, %4, !dbg !4038
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %ar.len), !dbg !4038
  %8 = add i64 %umax, 1, !dbg !4038
  %9 = sub i64 %8, %4, !dbg !4038
  br label %for.body2, !dbg !4038

for.body2:                                        ; preds = %for.body2.preheader, %if.then
  %10 = phi i64 [ %18, %if.then ], [ 1, %for.body2.preheader ]
  %11 = phi i64 [ %12, %if.then ], [ %4, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4039)
    #dbg_value(i64 %11, !4008, !DIExpression(), !4040)
  %exitcond.not = icmp eq i64 %10, %9, !dbg !4038
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4038

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4041)
    #dbg_value(i64 %11, !4008, !DIExpression(), !4042)
  %12 = add nuw nsw i64 %11, 1, !dbg !4043
  %.not3 = icmp ult i64 %12, %ar.len, !dbg !4044
  br i1 %.not3, label %lookup.next7, label %lookup.throw6, !dbg !4044

lookup.next7:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %ar.data, i64 %11, !dbg !4038
  %14 = load i64, ptr %13, align 8, !dbg !4038
  %15 = getelementptr inbounds i64, ptr %ar.data, i64 %12, !dbg !4044
  %16 = load i64, ptr %15, align 8, !dbg !4044
  %17 = icmp eq i64 %14, %16, !dbg !4045
  br i1 %17, label %if.then, label %for.done, !dbg !4034

if.then:                                          ; preds = %lookup.next7
  %18 = add i64 %10, 1, !dbg !4046
    #dbg_value(i64 %18, !4009, !DIExpression(), !4046)
    #dbg_value(i64 %12, !4008, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4036)
  %exitcond20.not = icmp eq i64 %18, %7, !dbg !4037
  br i1 %exitcond20.not, label %for.done, label %for.body2, !dbg !4034

for.done:                                         ; preds = %if.then, %lookup.next7, %for.loop1.preheader
  %.lcssa10 = phi i64 [ %4, %for.loop1.preheader ], [ %11, %lookup.next7 ], [ %3, %if.then ], !dbg !4032
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %10, %lookup.next7 ], [ %7, %if.then ], !dbg !4047
    #dbg_value(i64 %5, !4007, !DIExpression(), !4048)
    #dbg_value(i64 %.lcssa, !4009, !DIExpression(), !4049)
    #dbg_value(i64 %5, !4050, !DIExpression(), !4054)
    #dbg_value(i64 %.lcssa, !4053, !DIExpression(), !4056)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %5, i64 %.lcssa), !dbg !4057
    #dbg_value(i64 %x.y.i, !4007, !DIExpression(), !4058)
  %19 = add i64 %.lcssa10, 1, !dbg !4059
    #dbg_value(i64 %19, !4008, !DIExpression(), !4060)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4061)
  %20 = icmp slt i64 %19, %n, !dbg !4033
  br i1 %20, label %for.loop1.preheader, label %for.done3, !dbg !4034

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa13 = phi i64 [ 0, %entry ], [ %x.y.i, %for.done ], !dbg !4011
    #dbg_value(i64 %.lcssa13, !4007, !DIExpression(), !4062)
  ret i64 %.lcssa13, !dbg !4063

lookup.throw:                                     ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !4038
  unreachable, !dbg !4038

lookup.throw6:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4044
  unreachable, !dbg !4044
}
